.. _ROCm_Libraries:

=====================
ROCm Libraries
=====================


******************
rocBLAS
******************


 * `rocBLAS Github link <https://github.com/ROCmSoftwarePlatform/rocBLAS>`_

A BLAS implementation on top of AMD's Radeon Open Compute `ROCm <http://rocm-documentation.readthedocs.io/en/latest/Installation_Guide/Installation-Guide.html>`_ runtime and toolchains. rocBLAS is implemented in the `HIP <http://rocm-documentation.readthedocs.io/en/latest/Programming_Guides/Programming-Guides.html#hip-programing-guide>`_ programming language and optimized for AMD's latest discrete GPUs.

Installing pre-built packages
##############################
Download pre-built packages either from `ROCm's package servers <http://rocm-documentation.readthedocs.io/en/latest/Installation_Guide/Installation-Guide.html#installation-guide-ubuntu>`_ or by clicking the github releases tab and manually downloading, which could be newer. Release notes are available for each release on the releases tab.
::
  sudo apt update && sudo apt install rocblas

Quickstart rocBLAS build
###########################

**Bash helper build script (Ubuntu only)**

The root of this repository has a helper bash script install.sh to build and install rocBLAS on Ubuntu with a single command. It does not take a lot of options and hard-codes configuration that can be specified through invoking cmake directly, but it's a great way to get started quickly and can serve as an example of how to build/install. A few commands in the script need sudo access, so it may prompt you for a password.
::
  ./install -h -- shows help
  ./install -id -- build library, build dependencies and install (-d flag only needs to be passed once on a system)

Manual build (all supported platforms)
#########################################
If you use a distro other than Ubuntu, or would like more control over the build process, the :ref:`rocblaswiki` has helpful information on how to configure cmake and manually build.

**Functions supported**

A list of exported functions from rocblas can be found on the wiki

rocBLAS interface examples
#############################
In general, the rocBLAS interface is compatible with CPU oriented `Netlib BLAS <http://www.netlib.org/blas/>`_ and the cuBLAS-v2 API, with the explicit exception that traditional BLAS interfaces do not accept handles. The cuBLAS' cublasHandle_t is replaced with rocblas_handle everywhere. Thus, porting a CUDA application which originally calls the cuBLAS API to a HIP application calling rocBLAS API should be relatively straightforward. For example, the rocBLAS SGEMV interface is

GEMV API
###############

::

  rocblas_status
  rocblas_sgemv(rocblas_handle handle,
                rocblas_operation trans,
                rocblas_int m, rocblas_int n,
                const float* alpha,
                const float* A, rocblas_int lda,
                const float* x, rocblas_int incx,
                const float* beta,
                float* y, rocblas_int incy);

Batched and strided GEMM API
################################
rocBLAS GEMM can process matrices in batches with regular strides. There are several permutations of these API's, the following is an example that takes everything

::

  rocblas_status
  rocblas_sgemm_strided_batched(
      rocblas_handle handle,
      rocblas_operation transa, rocblas_operation transb,
      rocblas_int m, rocblas_int n, rocblas_int k,
      const float* alpha,
      const float* A, rocblas_int ls_a, rocblas_int ld_a, rocblas_int bs_a,
      const float* B, rocblas_int ls_b, rocblas_int ld_b, rocblas_int bs_b,
      const float* beta,
            float* C, rocblas_int ls_c, rocblas_int ld_c, rocblas_int bs_c,
      rocblas_int batch_count )

rocBLAS assumes matrices A and vectors x, y are allocated in GPU memory space filled with data. Users are responsible for copying data from/to the host and device memory. HIP provides memcpy style API's to facilitate data management.

Asynchronous API
###################
Except a few routines (like TRSM) having memory allocation inside preventing asynchronicity, most of the library routines (like BLAS-1 SCAL, BLAS-2 GEMV, BLAS-3 GEMM) are configured to operate in asynchronous fashion with respect to CPU, meaning these library functions return immediately.

For more information regarding rocBLAS library and corresponding API documentation, refer `rocBLAS <https://rocblas.readthedocs.io/en/latest/>`_

API
****

This section provides details of the library API

Types
=====
Definitions
------

rocblas_int
^^^^^^^^^^^^^^^^^^
.. doxygentypedef:: rocblas_int

rocblas_long
^^^^^^^^^^^^^^^^^^
.. doxygentypedef:: rocblas_long

rocblas_float_complex
^^^^^^^^^^^^^^^^^^
.. doxygentypedef:: rocblas_float_complex

rocblas_double_complex
^^^^^^^^^^^^^^^^^^
.. doxygentypedef:: rocblas_double_complex

rocblas_half
^^^^^^^^^^^^^^^^^^
.. doxygentypedef:: rocblas_half

rocblas_half_complex
^^^^^^^^^^^^^^^^^^
.. doxygentypedef:: rocblas_half_complex

rocblas_handle
^^^^^^^^^^^^^^^^^^
.. doxygentypedef:: rocblas_handle

Enums
------
Enumeration constants have numbering that is consistent with CBLAS, ACML and most standard C BLAS libraries.

rocblas_operation
^^^^^^^^^^^^^^^^^^
.. doxygenenum:: rocblas_operation

rocblas_fill
^^^^^^^^^^^^^^^^^^
.. doxygenenum:: rocblas_fill

rocblas_diagonal
^^^^^^^^^^^^^^^^^^
.. doxygenenum:: rocblas_diagonal

rocblas_side
^^^^^^^^^^^^^^^^^^
.. doxygenenum:: rocblas_side

rocblas_status
^^^^^^^^^^^^^^^^^^
.. doxygenenum:: rocblas_status

rocblas_datatype
^^^^^^^^^^^^^^^^^^
.. doxygenenum:: rocblas_datatype

rocblas_pointer_mode
^^^^^^^^^^^^^^^^^^
.. doxygenenum:: rocblas_pointer_mode

rocblas_layer_mode
^^^^^^^^^^^^^^^^^^
.. doxygenenum:: rocblas_layer_mode

rocblas_gemm_algo
^^^^^^^^^^^^^^^^^^
.. doxygenenum:: rocblas_gemm_algo

Functions
=========

Level 1 BLAS
-------------

rocblas_<type>scal()
^^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_dscal

.. doxygenfunction:: rocblas_sscal
rocblas_<type>copy()
^^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_dcopy

.. doxygenfunction:: rocblas_scopy

rocblas_<type>dot()
^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_ddot

.. doxygenfunction:: rocblas_sdot

rocblas_<type>swap()
^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_sswap

.. doxygenfunction:: rocblas_dswap

rocblas_<type>axpy()
^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_daxpy

.. doxygenfunction:: rocblas_saxpy

.. doxygenfunction:: rocblas_haxpy

rocblas_<type>asum()
^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_dasum

.. doxygenfunction:: rocblas_sasum


rocblas_<type>nrm2()
^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_dnrm2

.. doxygenfunction:: rocblas_snrm2


rocblas_i<type>amax()
^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_idamax

.. doxygenfunction:: rocblas_isamax

rocblas_i<type>amin()
^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_idamin

.. doxygenfunction:: rocblas_isamin

Level 2 BLAS
-------------
rocblas_<type>gemv()
^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_dgemv

.. doxygenfunction:: rocblas_sgemv

rocblas_<type>trsv()
^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_dtrsv

.. doxygenfunction:: rocblas_strsv

rocblas_<type>ger()
^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_dger

.. doxygenfunction:: rocblas_sger

rocblas_<type>syr()
^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_dsyr

.. doxygenfunction:: rocblas_ssyr

Level 3 BLAS
-------------
rocblas_<type>trtri_batched()
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_dtrtri_batched

.. doxygenfunction:: rocblas_strtri_batched

rocblas_<type>trsm()
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_dtrsm

.. doxygenfunction:: rocblas_strsm

rocblas_<type>gemm()
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_dgemm

.. doxygenfunction:: rocblas_sgemm

.. doxygenfunction:: rocblas_hgemm

rocblas_<type>gemm_strided_batched()
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_dgemm_strided_batched

.. doxygenfunction:: rocblas_sgemm_strided_batched

.. doxygenfunction:: rocblas_hgemm_strided_batched

rocblas_<type>gemm_kernel_name()
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_dgemm_kernel_name

.. doxygenfunction:: rocblas_sgemm_kernel_name

.. doxygenfunction:: rocblas_hgemm_kernel_name

rocblas_<type>geam()
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_dgeam

.. doxygenfunction:: rocblas_sgeam

BLAS Extensions
---------------
rocblas_gemm_ex()
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_gemm_ex

rocblas_gemm_strided_batched_ex()
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_gemm_strided_batched_ex

Build Information
-----------------

rocblas_get_version_string()
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_get_version_string

Auxiliary
---------

rocblas_pointer_to_mode()
^^^^^^^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_pointer_to_mode

rocblas_create_handle()
^^^^^^^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_create_handle

rocblas_destroy_handle()
^^^^^^^^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_destroy_handle

rocblas_add_stream()
^^^^^^^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_add_stream

rocblas_set_stream()
^^^^^^^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_set_stream

rocblas_get_stream()
^^^^^^^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_get_stream

rocblas_set_pointer_mode()
^^^^^^^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_set_pointer_mode

rocblas_get_pointer_mode()
^^^^^^^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_get_pointer_mode

rocblas_set_vector()
^^^^^^^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_set_vector

rocblas_get_vector()
^^^^^^^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_get_vector

rocblas_set_matrix()
^^^^^^^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_set_matrix

rocblas_get_matrix()
^^^^^^^^^^^^^^^^^^^^^^^
.. doxygenfunction:: rocblas_get_matrix

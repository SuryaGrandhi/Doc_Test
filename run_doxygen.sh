#!/bin/bash

#doxygen Doxyfile

sed -e 's/ROCBLAS_EXPORT //g' ROCm_Libraries/rocBLAS/src/include/rocblas.h > ROCm_Libraries/rocBLAS/src/rocblas.h
sed -e 's/ROCBLAS_EXPORT //g' ROCm_Libraries/rocBLAS/src/include/rocblas-functions.h > ROCm_Libraries/rocBLAS/src/rocblas-functions.h
sed -e 's/ROCBLAS_EXPORT //g' ROCm_Libraries/rocBLAS/src/include/rocblas-types.h > ROCm_Libraries/rocBLAS/src/rocblas-types.h
sed -e 's/ROCBLAS_EXPORT //g' ROCm_Libraries/rocBLAS/src/include/rocblas-auxiliary.h > ROCm_Libraries/rocBLAS/src/rocblas-auxiliary.h

doxygen ROCm_Libraries/rocBLAS/Doxyfile

#doxygen ROCm_Libraries/rocALUTION/Doxyfile

#doxygen ROCm_Libraries/rocFFT/Doxyfile

#doxygen ROCm_Libraries/rocSPARSE/Doxyfile

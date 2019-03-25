#!/bin/bash

#doxygen Doxyfile

sed -e 's/ROCBLAS_EXPORT //g' ROCm_Libraries/rocBLAS/src/include/rocblas.h > rocblas.h
sed -e 's/ROCBLAS_EXPORT //g' ROCm_Libraries/rocBLAS/src/include/rocblas-functions.h > rocblas-functions.h
sed -e 's/ROCBLAS_EXPORT //g' ROCm_Libraries/rocBLAS/src/include/rocblas-types.h > rocblas-types.h
sed -e 's/ROCBLAS_EXPORT //g' ROCm_Libraries/rocBLAS/src/include/rocblas-auxiliary.h > rocblas-auxiliary.h

doxygen ROCm_Libraries/rocBLAS/Doxyfile

rm *.h

#doxygen ROCm_Libraries/rocALUTION/Doxyfile

#doxygen ROCm_Libraries/rocFFT/Doxyfile

#doxygen ROCm_Libraries/rocSPARSE/Doxyfile

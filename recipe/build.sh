#!/bin/bash

cp -r ${PREFIX}/share/USER-DEEPMD src/
mkdir build
cd build
if [ ${float_prec} == "high" ]; then
    export PREC_DEF="-DHIGH_PREC"
fi
if [ ${dp_variant} == "gpu" ]; then
    export DEEPMD_CUDA_LINK="-ldeepmd_op_cuda"
fi
ARGS="-D PKG_ASPHERE=ON -DPKG_BODY=ON -D PKG_CLASS2=ON -D PKG_COLLOID=ON -D PKG_COMPRESS=OFF -D PKG_CORESHELL=ON -D PKG_DIPOLE=ON -D PKG_GRANULAR=ON -D PKG_KSPACE=ON -D PKG_MANYBODY=ON -D PKG_MC=ON -D PKG_MEAM=ON -D PKG_MISC=ON -D PKG_MOLECULE=ON -D PKG_PERI=ON -D PKG_REPLICA=ON -D PKG_RIGID=ON -D PKG_SHOCK=ON -D PKG_SNAP=ON -D PKG_SRD=ON -D PKG_OPT=ON -D PKG_KIM=ON -D PKG_GPU=OFF -D PKG_KOKKOS=OFF -D PKG_MPIIO=OFF -D PKG_MSCG=OFF -D PKG_LATTE=OFF -D PKG_USER-MEAMC=ON -D PKG_USER-PHONON=ON -D PKG_USER-REAXC=ON -D WITH_GZIP=ON -D PKG_USER-MISC=ON -D PKG_USER-COLVARS=ON -D -D PKG_USER-PLUMED=yes -D DOWNLOAD_PLUMED=yes"
cmake $ARGS -D PKG_USER-DEEPMD=ON -D FFT=FFTW3 -D CMAKE_INSTALL_PREFIX=${PREFIX} -D CMAKE_CXX_FLAGS="${PREC_DEF} -I${PREFIX}/include -I${PREFIX}/include/deepmd -L${PREFIX}/lib -Wl,--no-as-needed -lrt -ldeepmd_op ${DEEPMD_CUDA_LINK} -ldeepmd -ltensorflow_cc -ltensorflow_framework -Wl,-rpath=${PREFIX}/lib" ../cmake
make -j${NUM_CPUS}
make install
cd ..

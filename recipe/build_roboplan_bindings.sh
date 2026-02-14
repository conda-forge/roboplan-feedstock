#!/bin/sh

export GENERATE_PYTHON_STUBS=1
if [[ $CONDA_BUILD_CROSS_COMPILATION == 1 ]]; then
    echo "Disabling Python stub generation for cross-compilation"
    export GENERATE_PYTHON_STUBS=0
fi

export CXX=${CXX:-c++}
export CMAKE_ARGS="${CMAKE_ARGS} \
    -DCMAKE_CXX_COMPILER=${CXX} \
    -DPython_EXECUTABLE=${PYTHON} \
    -DPython3_EXECUTABLE=${PYTHON} \
    -DGENERATE_PYTHON_STUBS=${GENERATE_PYTHON_STUBS}"
export CXXFLAGS="${CXXFLAGS} -D_LIBCPP_DISABLE_AVAILABILITY"
export CMAKE_GENERATOR=Ninja

${PYTHON} -m pip install ./bindings -vv --no-build-isolation --no-deps

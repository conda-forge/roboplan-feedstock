#!/bin/sh

export CXX=${CXX:-c++}
export CMAKE_ARGS="${CMAKE_ARGS} \
    -DCMAKE_CXX_COMPILER=${CXX} \
    -DPython_EXECUTABLE=${PYTHON} \
    -DPython3_EXECUTABLE=${PYTHON} \
    -DPython_FIND_STRATEGY=LOCATION"
export CXXFLAGS="${CXXFLAGS} -D_LIBCPP_DISABLE_AVAILABILITY"
export CMAKE_GENERATOR=Ninja

${PYTHON} -m pip install ./bindings -vv --no-build-isolation --no-deps

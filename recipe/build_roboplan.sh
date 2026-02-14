#! /bin/sh

cmake -S "${SRC_DIR}/roboplan" \
    -B build/roboplan \
    -G Ninja \
    ${CMAKE_ARGS} \
    -DCMAKE_CXX_FLAGS="${CMAKE_CXX_FLAGS} -D_LIBCPP_DISABLE_AVAILABILITY"

cmake --build build/roboplan
cmake --install build/roboplan

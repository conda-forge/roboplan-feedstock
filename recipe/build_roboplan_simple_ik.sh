#! /bin/sh

cmake -S "${SRC_DIR}/roboplan_simple_ik" \
    -B build/roboplan_simple_ik \
    -G Ninja \
    ${CMAKE_ARGS} \
    -DCMAKE_CXX_FLAGS="${CMAKE_CXX_FLAGS} -D_LIBCPP_DISABLE_AVAILABILITY"

cmake --build build/roboplan_simple_ik
cmake --install build/roboplan_simple_ik

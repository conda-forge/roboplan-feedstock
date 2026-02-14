if not defined CXX set CXX=c++

if defined CMAKE_ARGS (
    set CMAKE_ARGS=%CMAKE_ARGS% -DCMAKE_CXX_COMPILER=%CXX%
) else (
    set CMAKE_ARGS=-DCMAKE_CXX_COMPILER=%CXX%
)

if defined CXXFLAGS (
    set CXXFLAGS=%CXXFLAGS% -D_LIBCPP_DISABLE_AVAILABILITY
) else (
    set CXXFLAGS=-D_LIBCPP_DISABLE_AVAILABILITY
)

set CMAKE_GENERATOR=Ninja

%PYTHON% -m pip install .\bindings -vv --no-build-isolation --no-deps

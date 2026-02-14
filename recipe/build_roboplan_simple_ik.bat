@echo off

cmake -S "%SRC_DIR%\roboplan_simple_ik" ^
      -B build\roboplan_simple_ik ^
      -G Ninja ^
      %CMAKE_ARGS%

if errorlevel 1 exit /b 1

cmake --build build\roboplan_simple_ik
if errorlevel 1 exit /b 1

cmake --install build\roboplan_simple_ik
if errorlevel 1 exit /b 1

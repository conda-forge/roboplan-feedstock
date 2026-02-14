@echo off

cmake -S "%SRC_DIR%\roboplan" ^
      -B build\roboplan ^
      -G Ninja ^
      %CMAKE_ARGS%

if errorlevel 1 exit /b 1

cmake --build build\roboplan
if errorlevel 1 exit /b 1

cmake --install build\roboplan
if errorlevel 1 exit /b 1

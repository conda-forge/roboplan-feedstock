rem Stub generation cannot import the freshly built extension on Windows
rem (the dependent DLLs are not on the loader search path in the build tree),
rem so the committed .pyi stubs from the source tree are installed instead.
cmake -S "%SRC_DIR%\%ROBOPLAN_PACKAGE%" ^
  -B build\%ROBOPLAN_PACKAGE%_python ^
  -G Ninja ^
  %CMAKE_ARGS% ^
  -DPython_EXECUTABLE=%PYTHON% ^
  -DPython3_EXECUTABLE=%PYTHON% ^
  -DBUILD_PYTHON_BINDINGS=ON ^
  -DGENERATE_PYTHON_STUBS=OFF
if errorlevel 1 exit 1
cmake --build build\%ROBOPLAN_PACKAGE%_python
if errorlevel 1 exit 1
cmake --install build\%ROBOPLAN_PACKAGE%_python
if errorlevel 1 exit 1

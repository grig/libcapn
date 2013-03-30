@echo off

if not exist "C:\Program Files\Microsoft Visual Studio 10.0\VC\vcvarsall.bat" goto vc9
echo call "C:\Program Files\Microsoft Visual Studio 10.0\VC\vcvarsall.bat"
call "C:\Program Files\Microsoft Visual Studio 10.0\VC\vcvarsall.bat"
goto :eof

:vc9
if not exist "C:\Program Files\Microsoft Visual Studio 9.0\VC\vcvarsall.bat" goto missing
echo call "C:\Program Files\Microsoft Visual Studio 9.0\VC\vcvarsall.bat"
call "C:\Program Files\Microsoft Visual Studio 9.0\VC\vcvarsall.bat"
goto :eof

:missing
echo "Microsoft Visual Studio 9 and Microsoft Visual Studio 10 not found"
goto :eof
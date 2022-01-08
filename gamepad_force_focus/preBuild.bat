@echo off
set dllPath=%~1
set solutionDir=%~2
set projectDir=%~3
set arch=%~4
set config=%~5

echo Running pre-build for %config%

where /q GmlCppExtFuncs
if %ERRORLEVEL% EQU 0 (
	echo Running GmlCppExtFuncs...
	GmlCppExtFuncs ^
	--prefix gamepad_force_focus^
	--cpp "%projectDir%autogen.cpp"^
	--gml "%solutionDir%gamepad_force_focus_23/extensions/gamepad_force_focus/autogen.gml"^
	%projectDir%gamepad_force_focus.cpp
)
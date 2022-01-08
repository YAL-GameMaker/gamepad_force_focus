@echo off

if not exist "gamepad_force_focus-for-GMS1" mkdir "gamepad_force_focus-for-GMS1"
cmd /C copyre ..\gamepad_force_focus.gmx\extensions\gamepad_force_focus.extension.gmx gamepad_force_focus-for-GMS1\gamepad_force_focus.extension.gmx
cmd /C copyre ..\gamepad_force_focus.gmx\extensions\gamepad_force_focus gamepad_force_focus-for-GMS1\gamepad_force_focus
cmd /C copyre ..\gamepad_force_focus.gmx\datafiles\gamepad_force_focus.html gamepad_force_focus-for-GMS1\gamepad_force_focus\Assets\datafiles\gamepad_force_focus.html
cd gamepad_force_focus-for-GMS1
cmd /C 7z a gamepad_force_focus-for-GMS1.7z *
move /Y gamepad_force_focus-for-GMS1.7z ../gamepad_force_focus-for-GMS1.gmez
cd ..

if not exist "gamepad_force_focus-for-GMS2\extensions" mkdir "gamepad_force_focus-for-GMS2\extensions"
if not exist "gamepad_force_focus-for-GMS2\datafiles" mkdir "gamepad_force_focus-for-GMS2\datafiles"
if not exist "gamepad_force_focus-for-GMS2\datafiles_yy" mkdir "gamepad_force_focus-for-GMS2\datafiles_yy"
cmd /C copyre ..\gamepad_force_focus_yy\extensions\gamepad_force_focus gamepad_force_focus-for-GMS2\extensions\gamepad_force_focus
cmd /C copyre ..\gamepad_force_focus_yy\datafiles\gamepad_force_focus.html gamepad_force_focus-for-GMS2\datafiles\gamepad_force_focus.html
cmd /C copyre ..\gamepad_force_focus_yy\datafiles_yy\gamepad_force_focus.html.yy gamepad_force_focus-for-GMS2\datafiles_yy\gamepad_force_focus.html.yy
cd gamepad_force_focus-for-GMS2
cmd /C 7z a gamepad_force_focus-for-GMS2.zip *
move /Y gamepad_force_focus-for-GMS2.zip ../gamepad_force_focus-for-GMS2.yymp
cd ..

if not exist "gamepad_force_focus-for-GMS2.3+\extensions" mkdir "gamepad_force_focus-for-GMS2.3+\extensions"
if not exist "gamepad_force_focus-for-GMS2.3+\datafiles" mkdir "gamepad_force_focus-for-GMS2.3+\datafiles"
cmd /C copyre ..\gamepad_force_focus_23\extensions\gamepad_force_focus gamepad_force_focus-for-GMS2.3+\extensions\gamepad_force_focus
cmd /C copyre ..\gamepad_force_focus_23\datafiles\gamepad_force_focus.html gamepad_force_focus-for-GMS2.3+\datafiles\gamepad_force_focus.html
cd gamepad_force_focus-for-GMS2.3+
cmd /C 7z a gamepad_force_focus-for-GMS2.3+.zip *
move /Y gamepad_force_focus-for-GMS2.3+.zip ../gamepad_force_focus-for-GMS2.3+.yymps
cd ..

pause
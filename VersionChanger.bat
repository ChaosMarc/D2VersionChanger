@echo off

set changerversion=4.3.1

title Diablo 2 Version Changer %changerversion% by ChaosMarc
setlocal EnableDelayedExpansion

NET FILE 1>NUL 2>NUL
if '%errorlevel%' == '0' ( goto START ) else ( goto getPrivileges ) 

:getPrivileges
if '%1'=='ELEV' ( goto START )

set "batchPath=%~f0"
set "batchArgs=ELEV"

::Add quotes to the batch path, if needed
set "script=%0"
set script=%script:"=%
if '%0'=='!script!' ( GOTO PathQuotesDone )
    set "batchPath=""%batchPath%"""
:PathQuotesDone

::Add quotes to the arguments, if needed.
:ArgLoop
if '%1'=='' ( GOTO EndArgLoop ) else ( GOTO AddArg )
    :AddArg
    set "arg=%1"
    set arg=%arg:"=%
    if '%1'=='!arg!' ( GOTO NoQuotes )
        set "batchArgs=%batchArgs% "%1""
        GOTO QuotesDone
        :NoQuotes
        set "batchArgs=%batchArgs% %1"
    :QuotesDone
    shift
    GOTO ArgLoop
:EndArgLoop

::Create and run the vb script to elevate the batch file
ECHO Set UAC = CreateObject^("Shell.Application"^) > "%temp%\OEgetPrivileges.vbs"
ECHO UAC.ShellExecute "cmd", "/c ""!batchPath! !batchArgs!""", "", "runas", 1 >> "%temp%\OEgetPrivileges.vbs"
"%temp%\OEgetPrivileges.vbs" 
exit /B

:START
::Remove the elevation tag and set the correct working directory
if '%1'=='ELEV' ( shift /1 )
cd /d %~dp0

:RemoveOldVersionFolder
if exist old_version rm old_version

:parse
if "%~1"=="" goto :MainMenu
set "StartGame=true"
echo "%~1"| %WINDIR%\System32\FIND /I "=" && SET "%~1"
shift /1
goto parse

:MainMenu
set "invalidPlugyVersion="
if defined mode (
    if not defined version (
		set "invalidPlugyVersion=true"
	)
) else (
	if defined version (
		set "invalidPlugyVersion=true"
	)
)
if defined invalidPlugyVersion (
	echo.
	echo You need to define mode AND version
	echo.
	goto :Pause
)

if defined plugy (
	if not exist "VersionChanger\PlugY\%plugy%" (
		echo.
		echo Unknown PlugY version: %plugy%
		echo.
		goto :Pause
	)

	if "%mode%"=="Classic" echo. && echo PlugY is only compatible with LoD && set "plugy=" && echo. && set "PlugySetupMode=" && goto :Pause
	
	if "%plugy%"=="5.06" (
		if not defined PlugySetupMode set "PlugySetupMode=D2gfx.dll"
		if "%PlugySetupMode%"=="PlugY.exe" echo. && echo PlugY 5.06 has to use the setup mode [D2gfx.dll] && echo. && set "PlugySetupMode=D2gfx.dll" && goto :Pause
	)

	if not "%PlugySetupMode%"=="PlugY.exe" if not "%PlugySetupMode%"=="D2gfx.dll" echo. && echo You have to choose a PlugY setup mode [PlugY.exe / D2gfx.dll] && echo. && goto :Pause

	if defined version (
		set "validPlugyVersion="
		if "%plugy%"=="5.06" (
			for %%a in (1.09 1.09b 1.09d 1.10) do (
				if "%%a"=="%version%" set "validPlugyVersion=true"
			)
			if not defined validPlugyVersion echo. && echo PlugY 5.06 is not compatible with version %version% && echo. && set "plugy=" && set "PlugySetupMode=" && goto :Pause
		)
		if "%plugy%"=="11.02" (
			for %%a in (1.09 1.09b 1.09d 1.10 1.11 1.11b 1.12a 1.13c 1.13d) do (
				if "%%a"=="%version%" set "validPlugyVersion=true"
			)
			if not defined validPlugyVersion echo. && echo PlugY 11.02 is not compatible with version %version% && echo. && set "plugy=" && set "PlugySetupMode=" && goto :Pause
		)
	)
)

if defined StartGame goto :ApplyChanges

cls
echo.===============================================================================
echo.                       Version Changer v%changerversion% by ChaosMarc                       
echo.===============================================================================
echo.
echo.	[1]   Choose version [%mode%] [%version%]
echo.
echo.	[2]   Use PlugY [%plugy%] [%PlugySetupMode%]
echo.	[3]   Set launch parameter [%parameter%]
echo.	[4]   Set executable [%exe%] (Default: game.exe)
echo.
echo.	[5]   Create shortcuts with the current settings
echo.
echo.	[6]   Apply changes
echo.	[7]   Apply changes ^& start game
echo.
echo.	[8]   Fix 1.14 Installer MPQs (empty error window)
echo.
echo.	[0]   Quit
echo.
echo.===============================================================================
choice /C:123456780 /N /M "Enter Your Choice : "
if errorlevel 9 goto :Quit
if errorlevel 8 goto :FixMPQs
if errorlevel 7 set StartGame=true && goto :ApplyChanges
if errorlevel 6 goto :ApplyChanges
if errorlevel 5 goto :CreateShortcutMenu
if errorlevel 4 goto :CustomExeMenu
if errorlevel 3 goto :LauchParameterMenu
if errorlevel 2 goto :PlugYSetupMenu
if errorlevel 1 goto :ChooseModeMenu

:ChooseModeMenu
cls
echo.===============================================================================
echo.                               Choose Game Mode                                
echo.===============================================================================
echo.
echo.	[1]  Diablo 2 Classic
echo.	[2]  Lord of Destruction
echo.
echo.	[0]  Go Back
echo.
echo.===============================================================================
choice /C:120 /N /M "Enter Your Choice : "
if errorlevel 3 goto :MainMenu
if errorlevel 2 goto :LoDMenu
if errorlevel 1 goto :ClassicMenu

:ClassicMenu
cls
echo.===============================================================================
echo.                               Diablo 2 Classic                                
echo.===============================================================================
echo.
echo.	[A]  1.00		[I]  1.06		[Q]  1.11b
echo.	[B]  1.01		[J]  1.06b		[R]  1.12a
echo.	[C]  1.02		[K]  1.08		[S]  1.13c
echo.	[D]  1.03		[L]  1.09		[T]  1.13d
echo.	[E]  1.04b		[M]  1.09b		[U]  1.14a
echo.	[F]  1.04c		[N]  1.09d		[V]  1.14b
echo.	[G]  1.05		[O]  1.10		[W]  1.14c
echo.	[H]  1.05b		[P]  1.11		[X]  1.14d
echo.
echo.	[0]  Go Back
echo.
echo.===============================================================================
choice /C:ABCDEFGHIJKLMNOPQRSTUVWX0 /N /M "Enter Your Choice : "
if errorlevel 25 goto :ChooseModeMenu
if errorlevel 24 set "mode=Classic" && set "version=1.14d" && goto :MainMenu
if errorlevel 23 set "mode=Classic" && set "version=1.14c" && goto :MainMenu
if errorlevel 22 set "mode=Classic" && set "version=1.14b" && goto :MainMenu
if errorlevel 21 set "mode=Classic" && set "version=1.14a" && goto :MainMenu
if errorlevel 20 set "mode=Classic" && set "version=1.13d" && goto :MainMenu
if errorlevel 19 set "mode=Classic" && set "version=1.13c" && goto :MainMenu
if errorlevel 18 set "mode=Classic" && set "version=1.12a" && goto :MainMenu
if errorlevel 17 set "mode=Classic" && set "version=1.11b" && goto :MainMenu
if errorlevel 16 set "mode=Classic" && set "version=1.11" && goto :MainMenu
if errorlevel 15 set "mode=Classic" && set "version=1.10" && goto :MainMenu
if errorlevel 14 set "mode=Classic" && set "version=1.09d" && goto :MainMenu
if errorlevel 13 set "mode=Classic" && set "version=1.09b" && goto :MainMenu
if errorlevel 12 set "mode=Classic" && set "version=1.09" && goto :MainMenu
if errorlevel 11 set "mode=Classic" && set "version=1.08" && goto :MainMenu
if errorlevel 10 set "mode=Classic" && set "version=1.06b" && goto :MainMenu
if errorlevel 9 set "mode=Classic" && set "version=1.06" && goto :MainMenu
if errorlevel 8 set "mode=Classic" && set "version=1.05b" && goto :MainMenu
if errorlevel 7 set "mode=Classic" && set "version=1.05" && goto :MainMenu
if errorlevel 6 set "mode=Classic" && set "version=1.04c" && goto :MainMenu
if errorlevel 5 set "mode=Classic" && set "version=1.04b" && goto :MainMenu
if errorlevel 4 set "mode=Classic" && set "version=1.03" && goto :MainMenu
if errorlevel 3 set "mode=Classic" && set "version=1.02" && goto :MainMenu
if errorlevel 2 set "mode=Classic" && set "version=1.01" && goto :MainMenu
if errorlevel 1 set "mode=Classic" && set "version=1.00" && goto :MainMenu

:LoDMenu
cls
echo.===============================================================================
echo.                              Lord of Destruction                              
echo.===============================================================================
echo.
echo.	[A]  1.07		[G]  1.10 Beta 2	[M]  1.13d
echo.	[B]  1.08		[H]  1.10		[N]  1.14a
echo.	[C]  1.09		[I]  1.11		[O]  1.14b
echo.	[D]  1.09b		[J]  1.11b		[P]  1.14c
echo.	[E]  1.09d		[K]  1.12a		[Q]  1.14d
echo.	[F]  1.10 Beta 1	[L]  1.13c
echo.
echo.	[0]  Go Back
echo.
echo.===============================================================================
choice /C:ABCDEFGHIJKLMNOPQ0 /N /M "Enter Your Choice : "
if errorlevel 18 goto :ChooseModeMenu
if errorlevel 17 set "mode=LoD" && set "version=1.14d" && goto :MainMenu
if errorlevel 16 set "mode=LoD" && set "version=1.14c" && goto :MainMenu
if errorlevel 15 set "mode=LoD" && set "version=1.14b" && goto :MainMenu
if errorlevel 14 set "mode=LoD" && set "version=1.14a" && goto :MainMenu
if errorlevel 13 set "mode=LoD" && set "version=1.13d" && goto :MainMenu
if errorlevel 12 set "mode=LoD" && set "version=1.13c" && goto :MainMenu
if errorlevel 11 set "mode=LoD" && set "version=1.12a" && goto :MainMenu
if errorlevel 10 set "mode=LoD" && set "version=1.11b" && goto :MainMenu
if errorlevel 9 set "mode=LoD" && set "version=1.11" && goto :MainMenu
if errorlevel 8 set "mode=LoD" && set "version=1.10" && goto :MainMenu
if errorlevel 7 set "mode=LoD" && set "version=1.10 Beta 2" && goto :MainMenu
if errorlevel 6 set "mode=LoD" && set "version=1.10 Beta 1" && goto :MainMenu
if errorlevel 5 set "mode=LoD" && set "version=1.09d" && goto :MainMenu
if errorlevel 4 set "mode=LoD" && set "version=1.09b" && goto :MainMenu
if errorlevel 3 set "mode=LoD" && set "version=1.09" && goto :MainMenu
if errorlevel 2 set "mode=LoD" && set "version=1.08" && goto :MainMenu
if errorlevel 1 set "mode=LoD" && set "version=1.07" && goto :MainMenu

:LauchParameterMenu
cls
echo.===============================================================================
echo.                              Set Start Parameter                              
echo.===============================================================================
echo.
echo.	Current Parameter: "%parameter%"
echo.
echo.	[1]  -act#
echo.	[2]  Window Mode (-w)
echo.	[3]  No Sound (-ns)
echo.	[4]  Skip to Battle.net (-skiptobnet)
echo.
echo.	[5]  Custom Parameter
echo.
echo.	[6]  Remove all Parameters
echo.
echo.	[0]  Go Back
echo.
echo.===============================================================================
choice /C:1234560 /N /M "Enter Your Choice : "
if errorlevel 7 goto :MainMenu
if errorlevel 6 set "parameter=" && goto :LauchParameterMenu
if errorlevel 5 goto :CustomParameterMenu
if errorlevel 4 set "parameter=%parameter% -skiptobnet" && goto :LauchParameterMenu
if errorlevel 3 set "parameter=%parameter% -ns" && goto :LauchParameterMenu
if errorlevel 2 set "parameter=%parameter% -w" && goto :LauchParameterMenu
if errorlevel 1 goto :ActParameterMenu

:ActParameterMenu
cls
echo.===============================================================================
echo.                              Set -act# Parameter                              
echo.===============================================================================
echo.
echo.	Current Parameter: "%parameter%"
echo.
echo.	[1]  -act1 (Default)
echo.	[2]  -act2
echo.	[3]  -act3
echo.	[4]  -act4
echo.	[5]  -act5
echo.
echo.	[0]  Go Back
echo.
echo.===============================================================================
choice /C:123450 /N /M "Enter Your Choice : "
if errorlevel 6 goto :LauchParameterMenu
if errorlevel 5 set "parameter=%parameter% -act5" && goto :LauchParameterMenu
if errorlevel 4 set "parameter=%parameter% -act4" && goto :LauchParameterMenu
if errorlevel 3 set "parameter=%parameter% -act3" && goto :LauchParameterMenu
if errorlevel 2 set "parameter=%parameter% -act2" && goto :LauchParameterMenu
if errorlevel 1 set "parameter=%parameter% -act1" && goto :LauchParameterMenu

:CustomParameterMenu
cls
echo.===============================================================================
echo.                              Set Custom Parameter                             
echo.===============================================================================
echo.
echo.	Current Parameter: "%parameter%"
echo.
echo.===============================================================================
set /p CustomParameter=Enter custom parameter (without "-"): 
if defined CustomParameter set "parameter=%parameter% -%CustomParameter%" 
set CustomParameter=
goto :LauchParameterMenu

:CustomExeMenu
cls
echo.===============================================================================
echo.                             Set Custom Executable                             
echo.===============================================================================
echo.
echo.	Current Executable: "%exe%" (Default: game.exe)
echo.
echo.===============================================================================
set /p CustomExe=Enter custom executable: 
if defined CustomExe set "exe=%CustomExe%" 
set CustomExe=
goto :MainMenu

:PlugYSetupMenu
cls
echo.===============================================================================
echo.                                 Install PlugY                                 
echo.===============================================================================
echo.
echo.	[1]  v5.06 (1.09 - 1.10)
echo.	[2]  v11.02 (1.09 - 1.13d)
echo.	[3]  None
echo.
echo.	[0]  Go Back
echo.
echo.===============================================================================
choice /C:12340 /N /M "Enter Your Choice : "
if errorlevel 4 goto :MainMenu
if errorlevel 3 set "plugy=" && set "PlugySetupMode=" && goto :MainMenu
if errorlevel 2 set "plugyTMP=11.02" && goto :PlugySetupModeMenu
if errorlevel 1 set "plugy=5.06" && set "PlugySetupMode=D2gfx.dll" && goto :MainMenu

:PlugySetupModeMenu
cls
echo.===============================================================================
echo.                     Choose PlugY v%plugyTMP% Install Mode                     
echo.===============================================================================
echo.
echo.	[1]  Patch D2gfx.dll
echo.	[2]  Use PlugY.exe
echo.
echo.	[0]  Go Back
echo.
echo.===============================================================================
choice /C:120 /N /M "Enter Your Choice : "
if errorlevel 3 goto :PlugYSetupMenu
if errorlevel 2 set "plugy=%plugyTMP%" && set "PlugySetupMode=PlugY.exe" && goto :MainMenu
if errorlevel 1 set "plugy=%plugyTMP%" && set "PlugySetupMode=D2gfx.dll" && goto :MainMenu

:CreateShortcutMenu
cls
echo.===============================================================================
echo.                                Create Shortcut                                
echo.===============================================================================
echo.
echo.	[1]  Desktop
echo.	[2]  Start Menu
echo.	[3]  Both
echo.
echo.	[0]  Go Back
echo.
echo.===============================================================================
choice /C:1230 /N /M "Enter Your Choice : "
if errorlevel 4 goto :MainMenu
if errorlevel 3 set "CreateShortcutDesktop=true" && set "CreateShortcutStartmenu=true" && goto :CreateShortcut
if errorlevel 2 set "CreateShortcutDesktop=" && set "CreateShortcutStartmenu=true" && goto :CreateShortcut
if errorlevel 1 set "CreateShortcutDesktop=true" && set "CreateShortcutStartmenu=" && goto :CreateShortcut

:CreateShortcut
set "ShortCutName=Diablo 2 - VersionChanger"
if defined mode if defined version (
	set "ShortCutName=Diablo 2 - %mode% %version%"
)

for /f "tokens=4 delims=. " %%i in ('ver') do set WinVersion=%%i
if %WinVersion% lss 5 (
	set "ShortCutPathDesktop=%windir%\Desktop\%ShortCutName%"
) else (
	set "ShortCutPathDesktop=%USERPROFILE%\Desktop\%ShortCutName%"
)
if %WinVersion% lss 6 (
	set "ShortCutPathStartmenu=%USERPROFILE%\Start Menu\%ShortCutName%"
) else (
	set "ShortCutPathStartmenu=%APPDATA%\Microsoft\Windows\Start Menu\Programs\%ShortCutName%"
)

if defined CreateShortcutDesktop (
	powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%ShortCutPathDesktop%.lnk');$s.TargetPath='%~f0';$s.WorkingDirectory='%~dp0';$s.IconLocation='%~dp0\Diablo II.exe, 0';$s.Arguments='"""mode=%mode%""" """version=%version%""" """plugy=%plugy%""" """PlugySetupMode=%PlugySetupMode%""" """exe=%exe%""" """parameter=%parameter%"""';$s.Save()"
	echo.
	echo.Desktop shortcut successfully created
)

if defined CreateShortcutStartmenu (
	powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%ShortCutPathStartmenu%.lnk');$s.TargetPath='%~f0';$s.WorkingDirectory='%~dp0';$s.IconLocation='%~dp0\Diablo II.exe, 0';$s.Arguments='"""mode=%mode%""" """version=%version%""" """plugy=%plugy%""" """PlugySetupMode=%PlugySetupMode%""" """exe=%exe%""" """parameter=%parameter%"""';$s.Save()"
	echo.
	echo.Start Menu shortcut successfully created
)
echo.
goto :Pause

:ApplyChanges
if not defined CopyFilesDone goto :CopyFiles
if defined plugy (
	if not defined CopyPlugYDone goto :CopyPlugY
	if not defined InstallPlugYDone goto :InstallPlugY
)
if not defined SetExeDone goto :SetExe

set "CopyFilesDone="
set "CopyPlugYDone="
set "InstallPlugYDone="
set "SetExeDone="

if defined StartGame goto :StartGame
goto :Pause

:FixMPQs
VersionChanger\MPQFix\winmpq.exe d ..\..\d2char.mpq (attributes)
VersionChanger\MPQFix\winmpq.exe d ..\..\d2data.mpq (attributes)
VersionChanger\MPQFix\winmpq.exe d ..\..\d2sfx.mpq (attributes)
echo MPQs fixed. You can play now.
goto :Pause

:CopyFiles
if defined mode if defined version (
	if exist Patch_D2.mpq del Patch_D2.mpq >NUL
	copy "VersionChanger\%mode%\%version%\*.*" *.* >NUL
	set "CopyFilesDone=true"
	echo.Changed version to %mode% %version%
)
goto :ApplyChanges

:CopyPlugY
robocopy VersionChanger\PlugY\%plugy%\ . /s >NUL
set "CopyPlugYDone=true"
echo.Installed PlugY %plugy%
goto :ApplyChanges

:InstallPlugY
if "%PlugYSetupMenu%"=="D2gfx.dll" (
	if "plugy"=="5.06" (
		PlugY_Install.exe
	) else (
		PatchD2gfxDll.exe
	)
	echo.Activated PlugY %plugy%
)
set "InstallPlugYDone=true"
goto :ApplyChanges

:SetExe
if not defined exe (
	if "%PlugySetupMode%"=="PlugY.exe" (
		set "exe=PlugY.exe"
	) else (
		set "exe=Game.exe"
	)
)
echo.Set executable to %exe%
set "SetExeDone=true"
goto ApplyChanges

:StartGame
echo.
echo Starting Diablo II
%exe% %parameter%
goto :Quit

:Pause
pause
goto :MainMenu

:Quit

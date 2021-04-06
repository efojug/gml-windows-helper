@echo off
title gml-windows help by efojug
del gml.json /s
del gml.json.bak /s
cls
echo gml-windows help by efojug
:start
@echo off
title gml-windows help by efojug
echo gml-windows help by efojug
set /p choose=input your choose(run , download or close):
if "%choose%"=="run" goto run
if "%choose%"=="close" goto close
if "%choose%"=="gml" goto gml
if "%choose%"=="download" goto download
if "%choose%"=="about" goto about
cls
goto start
:close
del gml.json /s
del gml.json.bak /s
exit
:run
set /p srt=select your type(run=1, showgamelist=2, back=3)
if "%srt%"=="1" goto okrun
if "%srt%"=="2" goto sgl
if "%srt%"=="3" goto start
:okrun
set ram=2048
set /p ram=input run ram(back=1, home=2):
if "%ram%"=="1" goto run
if "%ram%"=="2" goto start
:selver
set /p runver=input run version(back=1, home=2):
if "%runver%"=="1" goto okrun
if "%runver%"=="2" goto start
:selmode
set /p mode=input mode(genuine=1 , off-line=2, authlib-injector=3, microsoft=4, If your game is stuck, choose 5, back=6, home=7):
if "%mode%"=="1" goto genuine
if "%mode%"=="2" goto off-line
if "%mode%"=="3" goto authlib-injector
if "%mode%"=="4" goto microsoft
if "%mode%"=="5" goto fuckgame
if "%mode%"=="6" goto selver
if "%mode%"=="7" goto start
goto start
:microsoft
:memail
set /p email=input your email(back=1, home=2):
if "%email%"=="1" goto selmode
if "%email%"=="2" goto start
title email: %email%
set /p password=input email password(back=1, home=2):
if "%password%"=="1" goto memail
if "%password%"=="2" goto start
title gml-windows help by efojug
gml-windows -run %runver% -email %email% -password %password% -ms -ram %ram% -independent=f -log
pause
del gml.json /s
del gml.json.bak /s
cls
goto start
:off-line
set /p username=input your username(back=1, home=2):
if "%username%"=="1" goto selmode
if "%username%"=="2" goto start
gml-windows -run %runver% -username %username% -ram %ram% -independent=f -log
pause
del gml.json /s
del gml.json.bak /s 
cls
goto start
:genuine
:email
set /p email=input your email(back=1, home=2):
if "%email%"=="1" goto selmode
if "%email%"=="2" goto start
title email: %email%
set /p password=input email password(back=1, home=2):
if "%password%"=="1" goto email
if "%password%"=="2" goto start
title gml-windows help by efojug
gml-windows -run %runver% -email %email% -password %password% -ram %ram% -independent=f -log
pause
del gml.json /s
del gml.json.bak /s
cls
goto start
:authlib-injector
:yggdrasil
set /p yggdrasil=input your yggdrasil(back=1, home=2):
if "%yggdrasil%"=="1" goto selmode
if "%yggdrasil%"=="2" goto start
title yggdrasil: %yggdrasil%
:yemail
set /p email=input your email(back=1, home=2):
if "%email%"=="1" goto yggdrasil
if "%email%"=="2" goto start
title yggdrasil: %yggdrasil% email: %email%
set /p password=input your password(back=1, home=2):
if "%password%"=="1" goto yemail
if "%password%"=="2" goto start
title gml-windows help by efojug
gml-windows -run %runver% -independent=f -email %email% -password %password% -yggdrasil %yggdrasil% -ram %ram% -log
pause
del gml.json /s
del gml.json.bak /s 
cls
goto start
:download
set /p downver=input download version(back=1):
if "%downver%"=="1" goto start
gml-windows -downver %downver% -type "mcbbs|vanilla"
pause
cls
goto start
:gml
@echo off
set /p input=input command(input exit to exit):
if "%input%"=="exit" goto exit
if "%input%"=="help" goto help
@echo on
%input%
@echo off
goto gml
:help
gml-windows -h
goto gml
:exit
cls
goto start
:fuckgame
set /p sure=Sure?(y/n):
if "%sure%"=="y" (goto yes) else goto no
:yes
taskkill /f /t /im javaw.exe
taskkill /f /t /im java.exe
del gml.json /s
del gml.json.bak /s
cls
goto start
:no
cls
goto start
:sgl
gml-windows -runlist
goto run
@echo off
chcp 65001
title RandomNumberCreator
color 0a
mode 47,34
cls

:START
echo   ############################################
echo   #                                          #
echo   #        RandomNumberCreator - RNC         #
echo   #                                          #
echo   ############################################
echo;
echo;
echo    RandomNumberCreator  へようこそ!
echo;
echo;
echo;


echo    [メニュー]
echo   --+-----------------------
echo     ^| 終了       = exit
echo     ^| ヘルプ    = help
echo     ^| 生成       = create
echo     ^| Advanced   = adva
echo     ^| 詳細       = info
echo;

echo   ^|    メニューから選択してください       ^|
echo;
echo;

:set INPUT=
set /P INPUT="  [RNC]  >>  "

if "%INPUT%"=="exit" (
    @REM Exit
    goto :EXIT


) else if "%INPUT%"=="help" (
    @REM Help
    goto :HELP
    mode 120,38


) else if "%INPUT%"=="create" (
    @REM Create
    goto :CORE1


) else if "%INPUT%"=="adva" (
    @REM Advanced
    goto :ADVANCED


) else if "%INPUT%"=="loop" (
    @REM LoopC
    goto :LOOP


) else if "%INPUT%"=="info" (
    @REM Infomation
    mode 120,38
    goto :INFO


) else (
    cls
    goto :START
)




:CORE1
echo;
echo  ----------------------------
echo        生成中...
echo;
echo  [進捗]

setlocal enabledelayedexpansion

set /a Total=5000
set /a Rate=0
set /a Display=1

for /l %%i in (1,1,%Total%) do (
    set /a Rate=%%i * 20
    set /a Rate/=%Total%
    if !Rate! geq !Display! (
        set /p Bar=■< nul
        set /a Display+=1
    )
)

set /a ransub1=%random%*340/32767

set /a ran1=%random%
set /a ran2=%random%
set /a ran3=%random%*1586/32767
set /a ran4=%random%*%ransub1%/32767
set /a ran5=%random%*3456/32767


rem あえての括弧なし
set /a ranend=%ran1%*%ran2%-%ran3%/%ran4%*%ran5%

goto :RESULT1



:CORE2
echo;
echo  ----------------------------
echo        生成中...
echo;
echo  [進捗]

setlocal enabledelayedexpansion

set /a Total=5000
set /a Rate=0
set /a Display=1

for /l %%i in (1,1,%Total%) do (
    set /a Rate=%%i * 20
    set /a Rate/=%Total%
    if !Rate! geq !Display! (
        set /p Bar=■< nul
        set /a Display+=1
    )
)

set /a ransub1=%random%*340/32767

set /a ran1=%random%
set /a ran2=%random%
set /a ran3=%random%*1586/32767
set /a ran4=%random%*%ransub1%/32767
set /a ran5=%random%*3456/32767


rem あえての括弧なし
set /a ranend=%ran1%*%user-ran1%+%ran2%-%ran3%/%ran4%*%ran5%-%user-ran2%

goto :RESULT2



:RESULT1
cls

echo   ###################################
echo   #                                 #
echo   #        結果発表 - AutoMode      #
echo   #                                 #
echo   ###################################
echo;
echo;
echo       [結果]
echo    --+--------------------
echo      ^|
echo      ^|  %ranend%
echo;
echo;
echo;
echo;
echo       [メニュー]
echo    --+-----------------------
echo      ^| 終了       = exit
echo      ^| メニュー   = menu
echo      ^| 再生成      = create
echo      ^| Advanced   = adva
echo      ^| ヘルプ     = help
echo;

echo   ^|    メニューから選択してください       ^|
echo;
echo;
goto :IMP


:RESULT2
cls

echo   ###################################
echo   #                                 #
echo   #        結果発表 - AdvancedMode  #
echo   #                                 #
echo   ###################################
echo;
echo;
echo       [結果]
echo    --+--------------------
echo      ^|
echo      ^|  %ranend%
echo;
echo;
echo;
echo;
echo       [メニュー]
echo    --+-----------------------
echo      ^| 終了       = exit
echo      ^| メニュー   = menu
echo      ^| 再生成      = create
echo      ^| Advanced   = adva
echo      ^| ヘルプ     = help
echo;

echo   ^|    メニューから選択してください       ^|
echo;
echo;
goto :IMP2


:IMP
:set INPUT=
set /P INPUT="  [RNC]  >>  "

if "%INPUT%"=="exit" (
    @REM Exit
    goto :EXIT


) else if "%INPUT%"=="help" (
    @REM Help
    goto :HELP
    mode 120,38


) else if "%INPUT%"=="create" (
    @REM Create
    goto :CORE1


) else if "%INPUT%"=="adva" (
    @REM Advanced
    goto :ADVANCED


) else if "%INPUT%"=="loop" (
    @REM LoopC
    goto :LOOP


) else if "%INPUT%"=="info" (
    @REM Infomation
    mode 120,38
    goto :INFO


) else (
    cls
    goto :RESULT1
)

:IMP2
:set INPUT=
set /P INPUT="  [RNC]  >>  "

if "%INPUT%"=="exit" (
    @REM Exit
    goto :EXIT


) else if "%INPUT%"=="help" (
    @REM Help
    goto :HELP
    mode 120,38


) else if "%INPUT%"=="create" (
    @REM Create
    goto :CORE1


) else if "%INPUT%"=="adva" (
    @REM Advanced
    goto :ADVANCED


) else if "%INPUT%"=="loop" (
    @REM LoopC
    goto :LOOP


) else if "%INPUT%"=="info" (
    @REM Infomation
    mode 120,38
    goto :INFO


) else (
    cls
    goto :RESULT2
)


:EXIT
exit

:ADVANCED
cls

echo   ###################################
echo   #                                 #
echo   #        ADVANCED Mode            #
echo   #                                 #
echo   ###################################
echo;
echo;
echo       [説明]
echo    --+---------------------
echo      ^| ADVANCEDモードはユーザーの
echo      ^| 指定数を入れることができます
echo;
echo;
echo;
echo;

echo   ^|    おすすめは5桁です      ^|
echo   ^|    数字以外は不安定       ^|
echo   ^|          負の数あり       ^|
echo;
echo;
goto :SET-NU1

:SET-NU1

:set INPUT=
set /p user-ran1="  [RNC] No1 >>  "
goto :SET-NU2

:SET-NU2

:set IMPUT=
set /p user-ran2="  [RNC] No2 >>  "
goto :CORE2
@echo off&setlocal  enabledelayedexpansion
@pushd C:\WINDOWS\system32
@mode con cols=64 lines=20
@cls
@color 1f
@title ѭ�����ػ����� %date%
mkdir c:\log\
cls
:a
cls
echo.
echo              �q���������������������r
echo        �q������Android �鿴bug���� �������r
echo        ��    �t���������������������s    ��
echo        ��                                ��
echo        ��       �����ߣ�����             ��
echo        ��                                ��
echo        ��                                ��
echo        �t���������������������������������s
echo.
echo              δ��⵽�豸....
adb wait-for-device>nul
goto canshu

:canshu
cls
echo.
echo              �q���������������������r
echo        �q������Android �鿴bug���� �������r
echo        ��    �t���������������������s    ��
echo        ��                                ��
echo        ��       �����ߣ�����             ��
echo        ��                                ��
echo        ��                                ��
echo        �t���������������������������������s
echo.
echo ���ڱ���bugreport����ǰĿ¼��.....
set cd = %cd%
set /a t1=%time:~0,2%*1
if %t1% LSS 10 set t1=0%t1%
set TT=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
set CurDate=%date:~0,10%
adb shell bugreport  >c:\log\bugreport_%TT%.txt


start c:\log\bugreport_%TT%.txt
cls
echo.
echo              �q���������������������r
echo        �q������Android �鿴bug���� �������r
echo        ��    �t���������������������s    ��
echo        ��                                ��
echo        ��       �����ߣ�����             ��
echo        ��                                ��
echo        ��                                ��
echo        �t���������������������������������s
echo.
echo     ����bug������ɻ�ADB�Ͽ�
pause 
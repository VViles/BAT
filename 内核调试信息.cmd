@echo off&setlocal  enabledelayedexpansion
@pushd C:\WINDOWS\system32
@mode con cols=64 lines=20
@cls
@color 1f
@title �ں˵�����Ϣ %date%
mkdir c:\log\
cls
:a
cls
echo.
echo              �q���������������������r
echo        �q������    �ں˵�����Ϣ    �������r
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
echo        �q������    �ں˵�����Ϣ    �������r
echo        ��    �t���������������������s    ��
echo        ��                                ��
echo        ��       �����ߣ�����             ��
echo        ��                                ��
echo        ��   ����Ŀ¼λ�ã�c:\log\        ��
echo        �t���������������������������������s
echo.
echo ���ڱ����ں˵�����Ϣ��c:\log\dmesg.txt��.....
set cd = %cd%
set /a t1=%time:~0,2%*1
if %t1% LSS 10 set t1=0%t1%
set TT=%t1%%time:~3,2%%time:~6,2%
set CurDate=%date:~0,10%
adb shell dmesg  >c:\log\dmesg.txt
:pp
cls
echo.
echo              �q���������������������r
echo        �q������    �ں˵�����Ϣ    �������r
echo        ��    �t���������������������s    ��
echo        ��                                ��
echo        ��       �����ߣ�����             ��
echo        ��                                ��
echo        ��   ����Ŀ¼λ�ã�c:\log\        ��
echo        �t���������������������������������s
echo.
echo     �����ں˵�����Ϣ��ɻ�ADB�Ͽ�����
echo.&echo.
echo   �Ƿ���ں˵�����Ϣlog?
echo ********************************
echo ����ѡ��Y   N
echo.&echo.
set/p a=�Ƿ��Y/N��
if %a%==y start c:\log\dmesg.txt
if %a%==n goto exit
if %a%==Y start c:\log\dmesg.txt
if %a%==N goto exit
:exit
exit
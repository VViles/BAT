@echo off&setlocal  enabledelayedexpansion
@pushd C:\WINDOWS\system32
@mode con cols=64 lines=22
@cls
@color 1f
@title �鿴Ӧ�õ��ڴ����� %date%
mkdir c:\log\
cls
:a
cls
echo.
echo              �q���������������������r
echo        �q������    Ӧ���ڴ�����    �������r
echo        ��    �t���������������������s    ��
echo        ��                                ��
echo        ��       �����ߣ�����             ��
echo        ��                                ��
echo        ��                                ��
echo        �t���������������������������������s
echo.
echo              δ��⵽�豸....
adb wait-for-device>nul
goto f
:f
cls
echo.
echo              �q���������������������r
echo        �q������    Ӧ���ڴ�����    �������r
echo        ��    �t���������������������s    ��
echo        ��                                ��
echo        ��       �����ߣ�����             ��
echo        ��                                ��
echo        ��                                ��
echo        �t���������������������������������s
echo.
set/p k=��������Ӧ�õİ�����
goto canshu
:canshu
cls
echo.
echo              �q���������������������r
echo        �q������    Ӧ���ڴ�����    �������r
echo        ��    �t���������������������s    ��
echo        ��                                ��
echo        ��       �����ߣ�����             ��
echo        ��                                ��
echo        ��   ����Ŀ¼λ�ã�c:\log\        ��
echo        �t���������������������������������s
echo.
echo ���ڱ���Ӧ��%k%�ڴ�������c:\log\%k%.txt��.....
set cd = %cd%
set /a t1=%time:~0,2%*1
if %t1% LSS 10 set t1=0%t1%
set TT=%t1%%time:~3,2%%time:~6,2%
set CurDate=%date:~0,10%
adb shell dumpsys meminfo %k%
adb shell dumpsys meminfo %k%  >c:\log\%k%.txt

:pp
cls
echo.
echo              �q���������������������r
echo        �q������    Ӧ���ڴ�����    �������r
echo        ��    �t���������������������s    ��
echo        ��                                ��
echo        ��       �����ߣ�����             ��
echo        ��                                ��
echo        ��                                ��
echo        �t���������������������������������s
echo.
echo       ����Ŀ¼λ�ã�c:\log\%k%.txt 
echo.
echo     ����Ӧ��%k%�ڴ�������ɻ�ADB�Ͽ�����
echo.&echo.
echo   �Ƿ��Ӧ��%k%�ڴ�����?
echo **********************************************
echo.
echo ����ѡ��Y   N
echo.
echo.
set/p a=�Ƿ��Y/N��
if %a%==y start c:\log\%k%.txt
if %a%==n goto exit
if %a%==Y start c:\log\%k%.txt
if %a%==N goto exit
:exit
exit
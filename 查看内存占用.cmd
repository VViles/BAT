@echo off&setlocal  enabledelayedexpansion
@pushd C:\WINDOWS\system32
@mode con cols=64 lines=20
@cls
@color 1f
@title �鿴�ڴ�ռ�� %date%
mkdir c:\log\
cls
:a
cls
echo.
echo              �q���������������������r
echo        �q������    �鿴�ڴ�ռ��    �������r
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
echo        �q������    �鿴�ڴ�ռ��    �������r
echo        ��    �t���������������������s    ��
echo        ��                                ��
echo        ��       �����ߣ�����             ��
echo        ��                                ��
echo        ��   ����Ŀ¼λ�ã�c:\log\        ��
echo        �t���������������������������������s
echo.
echo ���ڱ���鿴�ڴ�ռ����Ϣ��c:\log\procrank.txt.....
set cd = %cd%
set /a t1=%time:~0,2%*1
if %t1% LSS 10 set t1=0%t1%
set TT=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
set CurDate=%date:~0,10%
adb shell procrank  >c:\log\procrank_%TT%.txt


:pp
cls
echo.
echo              �q���������������������r
echo        �q������    �鿴�ڴ�ռ��    �������r
echo        ��    �t���������������������s    ��
echo        ��                                ��
echo        ��       �����ߣ�����             ��
echo        ��                                ��
echo        ��   ����Ŀ¼λ�ã�c:\log\        ��
echo        �t���������������������������������s
echo.
echo     �����ڴ�ռ����Ϣ�����
echo.&echo.
echo   �Ƿ���ڴ�ռ����Ϣlog?
echo ********************************
echo ����ѡ��Y   N
echo.&echo.
set/p a=�Ƿ��Y/N��
if %a%==y start c:\log\procrank_%TT%.txt
if %a%==n goto exit
if %a%==Y start c:\log\procrank_%TT%.txt
if %a%==N goto exit
:exit
exit
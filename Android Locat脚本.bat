@echo off&setlocal  enabledelayedexpansion
@mode con cols=50 lines=20
@cls
@color 1f
@title ��androidƽ̨Log ���ߡ� %date%
echo              �q���������������������r
echo        �q������androidƽ̨Log ���� �������r
echo        ��    �t���������������������s    ��
echo        ��                                ��
echo        ��                                ��
echo        ��                                ��
echo        ��   �������ʼ�QQ��814380399      ��
echo        �t���������������������������������s
echo ***********************************************
set a=
set/p a=�����뱣���ļ����ƣ�

:main
echo              �q���������������������r
echo        �q������androidƽ̨Log ���� �������r
echo        ��    �t���������������������s    ��
echo        ��                                ��
echo        ��                                ��
echo        ��                                ��
echo        ��   �������ʼ�QQ��814380399      ��
echo        �t���������������������������������s

echo.
echo ***********************************************
set TT=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
adb wait-for-device>nul
echo Logcat Save c:\log\%a%_%TT%.log
adb shell logcat -v time >c:\log\%a%_%TT%.log

ping -n 1 127.1>nul
cls
goto main
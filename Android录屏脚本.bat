@echo off&setlocal  enabledelayedexpansion
@mode con cols=50 lines=20
@cls
@color 1f
@title ��androidƽ̨¼�����ߡ� %date%
echo              �q���������������������r
echo        �q������androidƽ̨¼������ �������r
echo        ��    �t���������������������s    ��
echo        ��                                ��
echo        ��                                ��
echo        ��                                ��
echo        ��   �������ʼ�QQ��814380399      ��
echo        �t���������������������������������s
echo ***********************************************
set a=
set/p a=�����뱣���ļ����ƣ�
mkdir ./screenrecord
:main
echo              �q���������������������r
echo        �q������androidƽ̨¼������ �������r
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
echo ��Ƶ������ sdcard/%a%_%TT%.mp4
adb shell screenrecord --time-limit 180  sdcard/%a%_%TT%.mp4 || true &
adb pull sdcard/%a%_%TT%.mp4  ./screenrecord || true &
adb shell rm sdcard/%a%_%TT%.mp4  || true &
ping -n 1 127.1>nul
cls
goto main
@echo off&setlocal  enabledelayedexpansion
@mode con cols=60 lines=30
@cls
@color 1f
@title Android Logcat ���� %date%
:a
cls
echo.
echo              �q���������������������r
echo        �q������ Android Logcat ����������r
echo        ��    �t���������������������s    ��
echo        ��                                ��
echo        ��       �����ߣ�����             ��
echo        ��                                ��
echo        ��     ע��logcat����Ϊ��ǰĿ¼   ��
echo        �t���������������������������������s
echo.
echo              δ��⵽�豸....
adb wait-for-device>nul
:b
echo.&echo.
cls
echo.
echo              �q���������������������r
echo        �q������ Android Logcat ����������r
echo        ��    �t���������������������s    ��
echo        ��                                ��
echo        ��       �����ߣ�����             ��
echo        ��                                ��
echo        ��     ע��logcat����Ϊ��ǰĿ¼   ��
echo        �t���������������������������������s
echo.
echo     �豸�����ӳɹ���ѡ����Ӧ���𱣴���Ӧlogcat....
echo.&echo.
set cd=%cd%
set /a t1=%time:~0,2%*1
if %t1% LSS 10 set t1=0%t1%
set TT=%t1%%time:~3,2%%time:~6,2%
set CurDate=%date:~0,10%
echo LOG���ȼ�ѡ��1~8
echo.
echo ����ѡ��[1]V   [2]D  [3]I [4]W [5]E [6]F [7]S  [q]�˳�
echo.&echo.
set/p a=������ѡ��LOG����Ϊ��
if %a%==1 adb shell logcat -v time  *:v > %cd%\logcat_%CurDate%_%TT%.txt &pause>nul&goto c
if %a%==2 adb shell logcat -v time  *:d > %cd%\logcat_%CurDate%_%TT%.txt &pause>nul &goto c
if %a%==3 adb shell logcat -v time  *:i > %cd%\logcat_%CurDate%_%TT%.txt &pause>nul &goto c
if %a%==4 adb shell logcat -v time  *:w > %cd%\logcat_%CurDate%_%TT%.txt &pause>nul &goto c
if %a%==5 adb shell logcat -v time  *:E > %cd%\logcat_%CurDate%_%TT%.txt &pause>nul &goto c
if %a%==6 adb shell logcat -v time  *:f > %cd%\logcat_%CurDate%_%TT%.txt &pause>nul &goto c
if %a%==7 adb shell logcat -v time  *:s > %cd%\logcat_%CurDate%_%TT%.txt &pause>nul &goto c
if %a%==q goto exit

:c
cls
echo.
echo              �q���������������������r
echo        �q������ Android Logcat ����������r
echo        ��    �t���������������������s    ��
echo        ��                                ��
echo        ��       �����ߣ�����             ��
echo        ��                                ��
echo        ��     ע��logcat����Ϊ��ǰĿ¼   ��
echo        �t���������������������������������s
echo.
echo              ���ڴ�log....
start logcat_%a%_%CurDate%_%TT%.txt goto b
:exit
exit
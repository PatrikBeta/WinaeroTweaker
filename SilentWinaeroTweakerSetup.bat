@title Installing Winaero Tweaker...
@mkdir "c:\program files\Winaero Tweaker"
@if exist "C:\Program Files\winaero tweaker" cd "C:\Program Files\winaero tweaker"
@if not exist "c:\program files\Winaero Tweaker" title Failed To Install Winaero Tweaker
@timeout /nobreak 8 | break
@if not exist "c:\program files\Winaero Tweaker" %0
@set SetupApp=d:\WinaeroTweaker-1.55.0.0-setup.exe
@timeout /nobreak 8 | break
%setupapp% /sp+ /verysilent /dir="c:\program files\winaero tweaker"
@fsutil file createnew unins000.bat 0
@timeout /nobreak 4 | break
cls
@echo rmdir /q /s "c:\program files\winaero tweaker" | rmdir /s /q "c:\programdata\microsoft\windows\start menu\programs\winaero tweaker" > "c:\program files\winaero tweaker\unins000.bat"
@timeout /nobreak 8 | break
exit
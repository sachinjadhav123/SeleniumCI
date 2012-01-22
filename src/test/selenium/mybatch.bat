

@ECHO OFF
del TestSuite.html
echo ^<table id="suiteTable" cellpadding="5" cellspacing="5" border="5" class="selenium"^>^<tbody^>^<tr^>^<td^>^<b^>TestSuite for all tests111^</b^>^</td^>^</tr^>> TestSuite.html.tmp
for /f  "delims=" %%a in ('dir /b /on *.html') do echo ^<tr^>^<td^>^<a target="testFrame" href= "%%a"^>%%~na^</a^>^</td^>^</tr^> >> TestSuite.html.tmp 
echo ^</tbody^>^</table^> >> TestSuite.html.tmp
ren TestSuite.html.tmp TestSuite.html

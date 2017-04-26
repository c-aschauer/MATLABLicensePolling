# MATLABLicensePolling
Script to poll for a MATLAB Toolbox license in a separate window.

Everyone who works in a company, which uses floating licenses for MathWorks products knows it: 
You can't go on or start working on your project because you a toolbox license is missing.

That's why I wrote this little batch script. 
Just start the batch file, type in the license you want to check out from your license server and wait.
The batch opens a matlab command line instance, which polls the license server for that license every 5 seconds.
After a successful checkout, it shows the time it took, so you can blame your license admin with hard facts :)

The reason for opening a new MATLAB instance is that this way you can keep working with the licenses you already have while you wait. After the script finished, you can use the new license in your main window straight away.
Unfortunately you can't checkout a base matlab license because this script works with the matlab function 'license(...)'.

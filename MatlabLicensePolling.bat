
@ECHO OFF
@ECHO MATLAB license polling script starter.
@ECHO.
@ECHO Valid license names are:
@ECHO   - SIMULINK
@ECHO   - Control_Toolbox
@ECHO   - Curve_Fitting_Toolbox
@ECHO   - Signal_Blocks
@ECHO   - Image_Toolbox
@ECHO   - Optimization_Toolbox
@ECHO   - Distrib_Computing_Toolbox
@ECHO   - Signal_Toolbox
@ECHO   - Stateflow
@ECHO   - Statistics_Toolbox
@ECHO   - Symbolic_Toolbox
@ECHO.
set /p licenseName=Please enter a valid toolbox license name:
@ECHO MATLAB and the polling script will be started for the license: %licenseName%
@ECHO matlab -nodesktop -nosplash -r LicensePolling('%licenseName%')
matlab -nodesktop -nosplash -r LicensePolling('%licenseName%')
@ECHO The cmd window can be closed now.
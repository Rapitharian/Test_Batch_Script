@ECHO OFF
:Menu
CLS
ECHO *************************************************
ECHO * Choose one of the following                   *
ECHO *                                               *
ECHO * 1. Name the window "Test"                     *
ECHO * 2. Name the window "Thrills"                  *
ECHO *************************************************
ECHO.
SET /P Selection="Please enter selection:"
IF "%Selection%" EQU "1" (
	GOTO ONE
	) ELSE (
		IF "%Selection%" EQU "2" (
			GOTO TWO
		) ELSE (
			CLS
			ECHO Please Enter a valid value!
			ECHO.
			ECHO.
			PAUSE
			GOTO Menu
		)
	)
:ONE
CLS
TITLE Test
ECHO The title has been changed to Test
GOTO EOF

:TWO
CLS
TITLE Thrills
ECHO The title has been changed to Thrills
GOTO EOF

TITLE LOST

:EOF
ECHO Press M to go to the menu
SET /P Selection2="Please enter selection:"
IF "%Selection2%" EQU "M" (
	GOTO Menu
	) ELSE (
		IF "%Selection2%" EQU "m" (
		GOTO Menu
		)
	)
	
PAUSE
EXIT /B
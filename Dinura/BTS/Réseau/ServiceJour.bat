@echo off
SET /p FILES=Voulez vous afficher l'heure actuelle ? [o/n]
IF %FILES% EQU o GOTO 1
IF %FILES% EQU o GOTO 2
:1
echo 1. Voulez demandez l'heure actuelle
echo %time%

:2
SET /p FILES=Voulez vous afficher la Date actuelle ? [o/n]
IF %FILES% EQU o GOTO 3
IF %FILES% EQU o GOTO 4
:3
echo 2. Vous souhaitez afficher la date du jour
echo %date%

:4
echo Fin - Sortie du Programme
pause
exit
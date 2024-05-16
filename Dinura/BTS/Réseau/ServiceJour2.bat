@echo off
echo 1 - Afficher l'heure
echo 2 - Afficher la date 
echo 3 - Sortir
set /p choix="Selectionner une option :"
If "%choix%"=="1" echo %time% 
If /i "%choix%"=="2" echo %date% 
If /i "%choix%"=="3" exit

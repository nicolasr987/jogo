@echo off
title --Pedra - Papel - Tesoura - Lagarto - Spock--
mode con lines=100 cols=70

:topo
::AI escolhe de 1 a 6
set /a ai=%RANDOM% * 5 / 52768 + 1
set 
cls
echo --Pedra - Papel - Tesoura--Lagarto-Spock
echo Esolhe um:
echo [1] Pedra
echo [2] Papel
echo [3] Tesoura
echo [4] Largato
echo [5] Spock
echo [6] Regras
set /p seu_nome= digite seu nome 
set /p nome= digite a opcao 
if %nome%==1 (
set x=1
goto baixo
)
if %nome%==2 (
set x=2
goto baixo
)
if %nome%==3 (
set x=3
goto baixo
)
if %nome%==4 (
set x=4
goto baixo
)
if %nome%==5 (
set x=5
goto baixo
)
if %nome%==6 (
(call regras.bat)
goto baixo
)
goto topo
:baixo
if %x%==1 (
if %ai%==1 (
echo Pedra vs Pedra
echo Empate
pause>nul
goto topo
)
)
if %x%==2 (
if %ai%==2 (
echo Papel vs Papel
echo Empate
pause>nul
goto topo
)
)
if %x%==3 (
if %ai%==3 (
echo tesoura vs tesoura
echo Empate
pause>nul
)
)
if %x%==1 (
if %ai%==2 (
echo Pedra embrulha Papel
echo Perdeu
pause>nul
goto topo
)
)
if %x%==4 (
if %ai%==4 (
echo Largato vs Largato
echo Empate
pause>nul
goto topo
)
)
if %x%==1 (
if %ai%==3 (
echo Pedra vs Tesoura
echo Ganhou
pause>nul
goto topo
)
)
if %x%==2 (
if %ai%==1 (
echo Papel embrulha Pedra
echo Ganhou
pause>nul
goto topo
)
)
if %x%==2 (
if %ai%==3 (
echo Papel e cortado pela Tesoura
echo Perdeu
pause>nul
goto topo
)
)
if %x%==3 (
if %ai%==1 (
echo Tesoura é quebrada pela Pedra
echo Perdeu
pause>nul
goto topo
)
)
if %x%==3 (
if %ai%==2 (
echo Tesoura corta o Papel
echo Ganhou!
pause>nul
goto topo
)
)
if %x%==5 (
if %ai%==4 (
echo lagarto envenena Spock
echo Perdeu
pause>nul
goto topo
)
)
if %x%==5 (
if %ai%==1 (
echo Spock_vaporiza_pedra
echo ganhou
pause>nul
goto topo
)
)
if %x%==5 (
if %ai%==5 (
echo Spock vs Spock
echo Empate
pause>nul
)
)
if %x%==4 (
if %ai%==5 (
echo Lagarto_envenena_Spock
echo ganhou
pause>nul
goto topo
)
)
if %x%==5 (
if %ai%==2 (
echo Papel_refuta_Spock
echo Perdeu
pause>nul
goto topo
)
)
if %x%==2 (
if %ai%==5 (
echo Papel_refuta_Spock
echo Perdeu
pause>nul
goto topo
)
)
if %x%==5 (
if %ai%==3 (
echo Spock_derrete_tesoura
echo Ganhou
pause>nul
)
)
if %x%==3 (
if %ai%==5 (
echo Spock_derrete_tesoura
echo Perdeu
pause>nul
goto topo
)
)
if %x%==3 (
if %ai%==4 (
echo Tesoura_decapita_lagarto
echo Ganhou
pause>nul
goto topo
)
)
if %x%==1 (
if %ai%==4 (
echo pedra_esmaga_lagarto
echo Ganhou
pause>nul
goto topo
)
)
if %x%==4 (
if %ai%==1 (
echo Pedra esmaga lagarto
echo Perdeu
pause>nul
goto topo
)
)
if %x%==1 (
if %ai%==5 (
echo Spock_vaporiza_pedra
echo Ganhou
pause>nul
goto topo
)
)
if %x%==2 (
if %ai%==4 (
echo Lagarto_come_papel
echo perdeu
pause>nul
goto topo
)
)
if %x%==2 (
if %ai%==5 (
echo Papel_refuta_Spock
echo Ganhou
pause>nul
goto topo
)
)
if %x%==4 (
if %ai%==2 (
echo Lagarto come papel
echo Perdeu
pause>nul
goto topo
)
)
if %x%==4 (
if %ai%==5 (
echo Lagarto_envenena_Spock
echo Ganhou
pause>nul
goto topo
)
)
if %x%==4 (
if %ai%==3 (
echo Lagarto come papel
echo Ganhou
pause>nul
goto topo
)
)

pause>nul
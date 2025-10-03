@echo off
:inicio
echo ==================================
echo      Bienvenido a Mi Bash Menu
echo ==================================
echo 1. Abrir Microsoft Word
echo 2. Abrir Microsoft Excel
echo 3. Abrir Página de la Universidad Javeriana Cali
echo 4. Abrir Página Favorita
echo 5. Reproducir Video Musical Favorito 1
echo 6. Reproducir Video Musical Favorito 2
echo 7. Bloquear Pantalla
echo 8. Salir
echo ==================================
set /p opcion=Elige una opcion (1-8): 

if %opcion%==1 goto abrirWord
if %opcion%==2 goto abrirExcel
if %opcion%==3 goto abrirJaveriana
if %opcion%==4 goto abrirFavorito
if %opcion%==5 goto videoFavorito1
if %opcion%==6 goto videoFavorito2
if %opcion%==7 goto bloquerPantalla
if %opcion%==8 goto salir

echo Opción inválida, intenta de nuevo.
goto inicio

:abrirWorld
echo abriendo World...
start WinWord
goto inicio

:abrirExcel
echo abriendo Excel...
start Excel
goto inicio

:abrirJaveriana
echo abriendo Javeriana...
start https://www.javerianacali.edu.co
goto inicio

:abrirFavorito
set /p pagina=Introduce tu pagina wep favorita 
set pagina=%pagina: =+%
start https://www.google.com/search?q="%pagina%"
goto inicio

:videoFavorito 1
echo Reproduciendo Video Musical Favorito 1...
start https://www.youtube.com/watch?v=XYuBWQGf7a0&list=RDXYuBWQGf7a0&start_radio=1
goto inicio

:videoFavorito 2 
echo Reproduciendo Video Musical Favorito 2...
start https://www.youtube.com/watch?v=khB6DUHpR4o&list=RDkhB6DUHpR4o&start_radio=1
goto inicio

:bloquearPantalla
echo Bloqueando la pantalla
runt1132.exe user32.dll,lockworkstation 
goto inicio

:salir
echo Gracias por usar mi bash station. saliendo...
goto :eof
echo off
title Leon Script
cls
rem verification localisation
if NOT EXIST Script_hack_3ds.bat ( color C )
if NOT EXIST Script_hack_3ds.bat ( cls )
if NOT EXIST Script_hack_3ds.bat ( echo Erreur : Merci de verifier si le fichier s'appelle " Script_hack_3ds.bat " et de le lancer en double cliquant dessus ) 
if NOT EXIST Script_hack_3ds.bat ( PAUSE )
if NOT EXIST Script_hack_3ds.bat ( EXIT ) 
cls
rem Merci de ne pas supprimer les credits
echo Cree par LeonLeBreton
echo Remerciment a Luc_Ha et Reshiban
echo Guide cree pour les consoles en 11.13.0-45E
echo Quand vous etes pret, appuyez sur entrer pour lancer le telechargement
echo Le pc doit etre en 64 bits
PAUSE

rem Verification de curl
curl -O https://cdn.discordapp.com/attachments/706621625566756945/713155875065561198/test.txt
cls
if NOT EXIST test.txt ( goto :u ) ELSE ( goto :t )
:u 
color C
curl -V
if ERRORLEVEL 9009 ( cls && echo La dependance CURL est manquante, merci de suivre ce tutoriel https://o7planning.org/fr/11617/installation-de-curl-sous-windows afin de l'installer et l'utiliser ) ELSE ( cls && echo Verifier votre connexion internet et relancer le script )
PAUSE 
exit  
:t 
del test.txt 
set unsafemodescriptlocal=%CD%
mkdir %appdata%\hack
mkdir %appdata%\hack\cias
mkdir %appdata%\hack\3ds
cd %appdata%\hack\
cls
echo Telechargement des fichiers importants en cours
:h
set /p unsafemodeinstall=Quel type d'installation souhaitez-vous ? Normal (defaut): 1, Minimal : 2, En savoir plus : 3	: 
if /I "%unsafemodeinstall%"=="3" (goto :g) 
set /p unsafemodeluma="Souhaitez-vous faciliter le hack en remplacant H&S par FBI (et faire quelques optimisations) ? Oui (defaut): 1, Non : 2   : "
if /I "%unsafemodeinstall%"=="1" (goto :e)
if /I "%unsafemodeinstall%"=="2" (goto :f) 
goto :e
:g
cls
echo L'installation minimale telecharge les fichiers necessaires a la methode de piratage "unsafemode", Luma, FBI et Gm9 (avec le mega script)
echo L'installation normale comprend les memes fichiers mais avec d'autres homebrews a installer avec FBI
goto :h 
:e
cls
rem Normal
cd cias\ 
curl -O https://cdn.discordapp.com/attachments/706621625566756945/707613508665344100/Anemone3DS.cia
curl -O https://cdn.discordapp.com/attachments/706621625566756945/707613508853825536/lumaupdater.cia
curl -O https://cdn.discordapp.com/attachments/706621625566756945/707613509818777640/DSP1.cia
curl -O https://cdn.discordapp.com/attachments/706621625566756945/707613510976274543/Homebrew_Launcher.cia
curl -O https://cdn.discordapp.com/attachments/706621625566756945/707613510959628365/Checkpoint.cia
curl -O https://cdn.discordapp.com/attachments/706621625566756945/711603109042061373/Universal-Updater.cia
cd ..
:f
cls

rem H&S
if /I "%unsafemodeluma%"=="2" (goto :i) 
rem LeonScript    
curl https://cdn.discordapp.com/attachments/706621625566756945/712031842580168764/Leonscript.firm --output boot.firm

rem Luma
curl https://cdn.discordapp.com/attachments/706621625566756945/706625553620271194/boot.firm --output bootluma.firm 

rem Slot tool
curl -O https://cdn.discordapp.com/attachments/706621625566756945/713042413903544320/slotTool.cia
move %appdata%\hack\slotTool.cia %appdata%\hack\cias\slotTool.cia
goto :j

rem pas H&S
:i
curl -O https://cdn.discordapp.com/attachments/706621625566756945/706625553620271194/boot.firm

rem Fbi (cia/3dsx)
curl -O https://cdn.discordapp.com/attachments/706621625566756945/706629994658398279/FBI.3dsx
move %appdata%\hack\FBI.3dsx %appdata%\hack\3ds\FBI.3dsx

:j
rem Tadmuffin 
curl -O https://cdn.discordapp.com/attachments/684847907274227755/706942274055045160/TADmuffin.exe

rem Telechargement des fichiers necessaires aux hack

rem cias
curl -O https://cdn.discordapp.com/attachments/706621625566756945/706630002413928538/FBI.cia
move %appdata%\hack\FBI.cia %appdata%\hack\cias\FBI.cia

rem Homebrew Launcher
curl -O https://smealum.github.io/ninjhax2/boot.3dsx

rem usm.bin
curl -O https://cdn.discordapp.com/attachments/706621625566756945/706974311310950420/usm.bin

rem Gm9 + Gm9 mega script
mkdir %appdata%\hack\Luma\payloads
curl -O https://cdn.discordapp.com/attachments/706621625566756945/706626239909330954/GodMode9.firm
move %appdata%\hack\GodMode9.firm %appdata%\hack\Luma\payloads\GodMode9.firm

mkdir %appdata%\hack\gm9\scripts\
curl -O https://cdn.discordapp.com/attachments/706621625566756945/706626240668237874/GM9Megascript.gm9
move %appdata%\hack\GM9Megascript.gm9 %appdata%\hack\gm9\scripts\GM9Megascript.gm9


echo Telechargement fini
cls

:a
set /p unsafemodechoix=Possedez-vous le movable.sed propre a votre console ? (Oui=1, Non=2) : 
if /I "%unsafemodechoix%"=="1" (goto :c)
if /I "%unsafemodechoix%"=="2" (goto :b)
cls
goto :a

rem Guide pour movable.sed
:b
cls
echo Une page internet va s'ouvrir pour realiser le guide
PAUSE
start https://seedminer.hacks.guide/
cls
echo Recuperation du movable.sed
echo Cette etape est trop compliquee (voire impossible) a faire en commande, par consequence il va falloir le faire manuellement
echo Voici le guide de 3ds.guide pour vous aider
echo 1. Ouvrez https://seedminer.hacks.guide/ sur votre ordinateur (s'il n'est pas deja ouvert)
echo 2. Entrez le code ami de votre console (sans espaces ni tirets) dans le champ "Your friend code"
echo 3. Collez le nom du dossier de votre console (qui fait 32 caracteres de long) dans le champ "Your ID0"
echo 4. Completez le captcha "Je ne suis pas un robot"
echo 5. Selectionnez "Go"
echo 6. Lorsque demande, utilisez le bouton "Ajouter un ami" sur votre console pour ajouter le code ami de la 3DS bot
echo 7. Attendez que le site se mette a jour 
echo 8. Une fois que le site aura traite vos informations, vous aurez le choix entre "Continuer" ou "Refaire le processus pour un autre appareil". Cliquez le bouton vert "Continuer"
echo 9. Veuillez attendre que le reste du processus soit acheve
echo 10. Une fois le processus termine, telechargez votre fichier movable.sed depuis le site
goto :d
:c
cls
:d
set /p unsafemode=Renseignez le chemin precis du fichier movable.sed (Faites attention, un mauvais fichier va produire une erreur) :
copy %unsafemode% "%appdata%\hack\movable.sed"
if ERRORLEVEL 1 ( cls && goto :d )
cls
rem Obtention du fichier pour bb3 
echo Veuillez patienter, ce processus peut prendre du temps ...
TADmuffin.exe movable.sed
find F00D43D5.bin
if ERRORLEVEL 1 ( cls && echo Erreur lors de la compilation. Merci de verifier le movable.sed && goto :d )
rmdir /Q /S F00D43D5
del TADmuffin.exe
del movable.sed
:p
cls
set /p unsafemodeid=Collez ici le nom du dossier de votre console (qui fait 32 caracteres de long) que vous avez rentre dans le champ "Your ID0" :
if /I "%unsafemodeid%"=="" (goto :p)
:q
set /p unsafemodeid2=Collez ici le nom du dossier de votre console (qui fait 32 caracteres de long) qui se situe apres l'ID0 :
if /I "%unsafemodeid2%"=="" (cls && goto :q) 
mkdir "Nintendo 3ds\%unsafemodeid%\%unsafemodeid2%\Nintendo DSiWare"
move F00D43D5.bin "Nintendo 3ds\%unsafemodeid%\%unsafemodeid2%\Nintendo DSiWare"
:l
cls
echo Preparatifs finis, copie des fichiers du PC vers la SD
:r
fsutil fsinfo drives
set /p unsafemodesd=Inserez et renseignez juste la lettre de la sd (par exemple : G ) (Pour actualiser les lecteurs, tapez 1) :
if /I "%unsafemodesd%"=="1" (goto :l)
xcopy /Y /E * %unsafemodesd%:\
if ERRORLEVEL 1 ( cls && echo Mauvais repertoire ! Rappel : Il faut uniquement mettre la lettre && goto :r )  
echo Fichier copie !
PAUSE
cls
rem nettoyage
rmdir /Q /S %appdata%\hack
set unsafemode=
set unsafemodesd=
set unsafemodeid=
set unsafemodeid2=
set unsafemodechoix=
set unsafemodeinstall=
cls
echo Installation du hack sur la console
echo 1. Reinserez votre carte SD dans votre 3DS
echo 2. Allumez a present votre 3DS
echo 3. Lancez les Parametres de la console
echo "4. Naviguez vers Gestion des donnees -> DSiWare"
echo 5. Cliquez sur l'onglet Carte SD
echo 6. Votre ecran du bas devrait clignoter en rouge, puis la console redemarrera sur le menu HOME quelques secondes plus tard. Cela signifie que le profil exploite a ete copie avec succes
echo 7. Eteignez votre 3DS
echo 8. Votre console toujours eteinte, maintenez enfonce les boutons suivants : (L) + (R) + (Haut sur la croix directionnelle) + (A), puis appuyez sur (Power) 
echo 9. Appuyez sur "OK" pour accepter la mise a jour 
echo 10. Appuyez sur "J'accepte" pour accepter les termes et conditions
echo 11. La mise a jour finira par echouer, avec le code erreur 003-1099. Ne vous inquietez pas, c'est normal
echo 12. Lorsque votre console vous demande "Parametrer la connexion Internet de la console ?", selectionnez "Parametrer"
echo "13. Dans le menu suivant, accedez a Connexion 1 -> Modifier -> Page suivante (fleche de droite) -> Serveur proxy -> Parametres avances"
echo 14. Une fois que vous voyez B9S install SUCCESS sur l'ecran du haut, appuyez sur n'importe quel bouton pour redemarrer
if /I "%unsafemodeluma%"=="2" (goto :k) 
echo 15. Un script va se lancer et installer FBI sur la console et nettoiera la sd
echo Felicitations, vous avez totalement pirate votre console
echo.
echo Pour retablir les parametres internet : Lancer FBI (il se trouve a la place de H&S) et installer tous les cias. Apres avoir ouvert tous les cadeaux, lancer SlotTool. Selectionner ensuite la 2nd ligne et appuyer sur A.
PAUSE
goto :m
:k
echo Felicitations, vous avez reussi a installer B9S
echo.
echo "Pour retablir les parametres internet : Lancez les Parametres de la console, puis naviguez vers Gestion des donnees -> DSiWare et enfin cliquer sur l'onglet Carte SD. Votre ecran du bas devrait clignoter en vert. 
PAUSE
:m
cls 
set /p unsafemodescript=Souhaitez-vous supprimer le script de l'ordinateur ? ( Oui : 1, Non : 2 ) : 
if /I "%unsafemodescript%"=="1" cd %unsafemodescriptlocal% && del Script_hack_3ds.bat
set unsafemodescript= 
set unsafemodeluma=
exit
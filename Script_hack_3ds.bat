echo off
cls
rem Merci de ne pas supprimer les credits
echo Cree par LeonLeBreton
echo Guide cree pour les consoles en 11.13.0-45E
echo Quand vous etes pret appuyez sur entrer pour lancer le telechargement
echo Le pc doit etre en 64 bits
PAUSE
mkdir %appdata%\hack
mkdir %appdata%\hack\cias
mkdir %appdata%\hack\3ds
cd %appdata%\hack\
cls
echo Telechargement des fichiers importants en cours
:h
set /p unsafemodeinstall=Quel type d'installation souhaitez vous ? Normal (defaut): 1, Minimal : 2, En savoir plus : 3	: 
if /I "%unsafemodeinstall%"=="3" (goto :g) 
set /p unsafemodeluma="Souhaitez vous faciliter le hack en remplacant H&S par FBI (et faire quelque optimisation) ? Oui (defaut): 1, Non : 2   : "
if /I "%unsafemodeinstall%"=="1" (goto :e)
if /I "%unsafemodeinstall%"=="2" (goto :f) 
goto :e
:g
cls
echo L'installation minimal telecharge les fichiers necessaires a la methode de piratage "unsafemode", Luma, FBI et Gm9 (avec le mega script)
echo l'installation normal comprends les memes fichier mais avec d'autre homebrew a installer avec FBI
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

rem H&S wip
if /I "%unsafemodeluma%"=="2" (goto :i) 
rem LeonScript    
curl https://cdn.discordapp.com/attachments/706621625566756945/712031842580168764/Leonscript.firm --output boot.firm

rem Luma
curl https://cdn.discordapp.com/attachments/706621625566756945/706625553620271194/boot.firm --output bootluma.firm 
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

rem FBI
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
set /p unsafemodechoix=Possedez vous le movable.sed propre a votre console ? (Oui=1, Non=2)
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
echo Cette etape est trop complique (voir impossible) a faire en commande, par consequence il va falloir le faire manuellement
echo Voici le guide de 3ds.guide pour vous aidez
echo 1. Ouvrez https://seedminer.hacks.guide/ sur votre ordinateur (si il n'est pas deja ouvert)
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
set /p unsafemode=Renseignez le chemin precis du fichier movable.sed (Faites attention, un mauvais fichier va faire une erreur) :
cls
rem Obtention du fichier pour bb3 
echo Veuillez patienter, ce processus peut prendre du temps ...
cp %unsafemode% %appdata%\hack\movable.sed 
TADmuffin.exe movable.sed 
rm -r F00D43D5
rm TADmuffin.exe
rm movable.sed
cls
set /p unsafemodeid=Collez ici le nom du dossier de votre console (qui fait 32 caracteres de long) que vous avez rentre dans le champ "Your ID0" :
set /p unsafemodeid2=Collez ici le 2eme nom du dossier de votre console (qui fait 32 caracteres de long) qui se trouve apres l'ID0 :
mkdir "Nintendo 3ds\%unsafemodeid%\%unsafemodeid2%\Nintendo DSiWare"
move F00D43D5.bin "Nintendo 3ds\%unsafemodeid%\%unsafemodeid2%\Nintendo DSiWare"
:j
cls
echo Preparatif fini, copie des fichiers du pc sur la sd
fsutil fsinfo drives
set /p unsafemodesd=Inserez et renseignez la juste la lettre de la sd (par exemple : G ) (Pour actualiser les lecteurs, tapez 1) :
if /I "%unsafemodesd%"=="1" (goto :j)
cp -r * %unsafemodesd%:\
echo Fichier copie !
PAUSE
cls
rem nettoyage
rm -r %appdata%\hack\
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
echo Attention : vos acces internet vont etre supprimes
echo 5. Cliquez sur l'onglet Carte SD
echo 6. Votre ecran du bas devrait clignoter en Rouge, puis la console redemarrera sur le menu HOME quelques secondes plus tard. Cela signifie que le profil exploite a ete copie avec succes
echo 7. eteignez votre 3DS
echo 8. Votre console toujours eteinte, maintenez enfonce les boutons suivants : (L) + (R) + (Haut sur la croix directionnelle) + (A), puis appuyez sur (Power) 
echo 9. Appuyez sur "OK" pour accepter la mise a jour 
echo 10. Appuyez sur "J'accepte" pour accepter les termes et conditions
echo 11. La mise a jour finira par echouer, avec le code erreur 003-1099. Ne vous inquietez pas, c'est normal
echo 12. Lorsque votre console vous demande "Parametrer la connexion Internet de la console ?", selectionnez "Parametrer"
echo "13. Dans le menu suivant, accedez a Connexion 1 -> Modifier -> Page suivante (fleche de droite) -> Serveur proxy -> Parametres avances"
echo 14. Une fois que vous voyez B9S install SUCCESS sur l'ecran du haut, appuyez sur n'importe quel bouton pour redemarrer
if /I "%unsafemodeluma%"=="2" (goto :k) 
echo 15. Un script va se lancer et installer FBI sur la console et nettoira la sd
echo Felicitation, vous avez totalement pirate votre console, le programme va s'arreter
PAUSE
set unsafemodeluma=
exit 
:k
echo Felicitation, vous avez reussi a installer B9S, le programme va s'arreter
PAUSE
set unsafemodeluma=
exit

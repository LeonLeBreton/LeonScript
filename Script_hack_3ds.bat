﻿echo off 
chcp 65001 
cls
echo off
cls
echo TEST DE COMPATIBILIE : éèêàÉ
set /p unsafemodeaccent=Voyez-vous correctement les accents ci-dessus ? (Oui : 1, Non : 2) :  
if /I "%unsafemodeaccent%"=="2" (set unsafemodeaccent= && curl -O https://cdn.discordapp.com/attachments/706621625566756945/713046878836752404/Script_hack_3ds_sans_accents.bat && Script_hack_3ds_sans_accents.bat && exit)
set unsafemodeaccent=
cls
rem Merci de ne pas supprimer les credits
echo Créé par LeonLeBreton
echo Guide créé pour les consoles en 11.13.0-45E
echo Quand vous êtes prêt, appuyez sur entrer pour lancer le téléchargement
echo Le pc doit être en 64 bits
PAUSE
mkdir %appdata%\hack
mkdir %appdata%\hack\cias
mkdir %appdata%\hack\3ds
cd %appdata%\hack\
cls
echo Téléchargement des fichiers importants en cours
:h
set /p unsafemodeinstall=Quel type d'installation souhaitez-vous ? Normal (defaut): 1, Minimal : 2, En savoir plus : 3	: 
if /I "%unsafemodeinstall%"=="3" (goto :g) 
set /p unsafemodeluma="Souhaitez-vous faciliter le hack en remplaçant H&S par FBI (et faire quelques optimisations) ? Oui (defaut): 1, Non : 2   : "
if /I "%unsafemodeinstall%"=="1" (goto :e)
if /I "%unsafemodeinstall%"=="2" (goto :f) 
goto :e
:g
cls
echo L'installation minimale télécharge les fichiers nécessaires à la méthode de piratage "unsafemode", Luma, FBI et Gm9 (avec le mega script)
echo L'installation normale comprend les mêmes fichiers mais avec d'autres homebrews à installer avec FBI
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
curl -O https://cdn.discordapp.com/attachments/706621625566756945/713042413903544320/slotTool.cia
move %appdata%\hack\FBI.cia %appdata%\hack\cias\FBI.cia
move %appdata%\hack\slotTool.cia %appdata%\hack\cias\slotTool.cia

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


echo Téléchargement fini
cls

:a
set /p unsafemodechoix=Possédez-vous le movable.sed propre à votre console ? (Oui=1, Non=2) : 
if /I "%unsafemodechoix%"=="1" (goto :c)
if /I "%unsafemodechoix%"=="2" (goto :b)
cls
goto :a

rem Guide pour movable.sed
:b
cls
echo Une page internet va s'ouvrir pour réaliser le guide
PAUSE
start https://seedminer.hacks.guide/
cls
echo Récupération du movable.sed
echo Cette étape est trop compliquée (voire impossible) à faire en commande, par conséquence il va falloir le faire manuellement
echo Voici le guide de 3ds.guide pour vous aider
echo 1. Ouvrez https://seedminer.hacks.guide/ sur votre ordinateur (s'il n'est pas déjà ouvert)
echo 2. Entrez le code ami de votre console (sans espaces ni tirets) dans le champ "Your friend code"
echo 3. Collez le nom du dossier de votre console (qui fait 32 caractères de long) dans le champ "Your ID0"
echo 4. Complétez le captcha "Je ne suis pas un robot"
echo 5. Sélectionnez "Go"
echo 6. Lorsque demandé, utilisez le bouton "Ajouter un ami" sur votre console pour ajouter le code ami de la 3DS bot
echo 7. Attendez que le site se mette à jour 
echo 8. Une fois que le site aura traité vos informations, vous aurez le choix entre "Continuer" ou "Refaire le processus pour un autre appareil". Cliquez le bouton vert "Continuer"
echo 9. Veuillez attendre que le reste du processus soit achevé
echo 10. Une fois le processus terminé, téléchargez votre fichier movable.sed depuis le site
goto :d
:c
cls
:d 
set /p unsafemode=Renseignez le chemin précis du fichier movable.sed (Faites attention, un mauvais fichier va produire une erreur) : 
cls
rem Obtention du fichier pour bb3 
echo Veuillez patienter, ce processus peut prendre du temps ...
cp %unsafemode% %appdata%\hack\movable.sed 
TADmuffin.exe movable.sed 
rm -r F00D43D5
rm TADmuffin.exe
rm movable.sed
cls
set /p unsafemodeid=Collez ici le nom du dossier de votre console (qui fait 32 caractères de long) que vous avez rentré dans le champ "Your ID0" : 
set /p unsafemodeid2=Collez ici le nom du dossier de votre console (qui fait 32 caractères de long) qui se situe après l'ID0 : 
mkdir "Nintendo 3ds\%unsafemodeid%\%unsafemodeid2%\Nintendo DSiWare"
move F00D43D5.bin "Nintendo 3ds\%unsafemodeid%\%unsafemodeid2%\Nintendo DSiWare"
:l
cls
echo Préparatifs finis, copie des fichiers du PC vers la SD
fsutil fsinfo drives
set /p unsafemodesd=Insérez et renseignez juste la lettre de la sd (par exemple : G ) (Pour actualiser les lecteurs, tapez 1) : 
if /I "%unsafemodesd%"=="1" (goto :l)
cp -r * %unsafemodesd%:\
echo Fichier copié !
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
echo 1. Réinserez votre carte SD dans votre 3DS
echo 2. Allumez à présent votre 3DS
echo 3. Lancez les Paramètres de la console
echo "4. Naviguez vers Gestion des données -> DSiWare"
echo Attention : vos accès internet vont être supprimés
echo 5. Cliquez sur l'onglet Carte SD
echo 6. Votre écran du bas devrait clignoter en rouge, puis la console redémarrera sur le menu HOME quelques secondes plus tard. Cela signifie que le profil exploité a été copié avec succès
echo 7. Éteignez votre 3DS
echo 8. Votre console toujours éteinte, maintenez enfoncé les boutons suivants : (L) + (R) + (Haut sur la croix directionnelle) + (A), puis appuyez sur (Power) 
echo 9. Appuyez sur "OK" pour accepter la mise à jour 
echo 10. Appuyez sur "J'accepte" pour accepter les termes et conditions
echo 11. La mise à jour finira par échouer, avec le code erreur 003-1099. Ne vous inquiétez pas, c'est normal
echo 12. Lorsque votre console vous demande "Paramétrer la connexion Internet de la console ?", sélectionnez "Paramétrer"
echo "13. Dans le menu suivant, accédez à Connexion 1 -> Modifier -> Page suivante (fleche de droite) -> Serveur proxy -> Paramètres avancés"
echo 14. Une fois que vous voyez B9S install SUCCESS sur l'écran du haut, appuyez sur n'importe quel bouton pour redémarrer
if /I "%unsafemodeluma%"=="2" (goto :k) 
echo 15. Un script va se lancer et installer FBI sur la console et nettoiera la sd
echo Felicitations, vous avez totalement piraté votre console
PAUSE
goto :m
:k
echo Felicitations, vous avez réussi à installer B9S
PAUSE
:m
set unsafemodeluma=
exit

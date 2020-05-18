echo off
make clean
make firm SCRIPT_RUNNER=1
rm output/*.sha
rm output/*_dev.*
mv output/GodMode9.firm output/LeonScript.firm
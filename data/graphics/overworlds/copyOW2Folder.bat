@echo off
set /p input=  OW Name to grab:  
set /p input2=  Target OW name:  
echo "Copying %input% to %input2%."
cp C:\Users\quinc\Downloads\work\overworlds\normal\%input%.png D:\heartgold\hg-engine\data\graphics\overworlds\%input2%.png
cp C:\Users\quinc\Downloads\work\overworlds\shiny\%input%.png D:\heartgold\hg-engine\data\graphics\overworlds\%input2%_shiny.png
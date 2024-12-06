USAGE

install ruby

make sure this folder is inside the hg-engine folder

run: `ruby npoint_generate.rb` from inside this folder (calc_gen) to generate json to use on npoint.io

upload npoint.json to npoint.io

you should now have a page for your json like so: https://www.npoint.io/docs/0055b511e046845c72b6

0055b511e046845c72b6 would be the NPOINT_ID

calc is now viewable at: https://hzla.github.io/Dynamic-Calc-HGE/?data=NPOINT_ID&gen=8&types=6&dmgGen=8&switchIn=4&mechanics=hgengine

replace NPOINT_ID with the id from the uploaded json on npoint in the URL

save files can be read by clicking the `upload save button in the middle column of the calc` and clicking import

you can also run the command `generate LEVEL` in the import text box to generate an example box of pokemon using your repo's encounter files
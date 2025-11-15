.loadtable "armips/include/utf-8.txt"

// mon data macros

.macro mondata,species,name
	monname species, name
	.if species < 10
		.create "build/a002/mondata_000" + tostring(species),0
	.elseif species < 100
		.create "build/a002/mondata_00" + tostring(species),0
	.elseif species < 1000
		.create "build/a002/mondata_0" + tostring(species),0
	.else
		.create "build/a002/mondata_" + tostring(species),0
	.endif

.endmacro

.macro basestats,hp,atk,def,spd,spatk,spdef
	.byte hp, atk, def, spd, spatk, spdef
.endmacro

.macro types,type1,type2
	.byte type1
	.byte type2
.endmacro

.macro catchrate,num
	.byte num
.endmacro

.macro baseexp,num
	.byte num
.endmacro

.macro evyields,hp,atk,def,spd,spatk,spdef
	.halfword (hp | atk << 2 | def << 4 | spd << 6 | spatk << 8 | spdef << 10)
.endmacro

.macro items,item1,item2
	.halfword item1
	.halfword item2
.endmacro

.macro genderratio,num
	.byte num
.endmacro

.macro eggcycles,num
	.byte num
.endmacro

.macro basefriendship,num
	.byte num
.endmacro

.macro growthrate,num
	.byte num
.endmacro

.macro egggroups,group1,group2
	.byte group1
	.byte group2
.endmacro

.macro abilities,abi1,abi2
.orga 0x16
	.halfword abi1
.orga 0x1A
	.halfword abi2
.endmacro

.macro runchance,num
.orga 0x18
	.byte num
.endmacro

.macro colorflip,color,flip
	.byte (color | flip << 7)
	// get rid of zeroing out ability 2
.orga 0x1C
	.word 0
	.word 0
	.word 0
	.word 0
	.close
.endmacro


// evolution data macros

.macro evodata,species

	.if species < 10
		.create "build/a034/evodata_000" + tostring(species),0
	.elseif species < 100
		.create "build/a034/evodata_00" + tostring(species),0
	.elseif species < 1000
		.create "build/a034/evodata_0" + tostring(species),0
	.else
		.create "build/a034/evodata_" + tostring(species),0
	.endif

.endmacro

.macro evolution,method,parameter,species
	.if (species > NUM_OF_MONS)
		.error "Invalid species supplied to evolution macro.  If trying to specify an evolution into a form (i.e. SPECIES_ZIGZAGOON_GALARIAN), use the evolutionwithform macro."
	.endif
	.halfword method
	.halfword parameter
	.halfword species
.endmacro

// fucking 5-bit forms
.macro evolutionwithform,method,parameter,species,form
	.if (species > NUM_OF_MONS)
		.error "Invalid species supplied to evolutionwithform macro.  If trying to specify an evolution into a form, split up the base species and the form (i.e. \"SPECIES_ZIGZAGOON_GALARIAN\" becomes \"SPECIES_ZIGZAGOON, 1\")."
	.endif
	.halfword method
	.halfword parameter
	.halfword (species | form << 11)
.endmacro

.macro terminateevodata
	.halfword 0

	.close
.endmacro

// baby mon macro

.macro babymon,species,baby
	.if species == 0
		.create "base/root/poketool/personal/pms.narc",0
	.endif

	.org (species * 2)

	.halfword baby

	.if species == NUM_OF_TOTAL_MONS_PLUS_FORMS
		.close
	.endif
.endmacro


// tutor move bitfield macro

.macro tutordata,species,data1,data2
	.if species == 1
		.create "base/root/fielddata/wazaoshie/waza_oshie.bin",0
	.endif

	.org ((species - 1) * 8)

	.word data1
	.word data2
.endmacro

.macro heightentry,species,fback,mback,ffront,mfront
	.if ((species) * 4) < 10
		.create "build/a005/a005_000" + tostring((species) * 4),0
	.elseif ((species) * 4) < 100
		.create "build/a005/a005_00" + tostring((species) * 4),0
	.elseif ((species) * 4) < 1000
		.create "build/a005/a005_0" + tostring((species) * 4),0
	.else
		.create "build/a005/a005_" + tostring((species) * 4),0
	.endif

	.if fback != "null"
		.byte fback
	.endif

	.close

	.if ((species) * 4 + 1) < 10
		.create "build/a005/a005_000" + tostring((species) * 4 + 1),0
	.elseif ((species) * 4 + 1) < 100
		.create "build/a005/a005_00" + tostring((species) * 4 + 1),0
	.elseif ((species) * 4 + 1) < 1000
		.create "build/a005/a005_0" + tostring((species) * 4 + 1),0
	.else
		.create "build/a005/a005_" + tostring((species) * 4 + 1),0
	.endif

	.if mback != "null"
		.byte mback
	.endif

	.close

	.if ((species) * 4 + 2) < 10
		.create "build/a005/a005_000" + tostring((species) * 4 + 2),0
	.elseif ((species) * 4 + 2) < 100
		.create "build/a005/a005_00" + tostring((species) * 4 + 2),0
	.elseif ((species) * 4 + 2) < 1000
		.create "build/a005/a005_0" + tostring((species) * 4 + 2),0
	.else
		.create "build/a005/a005_" + tostring((species) * 4 + 2),0
	.endif

	.if ffront != "null"
		.byte ffront
	.endif

	.close

	.if ((species) * 4 + 3) < 10
		.create "build/a005/a005_000" + tostring((species) * 4 + 3),0
	.elseif ((species) * 4 + 3) < 100
		.create "build/a005/a005_00" + tostring((species) * 4 + 3),0
	.elseif ((species) * 4 + 3) < 1000
		.create "build/a005/a005_0" + tostring((species) * 4 + 3),0
	.else
		.create "build/a005/a005_" + tostring((species) * 4 + 3),0
	.endif

	.if mfront != "null"
		.byte mfront
	.endif

	.close
.endmacro

.macro dataentry,species,monfrontanim,monbackanim,monoffy,shadowoffx,shadowsize
	.if (species) > SPECIES_ARCEUS // fill in generic frame data for new mons (it is bulbasaur)
		.orga ((species) * 0x59)
		.byte 0x00, 0x02, 0x00, 0x00, 0x04, 0x00, 0x00, 0x01, 0x0A, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x09, 0x05, 0x0B, 0x00, 0x0B, 0x00, 0x00, 0x01, 0x0F, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00
	.endif

	.orga ((species) * 0x59) + 1
	.byte monfrontanim

	.orga ((species) * 0x59) + 0x2C
	.byte monbackanim

	.orga ((species) * 0x59) + 0x56
	.byte monoffy
	.byte shadowoffx
	.byte shadowsize
.endmacro


// mon overworld narc a141 macro

.macro overworlddata,ownum,canenter,bouncespeed
	.if ownum < 10
		.create "build/a141/a141_000" + tostring(ownum),0
	.elseif ownum < 100
		.create "build/a141/a141_00" + tostring(ownum),0
	.elseif ownum < 1000
		.create "build/a141/a141_0" + tostring(ownum),0
	.else
		.create "build/a141/a141_" + tostring(ownum),0
	.endif

	.byte 0
	.byte canenter
	.byte bouncespeed
	.byte 0

	.close
.endmacro


// mon dex area macros (narc a133)

.macro specialareas,monnum,timeofday
	.if (timeofday == 0) // morning time
		.if (2 + monnum) < 10
			.create "build/a133/3_000" + tostring(2 + monnum),0
		.elseif (2 + monnum) < 100
			.create "build/a133/3_00" + tostring(2 + monnum),0
		.elseif (2 + monnum) < 1000
			.create "build/a133/3_0" + tostring(2 + monnum),0
		.else
			.create "build/a133/3_" + tostring(2 + monnum),0
		.endif
	.elseif (timeofday == 1) // day time
		.if (2 + monnum + NUM_OF_MONS) < 10
			.create "build/a133/3_000" + tostring(2 + monnum + NUM_OF_MONS),0
		.elseif (2 + monnum + NUM_OF_MONS) < 100
			.create "build/a133/3_00" + tostring(2 + monnum + NUM_OF_MONS),0
		.elseif (2 + monnum + NUM_OF_MONS) < 1000
			.create "build/a133/3_0" + tostring(2 + monnum + NUM_OF_MONS),0
		.else
			.create "build/a133/3_" + tostring(2 + monnum + NUM_OF_MONS),0
		.endif
	.elseif (timeofday == 2) // night time
		.if (2 + monnum + (2*NUM_OF_MONS)) < 10
			.create "build/a133/3_000" + tostring(2 + monnum + (2*NUM_OF_MONS)),0
		.elseif (2 + monnum + (2*NUM_OF_MONS)) < 100
			.create "build/a133/3_00" + tostring(2 + monnum + (2*NUM_OF_MONS)),0
		.elseif (2 + monnum + (2*NUM_OF_MONS)) < 1000
			.create "build/a133/3_0" + tostring(2 + monnum + (2*NUM_OF_MONS)),0
		.else
			.create "build/a133/3_" + tostring(2 + monnum + (2*NUM_OF_MONS)),0
		.endif
	.else // timeofday == 3
		.create "build/a133/3_" + tostring(2 + monnum + (6*NUM_OF_MONS)),0
	.endif
.endmacro

.macro routesandcities,monnum,timeofday
	.if (timeofday == 0) // morning time
		.create "build/a133/3_" + tostring(2 + monnum + (3*NUM_OF_MONS)),0
	.elseif (timeofday == 1) // day time
		.create "build/a133/3_" + tostring(2 + monnum + (4*NUM_OF_MONS)),0
	.elseif (timeofday == 2) // night time
		.create "build/a133/3_" + tostring(2 + monnum + (5*NUM_OF_MONS)),0
	.else // timeofday == 3
		.create "build/a133/3_" + tostring(2 + monnum + (7*NUM_OF_MONS)),0
	.endif
.endmacro

.macro dexendareadata
	.word 0

	.close
.endmacro


// trainer data macros

.macro trainerdata,num,name
	trainername num, name
	.if num < 10
		.create "build/a055/5_00" + tostring(num),0
	.elseif num < 100
		.create "build/a055/5_0" + tostring(num),0
	.else
		.create "build/a055/5_" + tostring(num),0
	.endif
.endmacro

.macro trainermontype,num
	.byte num
.endmacro

.macro trainerclass,num
	.halfword num
.endmacro

.macro battletype,num
	.byte num
.endmacro

.macro nummons,num
	.byte num
.endmacro

// 4 items

.macro aiflags,num
	.word num
.endmacro

.macro endentry
	.byte 0, 0, 0

	.close
.endmacro


// trainer mon data macros

.macro party,num
	.if num < 10
		.create "build/a056/6_00" + tostring(num),0
	.elseif num < 100
		.create "build/a056/6_0" + tostring(num),0
	.else
		.create "build/a056/6_" + tostring(num),0
	.endif
.endmacro

.macro ivs,num
	.byte num
.endmacro

.macro abilityslot,num
	.byte num
.endmacro

.macro level,num
	.halfword num
.endmacro

.macro monwithform,species,formid
	.if (species > NUM_OF_MONS)
		.error "Invalid species supplied to monwithform macro.  If trying to specify a form, split up the base species and the form, i.e. \"SPECIES_ZIGZAGOON_GALARIAN\" becomes \"SPECIES_ZIGZAGOON, 1\"."
	.endif
	.halfword (species | (formid<<11))
.endmacro

.macro pokemon,num
	.if (num > NUM_OF_MONS)
		.error "Invalid species supplied to pokemon macro.  If trying to specify a mon with a form (i.e. SPECIES_ZIGZAGOON_GALARIAN), use monwithform."
	.endif
	monwithform num, 0
.endmacro

.macro ballseal,num
	.halfword num
.endmacro

.macro move,num
	.halfword num
.endmacro

.macro item,num
	.halfword num
.endmacro

.macro ability,num
	.halfword num
.endmacro

.macro ball,num
	.halfword num
.endmacro

.macro setivs,hp,atk,def,spd,spatk,spdef
	.byte hp, atk, def, spd, spatk, spdef
.endmacro

.macro setevs,hp,atk,def,spd,spatk,spdef
	.byte hp, atk, def, spd, spatk, spdef
.endmacro

.macro nature,num
	.byte num
.endmacro

.macro shinylock,num
	.byte num
.endmacro

.macro additionalflags,num
	.word num
.endmacro

.macro status,num
	.word num
.endmacro

.macro stathp,num
	.halfword num
.endmacro

.macro statatk,num
	.halfword num
.endmacro

.macro statdef,num
	.halfword num
.endmacro

.macro statspeed,num
	.halfword num
.endmacro

.macro statspatk,num
	.halfword num
.endmacro

.macro statspdef,num
	.halfword num
.endmacro

.macro ppcounts,num1,num2,num3,num4
	.byte num1, num2, num3, num4
.endmacro

.macro nickname,let0,let1,let2,let3,let4,let5,let6,let7,let8,let9,let10
	.halfword let0, let1, let2, let3, let4, let5, let6, let7, let8, let9, let10
.endmacro

.macro endparty
	.close
.endmacro

// trainer text entry macro - string is parsed by python script

.macro trainertextentry,num,type,string
	//.close
	//writestring "728", entrynum, string
	//.open "build/trainer_text_map/7_0", 0
	//.org entrynum*4
	.halfword num, type
.endmacro

// encounter data macros

.macro encounterdata,num
	.if num < 10
		.create "build/a037/7_00" + tostring(num),0
	.elseif num < 100
		.create "build/a037/7_0" + tostring(num),0
	.else
		.create "build/a037/7_" + tostring(num),0
	.endif
.endmacro

.macro walkrate,num
	.byte num
.endmacro

.macro surfrate,num
	.byte num
.endmacro

.macro rocksmashrate,num
	.byte num
.endmacro

.macro oldrodrate,num
	.byte num
.endmacro

.macro goodrodrate,num
	.byte num
.endmacro

.macro superrodrate,num
	.byte num
.endmacro

.macro walklevels,num1,num2,num3,num4,num5,num6,num7,num8,num9,num10,num11,num12
	.org 8

	.byte num1, num2, num3, num4, num5, num6, num7, num8, num9, num10, num11, num12
.endmacro

.macro encounterwithform,species,form,minlevel,maxlevel
	.if (species > NUM_OF_MONS)
		.error "Invalid species supplied to encounterwithform macro.  If trying to specify a form, split up the base species and the form, i.e. \"SPECIES_ZIGZAGOON_GALARIAN\" becomes \"SPECIES_ZIGZAGOON, 1\"."
	.endif
	.byte minlevel, maxlevel
	.halfword (species | (form << 11))
.endmacro

.macro encounter,species,minlevel,maxlevel
	.if (species > NUM_OF_MONS)
		.error "Invalid species supplied to encounter macro.  If trying to specify a form (i.e. \"SPECIES_ZIGZAGOON_GALARIAN\"), use encounterwithform."
	.endif
	encounterwithform species, 0, minlevel, maxlevel
.endmacro

.macro msgbankappend,file,msg
	.create file, 0
	.stringn msg
	.close
.endmacro

.macro writestring,subfile,id,str
	.if id < 10
		msgbankappend "build/rawtext/" + subfile + "/000" + tostring(id) + ".txt", str
	.elseif id < 100
		msgbankappend "build/rawtext/" + subfile + "/00" + tostring(id) + ".txt", str
	.elseif id < 1000
		msgbankappend "build/rawtext/" + subfile + "/0" + tostring(id) + ".txt", str
	.else
		msgbankappend "build/rawtext/" + subfile + "/" + tostring(id) + ".txt", str
	.endif
.endmacro

.macro trainername,id,name
	writestring "729", id, "{TRNAME}"+name
.endmacro

.macro monname,id,name
	writestring "237", id, name
	writestring "238", id, name
	writestring "817", id, name
.endmacro

.macro mondexentry,id,description
	writestring "803", id, description
.endmacro

.macro mondexclassification,id,classification
	writestring "816", id, classification
	writestring "823", id, classification
.endmacro

.macro mondexheight,id,height
	writestring "814", id, height
	writestring "815", id, height
.endmacro

.macro mondexweight,id,weight
	writestring "812", id, weight
	writestring "813", id, weight
.endmacro


//note to self: 237.txt would be species names


// headbutt trees

.macro xycoords, x, y
	.halfword x, y
.endmacro

.macro treecoords, x1, y1, x2, y2, x3, y3, x4, y4, x5, y5, x6, y6
	xycoords x1, y1
	xycoords x2, y2
	xycoords x3, y3
	xycoords x4, y4
	xycoords x5, y5
	xycoords x6, y6
.endmacro

.macro headbuttheader, num, headbuttTreeQuantity, specialTreeQuantity
	.if num < 10
		.create "build/headbutttrees/00" + tostring(num),0
	.elseif num < 100
		.create "build/headbutttrees/0" + tostring(num),0
	.else
		.create "build/headbutttrees/" + tostring(num),0
	.endif
	.halfword headbuttTreeQuantity, specialTreeQuantity
.endmacro

.macro headbuttencounter, species, minLevel, maxlevel
	.if (species > NUM_OF_MONS)
		.error "Invalid species supplied to headbuttencounter macro.  If trying to specify a form (i.e. \"SPECIES_ZIGZAGOON_GALARIAN\"), use encounterwithform."
	.endif
	.halfword species
	.byte minLevel, maxlevel
.endmacro

.macro headbuttencounterwithform, species, form, minLevel, maxlevel
	.if (species > NUM_OF_MONS)
		.error "Invalid species supplied to headbuttencounterwithform macro.  If trying to specify a form, split up the base species and the form, i.e. \"SPECIES_ZIGZAGOON_GALARIAN\" becomes \"SPECIES_ZIGZAGOON, 1\"."
	.endif
	.halfword species | (form << 11)
	.byte minLevel, maxlevel
.endmacro

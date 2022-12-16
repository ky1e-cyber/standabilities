##STAND ABILITIES

execute as @a[tag = sa_standuser,tag=!sa_sneaking, tag = !sa_standactive, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run function standabilities:stands/summon
execute as @a[tag= sa_standactive] at @s if entity @s[tag = !sa_standuser] run tag @s remove sa_standactive

##Arrow
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{sa:{StandArrow:1b}}}]}] at @s run function standabilities:stands/arrow_use

##Time Stop

execute as @a[tag = sa_stopper] run function standabilities:stands/timestop/tick_stp

execute as @e[tag = sa_stopped] run function standabilities:stands/timestop/tick_stped

##Actionbar
execute as @a[tag = sa_standuser, tag = !sa_standactive, nbt = !{SelectedItemSlot:8}] run title @s actionbar ""


##ZA WARUDO

execute as @a[tag = sa_standuser,scores = {jp2_standid = 9}, tag=sa_standactive] at @s run function standabilities:stands/world/main
execute as @a[tag = sa_standuser, scores = {jp2_standid = 9}, nbt={SelectedItemSlot:8}, tag = !sa_standactive] run title @s actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Summon ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"The World","color":"#FFDD00","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]

## STAR PLATINUM

execute as @a[tag = sa_standuser,scores = {jp2_standid = 8}, tag=sa_standactive] at @s run function standabilities:stands/platinum/main
execute as @a[tag = sa_standuser, scores = {jp2_standid = 8}, nbt={SelectedItemSlot:8}, tag = !sa_standactive] run title @s actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Summon ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"Star Platinum","color":"#6b03a4","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]

## Hermit Purple

execute as @a[tag = sa_standuser,scores = {jp2_standid = 6}, tag=sa_standactive] at @s run function standabilities:stands/hpurple/main
execute as @a[tag = sa_standuser, scores = {jp2_standid = 6}, nbt={SelectedItemSlot:8}, tag = !sa_standactive] run title @s actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Summon ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"Hermit Purple","color":"#a900b1","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]

## Hierephanto Green
execute store result score @a[tag = sa_standuser,scores = {jp2_standid = 7}] sa_hg_webs run execute if entity @e[tag = sa_hgnode]

execute as @a[tag = sa_standuser,scores = {jp2_standid = 7}, tag=sa_standactive] at @s run function standabilities:stands/hgreen/main
execute as @a[tag = sa_standuser, scores = {jp2_standid = 7}, nbt={SelectedItemSlot:8}, tag = !sa_standactive] run title @s actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Summon ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"Hierophant Green","color":"#1a6b25","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]

#### HG Web

execute as @a[tag = sa_standuser, scores = {jp2_standid = 7}] if score @s sa_death matches 1.. run kill @e[tag = hg_str]
execute as @e[tag = sa_hgastr] at @s run function standabilities:stands/hgreen/str_tick

##Justice
execute as @a[tag = sa_standuser,scores = {jp2_standid = 10}, tag=sa_standactive] at @s run function standabilities:stands/justice/main
execute as @a[tag = sa_standuser, scores = {jp2_standid = 10}, nbt={SelectedItemSlot:8}, tag = !sa_standactive] run title @s actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Summon ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"Justice","color":"dark_purple","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]

####Justice fog
execute at @e[tag = sa_justice_fog] run function standabilities:stands/justice/fog_particles

execute at @e[tag = sa_justice_fog] as @e[distance = ..10, tag = !sa_fog_active] run tag @s add sa_fog
execute at @e[tag = sa_justice_fog] as @e[tag = sa_fog, distance = 11..] run tag @s remove sa_fog
execute as @e[tag = sa_fog] unless entity @e[tag = sa_justice_fog] run tag @s remove sa_fog

execute as @e[tag = sa_fog] unless entity @s[scores={sa_damage = 0..}] run scoreboard players set @s sa_damage 0
execute as @e[tag = !sa_fog] run scoreboard players reset @s sa_damage

execute as @e[type = minecraft:player, tag = sa_fog] if entity @s[scores={sa_damage = 10..}] run tag @s add sa_fogged
execute as @e[type = !minecraft:player, tag = sa_fog] run tag @s add sa_fogged

execute as @e[tag = sa_fogged] run function standabilities:stands/justice/fog_effects

##Geb
execute as @a[tag = sa_standuser, scores = {jp2_standid = 11}, tag=sa_standactive] at @s run function standabilities:stands/geb/main
execute as @a[tag = sa_standuser, scores = {jp2_standid = 11}, nbt={SelectedItemSlot:8}, tag = !sa_standactive] run title @s actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Summon ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"Geb","color":"#4461c2","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]

##Lovers

execute as @a[tag = sa_standuser, scores = {jp2_standid = 12}, tag=sa_standactive] at @s run function standabilities:stands/lovers/main
execute as @a[tag = sa_standuser, scores = {jp2_standid = 12}, nbt={SelectedItemSlot:8}, tag = !sa_standactive] run title @s actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Summon ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"Lovers","color":"#eb0ec2","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]

execute as @a[tag = sa_par_active, scores = {sa_lovers_damage = 1..}] run function standabilities:stands/lovers/par_damage
execute as @e[tag = sa_par_victim] if score @s sa_death matches 1.. run tag @s remove sa_par_victim
execute as @a[tag = sa_par_active] if score @s sa_death matches 1.. run function standabilities:stands/lovers/tag_remove


execute at @e[tag = sa_par_victim] as @a[tag = sa_par_active, distance = 128..] run function standabilities:stands/lovers/tag_remove
execute as @e[tag = sa_par_victim, nbt={ActiveEffects:[{Id:10b}]}] run function standabilities:stands/lovers/regen

##Bastet

execute as @a[tag = sa_standuser,scores = {jp2_standid = 13}, tag=sa_standactive] at @s run function standabilities:stands/bastet/main
execute as @a[tag = sa_standuser, scores = {jp2_standid = 13}, nbt={SelectedItemSlot:8}, tag = !sa_standactive] run title @s actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Summon ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"Bastet","color":"#3aba91","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]

####Plate

execute as @e[tag = sa_bastet] run function standabilities:stands/bastet/plate_tick
execute as @e[tag = sa_bst_target, scores = {sa_timer_bst = 5}] at @s run function standabilities:stands/bastet/target_tick


##Achtung Baby

execute as @a[tag = sa_standuser,scores = {jp2_standid = 14}, tag=sa_standactive] at @s run function standabilities:stands/achtung/main
execute as @a[tag = sa_standuser, scores = {jp2_standid = 14}, nbt={SelectedItemSlot:8}, tag = !sa_standactive] run title @s actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Summon ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"Achtung Baby","color":"#191970","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]

##Shadow The World

execute as @a[tag = sa_standuser,scores = {jp2_standid = 15}, tag=sa_standactive] at @s run function standabilities:stands/sworld/main
execute as @a[tag = sa_standuser, scores = {jp2_standid = 15}, nbt={SelectedItemSlot:8}, tag = !sa_standactive] run title @s actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Summon ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"Shadow The World","color":"#FFDD00","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]

##Killer Queen

execute as @a if predicate standabilities:morning at @s run function standabilities:stands/kqueen/cords
execute as @a[tag = sa_kq_active] unless entity @e[tag = sa_kqbomb] run function standabilities:stands/kqueen/mine_check
execute as @e[nbt={Item:{tag:{sa_kqbomb:1b}}}, tag = !sa_kqbomb] run data merge entity @s {Item:{tag:{sa_kqbomb:0b}}}

execute as @e[tag = sa_kqbomb] at @s run function standabilities:stands/kqueen/b_tick
execute as @a[tag = sa_btd_active] run function standabilities:stands/kqueen/btd_tick

execute as @e[tag = sa_btd_main] unless entity @a[tag = sa_btd_active] run tag @s remove sa_btd_main

execute as @a[tag = sa_standuser,scores = {jp2_standid = 16}, tag=sa_standactive] at @s run function standabilities:stands/kqueen/main
execute as @a[tag = sa_standuser, scores = {jp2_standid = 16}, nbt={SelectedItemSlot:8}, tag = !sa_standactive] run title @s actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Summon ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"Killer Queen","color":"#e246f0","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]


##Ratt

execute as @a[tag = sa_standuser,scores = {jp2_standid = 17}, tag=sa_standactive] at @s run function standabilities:stands/ratt/main
execute as @a[tag = sa_standuser, scores = {jp2_standid = 17}, nbt={SelectedItemSlot:8}, tag = !sa_standactive] run title @s actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Summon ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"Ratt","color":"red","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]

## King Crimson

execute as @a[tag = sa_standuser,scores = {jp2_standid = 18}, tag=sa_standactive] at @s run function standabilities:stands/kcrimson/main
execute as @a[tag = sa_standuser, scores = {jp2_standid = 18}, nbt={SelectedItemSlot:8}, tag = !sa_standactive] run title @s actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Summon ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"King Crimson","color":"#63080f","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]

execute as @a[tag = sa_epred] at @s run function standabilities:stands/kcrimson/epred_tck

## Heavens Door
execute as @a[tag = sa_standuser,scores = {jp2_standid = 19}, tag=sa_standactive] at @s run function standabilities:stands/hdoor/main
execute as @a[tag = sa_standuser, scores = {jp2_standid = 19}, nbt={SelectedItemSlot:8}, tag = !sa_standactive] run title @s actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Summon ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"Heaven's Door","color":"#32cc41","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]

## HD Misc
execute as @a[tag = sa_standuser,scores = {jp2_standid = 19}] if score @s sa_death matches 1.. run function standabilities:stands/hdoor/del
execute as @a[tag = sa_standuser,scores = {jp2_standid = 19}] if score @s sa_damage_hd matches 50.. run function standabilities:stands/hdoor/del
execute as @e[tag = sa_hdtag] as @s[scores={sa_cool_e = ..0}] run function standabilities:stands/hdoor/tag_tck
execute as @e[tag = sa_hdctag] run function standabilities:stands/hdoor/ctag_tck

####Arrow

execute at @e[tag = sa_ratt_arrow] as @e[distance=..1] unless score @s jp2_standid matches 17 run function standabilities:stands/ratt/shell


##END

scoreboard players reset @a sa_death

scoreboard players add @e[scores={sa_timer_bst = 0..}] sa_timer_bst 1
execute as @a if score @s sa_sneak matches 1.. run tag @s add sa_sneaking
execute as @a if score @s sa_sneak matches 0 run tag @s remove sa_sneaking
scoreboard players set @a sa_sneak 0
scoreboard players remove @e[scores={sa_cool_e = 1..}] sa_cool_e 1
scoreboard players remove @a[scores={sa_cool_x = 1..}] sa_cool_x 1
scoreboard players remove @e[scores={sa_cool = 1..}] sa_cool 1
scoreboard players remove @a[scores={sa_cool_ts = 1..}] sa_cool_ts 1
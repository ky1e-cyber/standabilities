##Actionbars

title @s[nbt=!{SelectedItemSlot:8},nbt=!{SelectedItemSlot:7}, nbt=!{SelectedItemSlot:6}, nbt=!{SelectedItemSlot:5}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Geb ","color":"#4461c2","bold":true}, {"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:5}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Geb ","color":"#4461c2","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Attack ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:6}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Geb ","color":"#4461c2","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Сovert attack ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:7}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Geb ","color":"#4461c2","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Blind vibrations sense ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:8}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Withdraw ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"Geb","color":"#4461c2","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]

tag @s add sa_geb_user

##Atack

execute at @s if entity @s[nbt={SelectedItemSlot:5}, tag = !sa_stopped] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. unless score @s sa_cool_x matches 1.. as @e[tag = !sa_geb_user, distance=..3, sort=nearest, limit=1] run function standabilities:stands/geb/attack


##Vibration sense


execute if entity @s[nbt={SelectedItemSlot:7}, tag = !sa_stopped] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. run function standabilities:stands/geb/vibration_sense
execute if entity @s[tag = sa_vib_summon] run tag @s add sa_vib_sense
tag @s[tag = sa_vib_summon] remove sa_vib_summon

execute as @s[tag = sa_vib_sense] run function standabilities:stands/geb/vib_effect

execute if entity @s[tag = sa_vib_sense] as @e[type=!minecraft:player, distance=..128] at @s if block ~ ~-1 ~ #minecraft:sand run function standabilities:stands/geb/vib_spot
execute if entity @s[tag = sa_vib_sense] as @e[type=minecraft:player, distance=..128, scores = {sa_sneak = ..0}, tag = !sa_geb_user] at @s if block ~ ~-1 ~ #minecraft:sand run function standabilities:stands/geb/vib_spot

##Covert atack

execute if entity @s[nbt={SelectedItemSlot:6}, tag = !sa_stopped] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. unless score @s sa_cool matches 1.. run function standabilities:stands/geb/covert_atack

##Stand withdraw

execute if entity @s[tag=!sa_sneaking, tag = !sa_summoned, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run tag @s remove sa_vib_sense
execute if entity @s[tag=!sa_sneaking, tag = !sa_summoned, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run tag @s remove sa_standactive
execute if entity @s[tag=!sa_sneaking, tag = !sa_summoned, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run playsound minecraft:block.beacon.deactivate ambient @s ~ ~ ~ 0.5 2

tag @s remove sa_summoned
tag @s remove sa_geb_user
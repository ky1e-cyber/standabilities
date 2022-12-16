##Actionbars

title @s[nbt=!{SelectedItemSlot:7, SelectedItemSlot:8}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Achtung Baby ","color":"#191970","bold":true},{"text":"// ","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:7}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Achtung Baby ","color":"#191970","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Invisibility Cast ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:8}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Withdraw ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"Achtung Baby","color":"#191970","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]

##Invis
effect give @s minecraft:invisibility 1 0 true

##Splash

execute at @s if entity @s[nbt={SelectedItemSlot:7}, tag = !sa_stopped] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. as @e[distance = ..1.4] unless score @s jp2_standid matches 14 run function standabilities:stands/achtung/splash

##Stand withdraw

execute if entity @s[tag=!sa_sneaking, tag = !sa_summoned, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run tag @s remove sa_standactive
execute if entity @s[tag=!sa_sneaking, tag = !sa_summoned, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run playsound minecraft:block.beacon.deactivate ambient @s ~ ~ ~ 0.5 2

tag @s remove sa_summoned
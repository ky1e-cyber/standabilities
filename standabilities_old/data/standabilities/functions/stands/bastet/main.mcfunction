##Actionbars

title @s[nbt=!{SelectedItemSlot:5},nbt=!{SelectedItemSlot:7}, nbt=!{SelectedItemSlot:6}, nbt=!{SelectedItemSlot:8}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Bastet ","color":"#3aba91","bold":true},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:5}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Bastet ","color":"#3aba91","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Magnetise object ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:6}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Bastet ","color":"#3aba91","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Discard magnetise ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
execute if entity @e[tag = sa_bastet] run title @s[nbt={SelectedItemSlot:7}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Bastet ","color":"#3aba91","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Return Stand ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
execute unless entity @e[tag = sa_bastet] run title @s[nbt={SelectedItemSlot:7}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Bastet ","color":"#3aba91","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Magnetise plate ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:8}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Withdraw ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"Bastet","color":"#3aba91","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]

##Magnetise object

execute if entity @s[nbt={SelectedItemSlot:5}, tag = !sa_stopped] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. at @s if entity @e[tag = sa_bst_target, distance=..32] run function standabilities:stands/bastet/object

##Magnetic plate

execute if entity @s[nbt={SelectedItemSlot:7}, tag = !sa_stopped] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. at @s run function standabilities:stands/bastet/magnetic_plate
execute if entity @s[nbt={SelectedItemSlot:6}, tag = !sa_stopped] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. at @s if entity @e[tag = sa_bst_target] run playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 0.25 1.5
execute if entity @s[nbt={SelectedItemSlot:6}, tag = !sa_stopped] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. at @s run tag @e[tag = sa_bst_target] remove sa_bst_target

##Stand withdraw

execute if entity @s[tag=!sa_sneaking, tag = !sa_summoned, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run tag @s remove sa_standactive
execute if entity @s[tag=!sa_sneaking, tag = !sa_summoned, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run playsound minecraft:block.beacon.deactivate ambient @s ~ ~ ~ 0.5 2
tag @s remove sa_summoned
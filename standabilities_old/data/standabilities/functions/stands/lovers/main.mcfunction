##Actionbars

title @s[nbt=!{SelectedItemSlot:8}, nbt=!{SelectedItemSlot:7}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Lovers ","color":"#eb0ec2","bold":true},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:7}, tag = sa_par_active] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Lovers ","color":"#eb0ec2","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Return Stand ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:7}, tag = !sa_par_active] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Lovers ","color":"#eb0ec2","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Brain parasite ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:8}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Withdraw ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"Lovers","color":"#eb0ec2","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]

##Parasite
execute unless entity @e[tag = sa_par_victim] run tag @s remove sa_par_active
execute if entity @s[nbt={SelectedItemSlot:7}, tag = !sa_stopped] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. run function standabilities:stands/lovers/parasite

##Stand withdraw

execute if entity @s[tag=!sa_sneaking, tag = !sa_summoned, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run tag @s remove sa_standactive
execute if entity @s[tag=!sa_sneaking, tag = !sa_summoned, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run playsound minecraft:block.beacon.deactivate ambient @s ~ ~ ~ 0.5 2

tag @s remove sa_summoned
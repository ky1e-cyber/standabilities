##Actionbars

title @s[nbt=!{SelectedItemSlot:7}, nbt=!{SelectedItemSlot:8}, tag = !sa_kq_active] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Queen ","color":"#e246f0","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"First bomb ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt=!{SelectedItemSlot:7}, nbt=!{SelectedItemSlot:8}, tag = sa_kq_active] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Queen ","color":"#e246f0","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Return Bomb ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:7}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Queen ","color":"#e246f0","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Detonate ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:8}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Deactivate ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"Queen","color":"#e246f0","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]


##Return

execute if entity @s[nbt=!{SelectedItemSlot:7}, nbt=!{SelectedItemSlot:8}, tag = sa_kq_active] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. run function standabilities:stands/kqueen/return

##First bomb
execute if entity @s[nbt=!{SelectedItemSlot:7}, nbt=!{SelectedItemSlot:8}, tag = !sa_kq_active] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. at @s positioned ^ ^ ^1 run function standabilities:stands/kqueen/fbomb

## Detonate

execute if entity @s[nbt={SelectedItemSlot:7}, nbt = !{SelectedItem:{}}] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. at @s run function standabilities:stands/kqueen/detonate


##Stand withdraw

execute if entity @s[tag=!sa_sneaking, tag = !sa_summoned, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run tag @s remove sa_standactive
execute if entity @s[tag=!sa_sneaking, tag = !sa_summoned, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run playsound minecraft:block.beacon.deactivate ambient @s ~ ~ ~ 0.5 2

tag @s remove sa_summoned
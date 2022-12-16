##Actionbars

title @s[nbt=!{SelectedItemSlot:7}, nbt=!{SelectedItemSlot:8}, scores = {sa_cool_x = ..0}, tag = !sa_epred, tag = !sa_timeskip] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Crimson ","color":"#63080f","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Erase time ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt=!{SelectedItemSlot:7}, nbt=!{SelectedItemSlot:8}, scores = {sa_cool_x = 1..}, tag = !sa_epred, tag = !sa_timeskip] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Crimson ","color":"gray","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Erase time ","color":"gray","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:7}, scores = {sa_cool_x = ..0}, tag = !sa_epred, tag = !sa_timeskip] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Crimson ","color":"#63080f","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Erase attack ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:7}, scores = {sa_cool_x = 1..}, tag = !sa_epred, tag = !sa_timeskip] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Crimson ","color":"gray","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Erase attack ","color":"gray","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt=!{SelectedItemSlot:8}, tag = sa_epred] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Crimson ","color":"#63080f","bold":true},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt=!{SelectedItemSlot:8}, tag = sa_timeskip] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Crimson ","color":"#63080f","bold":true},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:8}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Deactivate ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"Crimson","color":"#63080f","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]

## Erase attack
execute if entity @s[nbt={SelectedItemSlot:7}, tag = !sa_epred, tag = !sa_timeskip, scores = {sa_cool_x = ..0}] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. at @s run function standabilities:stands/kcrimson/eattack

##Time Erase
execute if entity @s[nbt=!{SelectedItemSlot:7}, nbt=!{SelectedItemSlot:8}, tag = !sa_epred, tag = !sa_timeskip, scores = {sa_cool_x = ..0}] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. at @s run function standabilities:stands/kcrimson/erase

##Stand withdraw

execute if entity @s[tag=!sa_sneaking, tag = !sa_summoned, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run tag @s remove sa_standactive
execute if entity @s[tag=!sa_sneaking, tag = !sa_summoned, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run playsound minecraft:block.beacon.deactivate ambient @s ~ ~ ~ 0.5 2

tag @s remove sa_summoned
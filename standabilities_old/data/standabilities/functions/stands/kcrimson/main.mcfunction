##Actionbars

title @s[nbt=!{SelectedItemSlot:6}, nbt=!{SelectedItemSlot:7}, nbt=!{SelectedItemSlot:8}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"King Crimson ","color":"#63080f","bold":true},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:7}, scores = {sa_cool_x = ..0}, tag = !sa_epred, tag = !sa_timeskip] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"King Crimson ","color":"#63080f","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Erase time ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:7}, scores = {sa_cool_x = 1..}, tag = !sa_epred, tag = !sa_timeskip] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"King Crimson ","color":"gray","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Erase time ","color":"gray","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:6}, scores = {sa_cool_x = ..0}, tag = !sa_epred, tag = !sa_timeskip] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"King Crimson ","color":"#63080f","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Erase attack ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:6}, scores = {sa_cool_x = 1..}, tag = !sa_epred, tag = !sa_timeskip] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"King Crimson ","color":"gray","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Erase attack ","color":"gray","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt=!{SelectedItemSlot:8}, tag = sa_epred] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"King Crimson ","color":"#63080f","bold":true},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt=!{SelectedItemSlot:8}, tag = sa_timeskip] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"King Crimson ","color":"#63080f","bold":true},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:5}, tag = !sa_epred, tag = !sa_timeskip] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"King Crimson ","color":"#63080f","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Barrage ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:8}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Withdraw ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"King Crimson","color":"#63080f","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]

## Model

execute as @s[tag = sa_summoned] at @s run function standabilities:stands/kcrimson/model
execute at @s as @e[tag = sa_kcmodel] unless entity @s[distance = 1] rotated ~ 0 run tp @s ^0.4 ^0.5 ^-0.8 ~-120 ~

execute at @s as @e[tag = sa_kcbarrage] unless entity @s[distance = 0.64] rotated ~ 0 run tp @s ^ ^0.5 ^-0.7 ~ ~

##Barrage

execute as @s[nbt={SelectedItemSlot:5}, tag = !sa_kc_barrage, tag = !sa_epred, tag = !sa_timeskip] if score @s sa_sneak matches 1.. run function standabilities:stands/kcrimson/b_init
execute if score @s[tag = sa_kc_barrage] sa_sneak matches 0 run function standabilities:stands/kcrimson/b_stop
execute as @s[tag = sa_kc_barrage] at @s positioned ~ ~1.12 ~ positioned ^ ^ ^0.8 run function standabilities:stands/kcrimson/barrage

## Erase attack

execute if entity @s[nbt={SelectedItemSlot:6}, tag = !sa_epred, tag = !sa_timeskip, scores = {sa_cool_x = ..0}] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. at @s run function standabilities:stands/kcrimson/eattack


##Time Erase
execute if entity @s[nbt={SelectedItemSlot:7}, tag = !sa_epred, tag = !sa_timeskip, scores = {sa_cool_x = ..0}] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. at @s run function standabilities:stands/kcrimson/erase


##Stand withdraw

execute if entity @s[tag=!sa_sneaking, tag = !sa_summoned, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run tag @s remove sa_standactive
execute if entity @s[tag=!sa_sneaking, tag = !sa_summoned, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run playsound minecraft:block.beacon.deactivate ambient @s ~ ~ ~ 0.5 2

execute if entity @s[tag = !sa_standactive] at @s as @e[tag = sa_kcmodel] run tp ^ ^ ^
execute if entity @s[tag = !sa_standactive] run kill @e[tag = sa_kcmodel]

tag @s remove sa_summoned
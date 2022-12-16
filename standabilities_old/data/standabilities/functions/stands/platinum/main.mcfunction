##Actionbars

title @s[nbt=!{SelectedItemSlot:6}, nbt=!{SelectedItemSlot:7}, nbt=!{SelectedItemSlot:8}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Star Platinum ","color":"#6b03a4","bold":true},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:7}, tag = !sa_stopper,  scores = {sa_cool_ts = ..0}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Star Platinum ","color":"#6b03a4","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Time Stop ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:7}, tag = !sa_stopper, scores = {sa_cool_ts = 1..}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Star Platinum ","color":"gray","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Time Stop ","color":"gray","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:7}, tag = sa_stopper] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Star Platinum ","color":"#6b03a4","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Unfreeze Time ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:6}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Star Platinum ","color":"#6b03a4","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"ORA ORA ORA! ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:8}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Withdraw ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"Star Platinum","color":"#6b03a4","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]

## Model

execute as @s[tag = sa_summoned] at @s run function standabilities:stands/platinum/model
execute at @s as @e[tag = sa_pmodel] unless entity @s[distance = 0.91] rotated ~ 0 run tp @s ^0.3 ^0.5 ^-0.7 ~ ~

execute at @s as @e[tag = sa_pbarrage] unless entity @s[distance = 0.64] rotated ~ 0 run tp @s ^ ^0.5 ^-0.7 ~ ~

##Barrage

execute as @s[nbt={SelectedItemSlot:6}, tag = !sa_plat_barrage] if score @s sa_sneak matches 1.. run function standabilities:stands/platinum/b_init
execute if score @s[tag = sa_plat_barrage] sa_sneak matches 0 run function standabilities:stands/platinum/b_stop
execute as @s[tag = sa_plat_barrage] at @s positioned ~ ~1.12 ~ positioned ^ ^ ^0.8 run function standabilities:stands/platinum/barrage


##Time Stop
execute if entity @s[nbt={SelectedItemSlot:7}, scores = {sa_cool_ts = ..0}] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. run function standabilities:stands/timestop/main
execute if entity @e[tag = sa_stopper, distance = 0.1..128] if score @s sa_timer_ts matches 21.. run scoreboard players set @s sa_timer_ts 20

tag @s[tag = sa_stopping] remove sa_stopping


##Stand withdraw

execute if entity @s[tag=!sa_sneaking, tag = !sa_summoned, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run tag @s remove sa_standactive
execute if entity @s[tag=!sa_sneaking, tag = !sa_summoned, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run playsound minecraft:block.beacon.deactivate ambient @s ~ ~ ~ 0.5 2

execute if entity @s[tag = !sa_standactive] at @s as @e[tag = sa_pmodel] run tp ^ ^ ^
execute if entity @s[tag = !sa_standactive] run kill @e[tag = sa_pmodel]

tag @s remove sa_summoned
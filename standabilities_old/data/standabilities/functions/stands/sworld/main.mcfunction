##Actionbars

title @s[nbt=!{SelectedItemSlot:6}, nbt=!{SelectedItemSlot:7}, nbt=!{SelectedItemSlot:8}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Shadow The World ","color":"#FFDD00","bold":true},{"text":"// ","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:6}, tag = !sa_stopper,  scores = {sa_cool_ts = ..0}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Shadow The World ","color":"#FFDD00","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Time Stop ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:6}, tag = !sa_stopper, scores = {sa_cool_ts = 1..}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Shadow The World ","color":"gray","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Time Stop ","color":"gray","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:6}, tag = sa_stopper] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Shadow The World ","color":"#FFDD00","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Unfreeze Time ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:8}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Withdraw ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"Shadow The World","color":"#FFDD00","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]
title @s[nbt = {SelectedItemSlot:7}, scores = {sa_cool_ts = 1..}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Shadow The World ","color":"gray","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Warp ","color":"gray","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt = {SelectedItemSlot:7}, scores = {sa_cool_ts = ..0}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Shadow The World ","color":"#FFDD00","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Warp ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]

##Time Stop
execute if entity @s[nbt={SelectedItemSlot:6}, scores = {sa_cool_ts = ..0}] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. run function standabilities:stands/timestop/main
execute if entity @s[scores = {sa_timer_ts = 41..}] run scoreboard players set @s sa_timer_ts 40
execute if entity @e[tag = sa_stopper, distance = 0.1..128] if score @s sa_timer_ts matches 21.. run scoreboard players set @s sa_timer_ts 20

tag @s[tag = sa_stopping] remove sa_stopping

##Warp

execute if entity @s[nbt={SelectedItemSlot:7}, scores = {sa_cool_ts = ..0}] unless entity @s[tag=sa_sneaking, tag = sa_stopper] if score @s sa_sneak matches 1.. run function standabilities:stands/sworld/warp

##Stand withdraw

execute if entity @s[tag=!sa_sneaking, tag = !sa_summoned, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run tag @s remove sa_standactive
execute if entity @s[tag=!sa_sneaking, tag = !sa_summoned, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run playsound minecraft:block.beacon.deactivate ambient @s ~ ~ ~ 0.5 2

tag @s remove sa_summoned
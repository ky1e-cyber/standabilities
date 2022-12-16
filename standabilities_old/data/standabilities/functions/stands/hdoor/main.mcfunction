##Actionbars

title @s[nbt=!{SelectedItemSlot:8}, nbt=!{SelectedItemSlot:7}, nbt=!{SelectedItemSlot:6}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Heaven's Door ","color":"#32cc41","bold":true}, {"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:7}, scores={sa_hd_eid = 0}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Heaven's Door ","color":"#32cc41","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Write ","color":"#FFD769","bold":false},{"text":"Self-hurt ","color":"#740900","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:7}, scores={sa_hd_eid = 1}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Heaven's Door ","color":"#32cc41","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Write ","color":"#FFD769","bold":false},{"text":"Self-immolation ","color":"#ee820d","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:7}, scores={sa_hd_eid = 2}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Heaven's Door ","color":"#32cc41","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Write ","color":"#FFD769","bold":false},{"text":"Can't move ","color":"#1f2816","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:7}, scores={sa_hd_eid = 3}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Heaven's Door ","color":"#32cc41","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Write ","color":"#FFD769","bold":false},{"text":"Reject Gravity!! ","color":"#1f286e","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:7}, scores={sa_hd_eid = 4}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Heaven's Door ","color":"#32cc41","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Write ","color":"#FFD769","bold":false},{"text":"Do not feel weight at all. ","color":"#302c30","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:7}, scores={sa_hd_eid = 5}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Heaven's Door ","color":"#32cc41","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Write ","color":"#FFD769","bold":false},{"text":"Fatigue. ","color":"#303416","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:7}, scores={sa_hd_eid = 6}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Heaven's Door ","color":"#32cc41","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Write ","color":"#FFD769","bold":false},{"text":"Shaky Hand! ","color":"#e4edf1","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:7}, scores={sa_hd_eid = 7}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Heaven's Door ","color":"#32cc41","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Clear Commands ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:6}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Heaven's Door ","color":"#32cc41","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Change command ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:8}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Withdraw ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"Heaven's Door","color":"#32cc41","bold":true},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]


## Misc
execute unless entity @e[tag = sa_hdctag] run tag @s remove sa_hdsend

## Model

execute as @s[tag = sa_summoned] at @s run function standabilities:stands/hdoor/model
execute as @s[tag = !sa_hdsend] at @s as @e[tag = sa_hdmodel] unless entity @s[distance = 1.17] rotated ~ 0 run tp @s ^-0.5 ^0.8 ^-0.7 ~ ~ 


##Write

execute if entity @s[nbt={SelectedItemSlot:7}, tag = !sa_stopped, tag = !sa_hdsend] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. at @s run function standabilities:stands/hdoor/send

## Change

execute if entity @s[nbt={SelectedItemSlot:6}] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. at @s run function standabilities:stands/hdoor/change

##Stand withdraw

execute if entity @s[tag=!sa_sneaking, tag = !sa_summoned, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run tag @s remove sa_standactive
execute if entity @s[tag=!sa_sneaking, tag = !sa_summoned, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run playsound minecraft:block.beacon.deactivate ambient @s ~ ~ ~ 0.5 2

execute if entity @s[tag = !sa_standactive] at @s as @e[tag = sa_hdmodel] run tp ^ ^ ^
execute if entity @s[tag = !sa_standactive] run kill @e[tag = sa_hdmodel]

tag @s remove sa_summoned
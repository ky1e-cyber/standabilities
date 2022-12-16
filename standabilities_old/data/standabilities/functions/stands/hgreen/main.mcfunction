##Actionbars

title @s[nbt=!{SelectedItemSlot:8}, nbt=!{SelectedItemSlot:7}, nbt=!{SelectedItemSlot:6}, nbt=!{SelectedItemSlot:5},  nbt=!{SelectedItemSlot:4}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Hierophant Green ","color":"#1a6b25","bold":true}, {"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:4}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Hierophant Green ","color":"#1a6b25","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Emerald Splash ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:7}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Hierophant Green ","color":"#1a6b25","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Barrier Node ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:5}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Hierophant Green ","color":"#1a6b25","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Return Barrier ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:6}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Hierophant Green ","color":"#1a6b25","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Activate Barrier ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:8}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Withdraw ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"Hierophant Green","color":"#1a6b25","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]

## Model

execute as @s[tag = sa_summoned] at @s run function standabilities:stands/hgreen/model
execute at @s as @e[tag = sa_hgmodel] unless entity @s[distance = 0.86] rotated ~ 0 run tp @s ^ ^0.5 ^-0.7 ~ ~ 


##Splash

execute if entity @s[nbt={SelectedItemSlot:4}, tag = !sa_stopped] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. unless score @s sa_cool_x matches 1.. at @s run function standabilities:stands/hgreen/raycast/raycast

##Web
execute if entity @s[nbt={SelectedItemSlot:7}] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. unless score @s sa_cool_x matches 1.. if score @s sa_hg_webs matches ..12 at @s run function standabilities:stands/hgreen/web
execute if entity @s[nbt={SelectedItemSlot:5}] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. run kill @e[tag = sa_hgstr]

execute if entity @s[nbt={SelectedItemSlot:6}] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. as @e[tag = sa_hgstr] at @s run function standabilities:stands/hgreen/act





##Stand withdraw

execute if entity @s[tag=!sa_sneaking, tag = !sa_summoned, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run tag @s remove sa_standactive
execute if entity @s[tag=!sa_sneaking, tag = !sa_summoned, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run playsound minecraft:block.beacon.deactivate ambient @s ~ ~ ~ 0.5 2

execute if entity @s[tag = !sa_standactive] at @s as @e[tag = sa_hgmodel] run tp ^ ^ ^
execute if entity @s[tag = !sa_standactive] run kill @e[tag = sa_hgmodel]

tag @s remove sa_summoned
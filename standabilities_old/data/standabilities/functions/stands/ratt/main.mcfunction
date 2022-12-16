##Actionbars

title @s[nbt=!{SelectedItemSlot:8}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Ratt ","color":"red","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Shoot ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]

title @s[nbt={SelectedItemSlot:8}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Withdraw ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"Ratt","color":"red","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]

## Model

execute as @s[tag = sa_summoned] at @s run function standabilities:stands/ratt/model
execute at @s as @e[tag = sa_rattmodel] unless entity @s[distance= 1.1..1.2] run tp ^-0.4 ^0.6 ^-1


##Shoot

execute if entity @s[nbt=!{SelectedItemSlot:8}, tag = !sa_stopped] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. unless score @s sa_cool_x matches 1.. at @s positioned ^ ^1.62 ^1 run function standabilities:stands/ratt/shoot



##Stand withdraw

execute if entity @s[tag=!sa_sneaking, tag = !sa_summoned, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run tag @s remove sa_standactive
execute if entity @s[tag=!sa_sneaking, tag = !sa_summoned, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run playsound minecraft:block.beacon.deactivate ambient @s ~ ~ ~ 0.5 2

execute if entity @s[tag = !sa_standactive] at @s as @e[tag = sa_rattmodel] run tp ^ ^ ^
execute if entity @s[tag = !sa_standactive] run kill @e[tag = sa_rattmodel]

tag @s remove sa_summoned
##Actionbars

title @s[nbt=!{SelectedItemSlot:5}, nbt=!{SelectedItemSlot:6}, nbt=!{SelectedItemSlot:7}, nbt=!{SelectedItemSlot:8}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Killer Queen ","color":"#e246f0","bold":true},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:4}, tag = !sa_btd_active] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Killer Queen ","color":"#e246f0","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Barrage ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:4}, tag = sa_btd_active] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Killer Queen ","color":"gray","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Barrage ","color":"gray","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:5}, tag = !sa_kq_active, tag = !sa_btd_active] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Killer Queen ","color":"#e246f0","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"First bomb ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:5}, tag = sa_kq_active, tag = !sa_btd_active] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Killer Queen ","color":"#e246f0","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Return Bomb ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:5}, tag = sa_btd_active] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Killer Queen ","color":"#e246f0","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Return Bomb ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]

title @s[nbt={SelectedItemSlot:6}, tag = !sa_btd_active] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Killer Queen ","color":"#e246f0","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Bites the Dust","bold":true,"underlined":true,"color":"light_purple"},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:6}, tag = sa_btd_active] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Killer Queen ","color":"gray","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Bites the Dust","bold":true,"underlined":true,"color":"gray"},{"text":"//","color":"dark_gray","bold":true}]


title @s[nbt={SelectedItemSlot:7}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Killer Queen ","color":"#e246f0","bold":true},{"text":"// ","color":"dark_gray","bold":true},{"text":"Detonate ","color":"#FFD769","bold":false},{"text":"//","color":"dark_gray","bold":true}]
title @s[nbt={SelectedItemSlot:8}] actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Withdraw ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"Killer Queen","color":"#e246f0","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]


## Model

execute as @s[tag = sa_summoned] at @s run function standabilities:stands/kqueen/model
execute at @s as @e[tag = sa_kqmodel] unless entity @s[distance= 1.2] rotated ~ 0 run tp @s ^-0.4 ^0.6 ^-1 ~ ~

execute at @s as @e[tag = sa_kqbarrage] unless entity @s[distance = 0.64] rotated ~ 0 run tp @s ^ ^0.5 ^-0.7 ~ ~

##Barrage

execute as @s[nbt={SelectedItemSlot:4}, tag = !sa_btd_active, tag = !sa_kq_barrage] if score @s sa_sneak matches 1.. run function standabilities:stands/kqueen/b_init
execute if score @s[tag = sa_kq_barrage] sa_sneak matches 0 run function standabilities:stands/kqueen/b_stop
execute as @s[tag = sa_kq_barrage] at @s positioned ~ ~1.12 ~ positioned ^ ^ ^0.8 run function standabilities:stands/kqueen/barrage

##Return

execute if entity @s[nbt={SelectedItemSlot:5}, tag = sa_kq_active] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. run function standabilities:stands/kqueen/return
execute if entity @s[nbt={SelectedItemSlot:5}, tag = sa_btd_active] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. run function standabilities:stands/kqueen/return

##First bomb
execute if entity @s[nbt={SelectedItemSlot:5}, tag = !sa_kq_active, tag = !sa_btd_active] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. at @s positioned ^ ^ ^1 run function standabilities:stands/kqueen/fbomb

##BITE ZA DUST

execute if entity @s[nbt={SelectedItemSlot:6}, tag = !sa_kq_active, tag = !sa_btd_active] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. at @s positioned ^ ^ ^1 run function standabilities:stands/kqueen/btd

## Detonate

execute if entity @s[nbt={SelectedItemSlot:7}, nbt = !{SelectedItem:{}}] unless entity @s[tag=sa_sneaking] if score @s sa_sneak matches 1.. at @s run function standabilities:stands/kqueen/detonate


##Stand withdraw

execute if entity @s[tag=!sa_sneaking, tag = !sa_summoned, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run tag @s remove sa_standactive
execute if entity @s[tag=!sa_sneaking, tag = !sa_summoned, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run playsound minecraft:block.beacon.deactivate ambient @s ~ ~ ~ 0.5 2

execute if entity @s[tag = !sa_standactive] at @s as @e[tag = sa_kqmodel] run tp ^ ^ ^
execute if entity @s[tag = !sa_standactive] run kill @e[tag = sa_kqmodel]

tag @s remove sa_summoned
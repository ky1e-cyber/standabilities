##STAND ABILITIES

execute as @a[tag = sa_standuser,tag=!sa_sneaking, tag = !sa_standactive, scores={sa_sneak=1..},nbt={SelectedItemSlot:8}] at @s run function standabilities:stands/summon
execute as @a[tag= sa_standactive] at @s if entity @s[tag = !sa_standuser] run tag @s remove sa_standactive

##Corpse

execute as @a[nbt={Inventory:[{Slot:-106b,tag:{sa:{Corpse:1b}}}]}] at @s run function standabilities:use_corpse

## Time Stop

execute as @a[tag = sa_stopper] run function standabilities:stands/timestop/tick_stp
execute as @e[tag = sa_stopped] run function standabilities:stands/timestop/tick_stped

## Actionbar
execute as @a[tag = sa_standuser, tag = !sa_standactive, nbt = !{SelectedItemSlot:8}] run title @s actionbar ""

## The World

execute as @a[tag = sa_standuser,scores = {sa_standid = 1}, tag=sa_standactive] at @s run function standabilities:stands/world/main
execute as @a[tag = sa_standuser, scores = {sa_standid = 1}, nbt={SelectedItemSlot:8}, tag = !sa_standactive] run title @s actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Activate ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"The World","color":"#5c117b","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]


## Hierephant
execute as @a[tag = sa_standuser,scores = {sa_standid = 2}] store result score @s sa_hg_webs run execute if entity @e[tag = sa_hgnode, distance = ..20]

execute as @a[tag = sa_standuser,scores = {sa_standid = 2}, tag = sa_standactive] at @s run function standabilities:stands/hgreen/main
execute as @a[tag = sa_standuser, scores = {sa_standid = 2}, nbt = {SelectedItemSlot:8}, tag = !sa_standactive] run title @s actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Activate ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"Hierophant","color":"#1a6b25","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]

#### HG Web

execute as @a[tag = sa_standuser, scores = {sa_standid = 2}] if score @s sa_death matches 1.. run kill @e[tag = hg_str]
execute as @e[tag = sa_hgastr] at @s run function standabilities:stands/hgreen/str_tick

## Achtung

execute as @a[tag = sa_standuser,scores = {sa_standid = 3}, tag=sa_standactive] at @s run function standabilities:stands/achtung/main
execute as @a[tag = sa_standuser, scores = {sa_standid = 3}, nbt={SelectedItemSlot:8}, tag = !sa_standactive] run title @s actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Activate ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"Achtung","color":"#191970","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]


## Queen

execute as @a[tag = sa_kq_active] unless entity @e[tag = sa_kqbomb] run function standabilities:stands/kqueen/mine_check
execute as @e[nbt={Item:{tag:{sa_kqbomb:1b}}}, tag = !sa_kqbomb] run data merge entity @s {Item:{tag:{sa_kqbomb:0b}}}

execute as @e[tag = sa_kqbomb] at @s run function standabilities:stands/kqueen/b_tick

execute as @a[tag = sa_standuser,scores = {sa_standid = 4}, tag=sa_standactive] at @s run function standabilities:stands/kqueen/main
execute as @a[tag = sa_standuser, scores = {sa_standid = 4}, nbt={SelectedItemSlot:8}, tag = !sa_standactive] run title @s actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Activate ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"Queen","color":"#e246f0","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]


## Crimson

execute as @a[tag = sa_standuser,scores = {sa_standid = 5}, tag=sa_standactive] at @s run function standabilities:stands/kcrimson/main
execute as @a[tag = sa_standuser, scores = {sa_standid = 5}, nbt={SelectedItemSlot:8}, tag = !sa_standactive] run title @s actionbar [{"text":"// ","color":"dark_gray","bold":true},{"text":"Activate ","color":"#8EA8BF","bold":false},{"text":"[","color":"#BF8F2E","bold":true,"italic":false},{"text":"Crimson","color":"#63080f","bold":true,"italic":false},{"text":"] ","color":"#BF8F2E","bold":true,"italic":false},{"text":"//","color":"dark_gray","bold":true,"italic":false}]

execute as @a[tag = sa_epred] at @s run function standabilities:stands/kcrimson/epred_tck

##END

scoreboard players reset @a sa_death

scoreboard players add @e[scores={sa_timer_bst = 0..}] sa_timer_bst 1
execute as @a if score @s sa_sneak matches 1.. run tag @s add sa_sneaking
execute as @a if score @s sa_sneak matches 0 run tag @s remove sa_sneaking
scoreboard players set @a sa_sneak 0
scoreboard players remove @e[scores={sa_cool_e = 1..}] sa_cool_e 1
scoreboard players remove @a[scores={sa_cool_x = 1..}] sa_cool_x 1
scoreboard players remove @e[scores={sa_cool = 1..}] sa_cool 1
scoreboard players remove @a[scores={sa_cool_ts = 1..}] sa_cool_ts 1
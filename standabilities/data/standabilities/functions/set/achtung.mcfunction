tellraw @s[scores = {sa_standid = 1..}] ["",{"text":"You already have "},{"text":"Stand Ability","bold":true,"color":"yellow"}]
execute if entity @s[tag = !sa_standuser] run scoreboard players set @s sa_standid 3
execute if entity @s[tag = !sa_standuser] run scoreboard players add sa sa_heapid 1
execute if entity @s[tag = !sa_standuser] run scoreboard players set @s sa_userid 0
execute if entity @s[tag = !sa_standuser] store result score @s sa_userid run scoreboard players get sa sa_idheap
execute if entity @s[tag = !sa_standuser] run tag @s add sa_standuser
tellraw @s[tag = sa_standuser] ["",{"text":"You already have "},{"text":"Stand Ability","bold":true,"color":"yellow"}]
execute if entity @s[tag = !sa_standuser] run scoreboard players set @s sa_standid 1
execute if entity @s[tag = !sa_standuser] run scoreboard players set @s sa_cool_ts 0
execute if entity @s[tag = !sa_standuser] run tag @s add sa_standuser
tellraw @s[scores = {sa_standid = 1..}] ["",{"text":"You already have "},{"text":"Stand","bold":true,"color":"yellow"}]
execute if entity @s[tag = !sa_standuser] run scoreboard players set @s sa_standid 5
execute if entity @s[tag = !sa_standuser] run scoreboard players set @s sa_cool_x 5
execute if entity @s[tag = !sa_standuser] run tag @s add sa_standuser

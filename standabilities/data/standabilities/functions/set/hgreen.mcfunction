tellraw @s[tag = sa_standuser] ["",{"text":"You already have "},{"text":"Stand","bold":true,"color":"yellow"}]
execute if entity @s[tag = !sa_standuser] run scoreboard players set @s sa_standid 2
execute if entity @s[tag = !sa_standuser] run scoreboard players set @s sa_hg_webs 0
execute if entity @s[tag = !sa_standuser] run scoreboard players set @s sa_cool_x 0
execute if entity @s[tag = !sa_standuser] run tag @s add sa_standuser
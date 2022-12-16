tellraw @s[scores = {jp2_standid = 1..}] ["",{"text":"You already have "},{"text":"Stand","bold":true,"color":"yellow"}]
execute unless score sa sa_exist_hg matches 1 if entity @s[tag = !sa_standuser, tag = !jp2_standuser] run scoreboard players set @s jp2_standid 7
execute unless score sa sa_exist_hg matches 1 if entity @s[tag = !sa_standuser, tag = !jp2_standuser] run tag @s add sa_standuser
execute if score @s jp2_standid matches 7 run scoreboard players set sa sa_exist_hg 1

scoreboard players set @s sa_hg_webs 0
scoreboard players set @s sa_cool_x 0
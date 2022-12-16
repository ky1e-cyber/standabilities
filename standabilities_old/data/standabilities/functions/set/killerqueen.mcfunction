tellraw @s[scores = {jp2_standid = 1..}] ["",{"text":"You already have "},{"text":"Stand","bold":true,"color":"yellow"}]
execute unless score sa sa_exist_kq matches 1 if entity @s[tag = !sa_standuser, tag = !jp2_standuser] run scoreboard players set @s jp2_standid 16
execute unless score sa sa_exist_kq matches 1 if entity @s[tag = !sa_standuser, tag = !jp2_standuser] run tag @s add sa_standuser
execute if score @s jp2_standid matches 16 run scoreboard players set sa sa_exist_kq 1
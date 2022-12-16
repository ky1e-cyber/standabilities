tellraw @s[tag = !sa_standuser, tag = !jp2_standuser] ["",{"text":"You don't have "},{"text":"Stand","color":"yellow"}]
tellraw @s[tag = sa_standuser] ["",{"text":"Stand","color":"yellow"},{"text":" deleted"}]
tellraw @s[tag = jp2_standuser] ["",{"text":"Stand","color":"yellow"},{"text":" deleted"}]

scoreboard players operation sa sa_exist_sum -= @s jp2_standid

execute if score @s jp2_standid matches 6 run scoreboard players reset sa sa_exist_hp
execute if score @s jp2_standid matches 7 run scoreboard players reset sa sa_exist_hg
execute if score @s jp2_standid matches 8 run scoreboard players reset sa sa_exist_plat
execute if score @s jp2_standid matches 9 run scoreboard players reset sa sa_exist_world
execute if score @s jp2_standid matches 10 run scoreboard players reset sa sa_exist_justice
execute if score @s jp2_standid matches 11 run scoreboard players reset sa sa_exist_geb
execute if score @s jp2_standid matches 12 run scoreboard players reset sa sa_exist_lovers
execute if score @s jp2_standid matches 13 run scoreboard players reset sa sa_exist_bastet
execute if score @s jp2_standid matches 14 run scoreboard players reset sa sa_exist_achtung
execute if score @s jp2_standid matches 15 run scoreboard players reset sa sa_exist_sworld
execute if score @s jp2_standid matches 16 run scoreboard players reset sa sa_exist_kq
execute if score @s jp2_standid matches 17 run scoreboard players reset sa sa_exist_ratt
execute if score @s jp2_standid matches 18 run scoreboard players reset sa sa_exist_kc
execute if score @s jp2_standid matches 19 run scoreboard players reset sa sa_exist_hd
scoreboard players reset @s jp2_standid
tag @s remove sa_standuser 
tag @s remove jp2_standuser
tellraw @s[tag = !sa_standuser] ["",{"text":"You don't have "},{"text":"Stand Ability","color":"yellow"}]
tellraw @s[tag = sa_standuser] ["",{"text":"Stand Ability","color":"yellow"},{"text":" deleted"}]

scoreboard players reset @s sa_standid
tag @s remove sa_standuser
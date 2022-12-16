execute at @s as @e[tag = sa_hdmodel] unless entity @s[distance = 1.17] rotated ~180 0 run tp @s ^-0.5 ^0.8 ^-0.7 ~ ~
execute at @s run particle minecraft:enchant ~ ~1 ~ 0.2 0.2 0.2 3 5 force
execute if score @p[tag = sa_hdsend] sa_cool_x matches ..0 run tag @s remove sa_hdctag
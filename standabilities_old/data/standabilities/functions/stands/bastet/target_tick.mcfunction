execute if score @s sa_death matches 1.. run tag @s remove sa_bst_target

execute if score @p[tag = sa_bst_active] sa_death matches 1.. run tag @s remove sa_bst_target

execute at @s if entity @p[tag = sa_bst_active, distance = 56..] run tag @s remove sa_bst_target

execute if entity @e[tag = sa_bst_target, distance=0.1..] facing entity @e[tag = sa_bst_target, distance=0.1.., sort=nearest, limit=1] feet run summon minecraft:armor_stand ^ ^ ^0.4 {Marker:1b, Invisible:1b, Tags:["sa_bst_tp"]}
execute as @s[tag = !sa_stopped] if entity @e[tag = sa_bst_tp] at @e[tag = sa_bst_tp, sort=nearest, limit=1] if block ~ ~ ~ #standabilities:main/voids run tp @s ~ ~ ~
kill @e[tag = sa_bst_tp, sort=nearest, limit=1]

scoreboard players set @s sa_timer_bst 0
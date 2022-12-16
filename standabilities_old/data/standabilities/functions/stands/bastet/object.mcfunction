execute positioned as @s positioned ~ ~1.62 ~ rotated as @s positioned ^ ^ ^1 run tag @e[type=!minecraft:player, distance=..2.5, limit=3] add sa_bst_obj

execute at @e[tag=sa_bst_obj] run particle minecraft:witch ~ ~ ~ 1 1 1 0 10
execute at @e[tag=sa_bst_obj] run playsound minecraft:entity.elder_guardian.curse ambient @a[distance=..5] ~ ~ ~ 0.2 2

execute as @e[tag=sa_bst_obj] store result score @s sa_x1 run data get entity @s Pos[0] 1000
execute as @e[tag=sa_bst_obj] store result score @s sa_y1 run data get entity @s Pos[1] 1000
execute as @e[tag=sa_bst_obj] store result score @s sa_z1 run data get entity @s Pos[2] 1000

execute as @e[tag = sa_bst_obj] positioned as @s facing entity @e[tag = sa_bst_target, sort=nearest, limit=1] eyes run tp ^ ^ ^0.1

execute as @e[tag=sa_bst_obj] store result score @s sa_x2 run data get entity @s Pos[0] 1000
execute as @e[tag=sa_bst_obj] store result score @s sa_y2 run data get entity @s Pos[1] 1000
execute as @e[tag=sa_bst_obj] store result score @s sa_z2 run data get entity @s Pos[2] 1000

execute as @e[tag = sa_bst_obj] store result entity @s Motion[0] double 0.01 run scoreboard players operation @s sa_x2 -= @s sa_x1
execute as @e[tag = sa_bst_obj] store result entity @s Motion[1] double 0.01 run scoreboard players operation @s sa_y2 -= @s sa_y1
execute as @e[tag = sa_bst_obj] store result entity @s Motion[2] double 0.01 run scoreboard players operation @s sa_z2 -= @s sa_z1

tag @e[tag = sa_bst_obj, sort = nearest, limit = 3] remove sa_bst_obj 
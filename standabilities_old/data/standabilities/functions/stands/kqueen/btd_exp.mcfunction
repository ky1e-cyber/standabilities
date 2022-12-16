tag @a[tag = sa_btd_exp] remove sa_btd_exp

effect give @s minecraft:blindness 3 0 true
effect give @s minecraft:regeneration 2 5 true
effect give @s minecraft:absorption 2 5 true
effect give @s minecraft:slowness 2 128 true

execute as @s[tag = !sa_btd_active] run tag @s add sa_btd_exp
execute store result score sa sa_btd_time run time query daytime
time set 0

execute store result score @s sa_btd_id run data get entity @s UUID[0]
execute as @e[tag = sa_spawnmarker] positioned as @s run function standabilities:stands/kqueen/tp
execute as @a at @s run playsound minecraft:block.respawn_anchor.set_spawn player @s ~ ~ ~ 2 1
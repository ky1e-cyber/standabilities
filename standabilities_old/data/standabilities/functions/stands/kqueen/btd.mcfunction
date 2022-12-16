tag @s add sa_kq_plant
scoreboard players set @s sa_death_kq 0
execute as @e[type=!#standabilities:main/nonliving, tag = !sa_kq_plant, distance=..1, sort=nearest, limit=1] run tag @s add sa_btd_main
execute as @e[tag=sa_btd_main, type=!minecraft:player] run data merge entity @s {Persistent:1b, PersistenceRequired:1b}

execute if entity @e[tag = sa_btd_main] run data merge entity @e[tag = sa_kqmodel, limit=1] {Pose:{Body:[0f,2f,0f],Head:[16f,0f,0f],LeftLeg:[10f,18f,0f],RightLeg:[18f,14f,0f],LeftArm:[6f,18f,0f],RightArm:[293f,0f,0f]}}
execute at @e[tag = sa_btd_main] as @e[tag = sa_kqmodel] run tp ^ ^0.2 ^-0.4

execute if entity @e[tag = sa_btd_main] run tag @s add sa_btd_active

data merge entity @e[tag = sa_kqmodel, limit=1] {Pose:{Body:[358f,339f,6f],Head:[8f,0f,6f],LeftLeg:[18f,24f,0f],RightLeg:[18f,6f,8f],LeftArm:[16f,40f,0f],RightArm:[30f,0f,20f]}}
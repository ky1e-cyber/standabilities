tag @s add sa_kq_plant
scoreboard players set @s sa_death_kq 0

execute as @e[type=!#standabilities:main/nonliving, tag = !sa_kq_plant, distance=..1, sort=nearest, limit=1] run tag @s add sa_kqbomb
execute as @e[type=minecraft:item, distance=..1, sort=nearest, limit=1] run tag @s add sa_kqbomb

execute if entity @e[tag = sa_kqbomb] run data merge entity @e[tag = sa_kqmodel, limit=1] {Pose:{Body:[0f,2f,0f],Head:[16f,0f,0f],LeftLeg:[10f,18f,0f],RightLeg:[18f,14f,0f],LeftArm:[6f,18f,0f],RightArm:[293f,0f,0f]}}
execute at @e[tag = sa_kqbomb] as @e[tag = sa_kqmodel] run tp ^ ^0.2 ^-0.4


execute if entity @e[tag = sa_kqbomb] run tag @s add sa_kq_active
execute as @e[type=minecraft:item, tag = sa_kqbomb] run data merge entity @s {Item:{tag:{sa_kqbomb:1b}}}

tag @s remove sa_kq_plant

data merge entity @e[tag = sa_kqmodel, limit=1] {Pose:{Body:[358f,339f,6f],Head:[8f,0f,6f],LeftLeg:[18f,24f,0f],RightLeg:[18f,6f,8f],LeftArm:[16f,40f,0f],RightArm:[30f,0f,20f]}}
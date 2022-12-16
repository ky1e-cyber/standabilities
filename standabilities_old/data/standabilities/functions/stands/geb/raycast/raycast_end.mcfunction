effect give @e[tag = !sa_geb_user, distance=..1.5, type=!#standabilities:main/undead] minecraft:instant_damage 1 0 true
effect give @e[tag = !sa_geb_user, distance=..1.5, type=#standabilities:main/undead] minecraft:instant_health 1 0 true

playsound entity.player.attack.knockback ambient @a[distance=..10]
execute as @a[tag = sa_geb_raycaster] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 1

scoreboard players set @s sa_distance 0

particle minecraft:dripping_water ~ ~ ~ 1 1 1 0 10 force
particle minecraft:crit ~ ~1 ~ 1 1 1 0 5 normal
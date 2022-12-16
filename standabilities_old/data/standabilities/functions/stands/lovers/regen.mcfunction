tag @s remove sa_par_victim
execute at @s run particle minecraft:crimson_spore ~ ~ ~ 1 1 1 0 1 normal
execute at @s as @e[type=!#standabilities:main/nonliving, sort=nearest, limit=1] if entity @s[distance=..10] run tag @s add sa_par_victim
effect give @a[tag = sa_par_active] minecraft:instant_damage 1 0 true
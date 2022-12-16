execute as @a[tag = sa_geb_user] run scoreboard players set @s sa_cool_x 20
execute as @s[type=!#standabilities:main/undead] run effect give @s minecraft:instant_damage 1 0 true
execute as @s[type=#standabilities:main/undead] run effect give @s minecraft:instant_health 1 0 true
playsound minecraft:entity.player.attack.weak ambient @a[distance=..5]
execute at @s run particle minecraft:dripping_water ~ ~ ~ 1 1 1 0 10 force
execute at @s run particle minecraft:crit ~ ~1 ~ 1 1 1 0 5 normal
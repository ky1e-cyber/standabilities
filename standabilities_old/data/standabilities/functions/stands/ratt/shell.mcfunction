effect give @s[tag = !sa_stopper] minecraft:wither 3 4 true

execute as @s[tag = sa_standmodel] at @s as @a[tag = sa_standuser, tag = !sa_stopper] if score @s jp2_standid = @e[tag = sa_standmodel, sort=nearest, limit=1] sa_modelsid run effect give @s minecraft:wither 3 4 true
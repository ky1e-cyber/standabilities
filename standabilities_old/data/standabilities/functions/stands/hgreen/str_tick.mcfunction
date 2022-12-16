execute unless entity @a[tag = sa_standuser,scores = {jp2_standid = 7}, distance=..20] run kill @s

execute positioned ~ ~-1 ~ as @e[distance=..1, type = !#standabilities:main/nonliving, tag = !sa_stopper] unless score @s jp2_standid matches 7 run function standabilities:stands/hgreen/web_hit
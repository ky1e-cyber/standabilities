execute unless entity @a[tag = sa_standuser,scores = {sa_standid = 2}, distance=..20] run kill @s

execute positioned ~ ~-1 ~ as @e[distance=..1, type = !#standabilities:main/nonliving, tag = !sa_stopper] unless score @s sa_standid matches 2 run function standabilities:stands/hgreen/web_hit
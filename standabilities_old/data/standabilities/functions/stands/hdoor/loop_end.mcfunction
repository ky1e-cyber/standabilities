scoreboard players set @s sa_distance 0
execute as @e[distance=..2, tag=!sa_hdsend, type= !#standabilities:main/nonliving, sort = nearest, limit = 1] run function standabilities:stands/hdoor/tag
tp ^ ^0.1 ^
scoreboard players remove @s sa_distance 1

execute if score @s sa_distance matches 1.. positioned ^ ^ ^1 if block ~ ~ ~ #standabilities:main/voids unless block ~ ~-0.5 ~ #standabilities:main/voids run function standabilities:stands/sworld/r_loop
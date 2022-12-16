scoreboard players remove @s sa_distance 1

tp @e[tag = sa_hdmodel] ~ ~ ~


execute if entity @e[distance=..2, tag=!sa_hdsend, type= !#standabilities:main/nonliving] run function standabilities:stands/hdoor/loop_end


execute as @s[scores={sa_distance = 1..}] positioned ^ ^ ^0.5 run function standabilities:stands/hdoor/loop
execute as @e[tag=sa_puppeted] store result score @s sa_onground run data get entity @s OnGround 
execute positioned as @e[tag=sa_puppeted, scores={sa_onground = 1..}] run tp @e[tag=sa_puppeted] ^ ^0.3 ^-1
tag @e[tag = sa_puppeted] remove sa_puppeted
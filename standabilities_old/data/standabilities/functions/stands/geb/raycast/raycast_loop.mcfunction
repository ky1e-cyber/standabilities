scoreboard players remove @s sa_distance 1

tp @s ~ ~ ~

execute align y if block ~ ~-1 ~ minecraft:air run tp @s ~ ~-1 ~
execute align y if block ~ ~ ~ #minecraft:sand run tp @s ~ ~1 ~
execute align y if block ~ ~ ~ minecraft:water run tp @s ~ ~1 ~

execute positioned as @s if entity @e[distance=..1.5, tag = !sa_geb, tag = !sa_geb_raycaster] run function standabilities:stands/geb/raycast/raycast_end

execute as @s[scores = {sa_distance = 1..}] positioned as @s if block ~ ~-1 ~ #minecraft:sand positioned ^ ^0.1 ^1 run function standabilities:stands/geb/raycast/raycast_loop
execute as @s[scores = {sa_distance = 1..}] positioned as @s if block ~ ~-1 ~ minecraft:water positioned ^ ^0.1 ^1 run function standabilities:stands/geb/raycast/raycast_loop
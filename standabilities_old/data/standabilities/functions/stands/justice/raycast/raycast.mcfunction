scoreboard players set @s sa_distance 0
tag @s add raycaster
execute positioned ~ ~1.12 ~ positioned ^ ^ ^0.5 run function standabilities:stands/justice/raycast/raycast_loop
tag @s remove raycaster
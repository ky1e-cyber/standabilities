scoreboard players set @s sa_cool_x 10
scoreboard players set @s sa_distance 0
tag @s add raycaster_hg
tag @e[tag = sa_hgmodel] add raycaster_hg

playsound minecraft:block.anvil.place ambient @s ~ ~ ~ 0.4 2
playsound minecraft:entity.generic.splash ambient @s ~ ~ ~ 0.4 2

execute positioned ~ ~1.12 ~ positioned ^ ^ ^0.5 run function standabilities:stands/hgreen/raycast/raycast_loop
tag @e[tag = raycaster_hg] remove raycaster_hg
scoreboard players set @s sa_distance 0


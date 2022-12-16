execute store result score @s sa_standrng run loot spawn ~ ~ ~ loot standabilities:standrng

execute if score sa sa_exist_sum matches 175 run scoreboard players set @s sa_standrng 0

scoreboard players operation sa sa_exist_sum += @s sa_standrng

execute if score @s sa_standrng matches 6 run function standabilities:set/hpurple
execute if score @s sa_standrng matches 7 run function standabilities:set/hgreen
execute if score @s sa_standrng matches 8 run function standabilities:set/platinum
execute if score @s sa_standrng matches 9 run function standabilities:set/theworld
execute if score @s sa_standrng matches 10 run function standabilities:set/justice
execute if score @s sa_standrng matches 11 run function standabilities:set/geb
execute if score @s sa_standrng matches 12 run function standabilities:set/lovers
execute if score @s sa_standrng matches 13 run function standabilities:set/bastet
execute if score @s sa_standrng matches 14 run function standabilities:set/achtung
execute if score @s sa_standrng matches 15 run function standabilities:set/shadow_world
execute if score @s sa_standrng matches 16 run function standabilities:set/killerqueen
execute if score @s sa_standrng matches 17 run function standabilities:set/ratt
execute if score @s sa_standrng matches 18 run function standabilities:set/kcrimson
execute if score @s sa_standrng matches 19 run function standabilities:set/hdoor

playsound minecraft:item.totem.use ambient @a[distance=..10] ~ ~ ~ 1 2
execute positioned ~ ~1 ~ rotated ~ 0 run particle crit ^ ^ ^0.5 0 0 0 0.2 10 force
playsound minecraft:entity.player.attack.crit ambient @a[distance=..10] ~ ~ ~ 1 2
effect give @s instant_damage 1 1 true
particle totem_of_undying ~ ~1 ~ 0 0 0 1 50 force
item replace entity @s weapon.offhand with minecraft:air

execute if score @s jp2_standid matches 0 run tellraw @s "No Stands available"
execute if score @s jp2_standid matches 0 run tag @s remove sa_standuser

scoreboard players reset @s sa_standrng
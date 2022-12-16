tag @s remove sa_world_barrage
kill @e[tag = sa_worldbarrage]

execute as @e[tag = sa_worldmodel] run data merge entity @s {Invisible:0b, ArmorItems:[{id:"golden_boots",Count:1b},{id:"golden_leggings",Count:1b},{id:"golden_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;1260839439,1037059493,-2003526677,1678321557],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmU0OTczMzRmMTlhMWQ4OTc3OWE2YjIwZGQxMzk0ZmFhMDM1MjA2NTQwOWNiYzViYjc2NmZlMjcxNmM2NjA2NSJ9fX0="}]}}}}]}
execute at @e[tag = sa_worldmodel] run particle minecraft:dust 1 1 0 1 ^ ^ ^ 0.5 1 0.4 0 25 normal


kill @e[tag = sa_wfist]
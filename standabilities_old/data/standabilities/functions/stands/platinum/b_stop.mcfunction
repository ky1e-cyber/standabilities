tag @s remove sa_plat_barrage
kill @e[tag = sa_pbarrage]

execute as @e[tag = sa_pmodel] run data merge entity @s {Invisible:0b, ArmorItems:[{id:"netherite_boots",Count:1b},{id:"leather_leggings",Count:1b,tag:{display:{color:10053324}}},{id:"netherite_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-335466107,1561542818,-1305343247,1274551477],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTZkZDFhNmU1N2YwYjNmMjc4OGViNzRkZTUwMmRmZjYxMTQ2NzQ1MWM4ZjEwYTk0YWViZjczYjAyMjk4ZjE5MyJ9fX0="}]}}}}]}
execute at @e[tag = sa_pmodel] run particle minecraft:dust 0.9 0.1 0.9 1 ^ ^ ^ 0.5 1 0.4 0 25 normal

kill @e[tag = sa_spfist]


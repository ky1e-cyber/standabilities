tag @s remove sa_kc_barrage
kill @e[tag = sa_kcbarrage]

execute as @e[tag = sa_kcmodel] run data merge entity @s {Invisible:0b, ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:15985385}}},{id:"chainmail_leggings",Count:1b},{id:"leather_chestplate",Count:1b,tag:{display:{color:10297157}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;445562243,-1005501953,-1104848173,-19452586],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTVmMWYxMDgzOTZhZWZkZjk1ZTVmODA1ZGYwNTZiZTk3OWVkZTA0NDc0OWY5ZTk2MTMyNDljNjRiYjRlNTc3MSJ9fX0="}]}}}}]}
execute at @e[tag = sa_kcmodel] run particle minecraft:dust 0.9 0.1 0 1 ^ ^ ^ 0.5 1 0.4 0 25 normal

kill @e[tag = sa_kcfist]


execute positioned ~ ~0.3 ~ positioned ^-0.56 ^ ^0.3 run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,Marker:1b, Small:1b, Tags:["sa_spfmarker", "sa_spfleft"]}
execute positioned ~ ~0.7 ~ positioned ^-0.56 ^ ^0.3 run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,Marker:1b, Small:1b, Tags:["sa_spfmarker", "sa_spfleft"]}
execute positioned ~ ~0.3 ~ positioned ^0.56 ^ ^0.3 run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,Marker:1b, Small:1b, Tags:["sa_spfmarker"]}
execute positioned ~ ~0.7 ~ positioned ^0.56 ^ ^0.3 run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,Marker:1b, Small:1b, Tags:["sa_spfmarker"]}

execute as @e[tag = sa_spfmarker, sort=random, limit=1] if entity @s[tag = sa_spfleft] positioned as @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Marker:1b,ArmorItems:[{},{},{},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-808478581,934629084,-1269343297,1787064556],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjY3MzA2YTE5ZjlkMmNiNmRhNjhjNzVjMTEzMjM2N2QzNzc3YzY1NzgzZTJlMmQxMWZiYzY0MzkyOWRlMDFlNiJ9fX0="}]}}}}], Tags:["sa_spfist", "sa_spfs"]}
execute as @e[tag = sa_spfmarker, sort=random, limit=1] unless entity @s[tag = sa_spfleft] positioned as @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Marker:1b,ArmorItems:[{},{},{},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1653035140,86655508,-1926906243,-157323289],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzBhMmU0MDk0MTE5NTdjYzA3ZTkwYTE2ODdhNjc4MDY1MjA0YTQwYjE4Y2I4YzZhZGEyYTJkY2JmMzIxZGNkOSJ9fX0="}]}}}}], Tags:["sa_spfist", "sa_spfs"]}

scoreboard players set @e[tag = sa_spfs] sa_cool 8
tag @e[tag = sa_spfs] remove sa_spfs
kill @e[tag = sa_spfmarker]
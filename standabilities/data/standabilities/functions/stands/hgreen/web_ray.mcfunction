summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Marker:1b, Tags:["sa_hgstr"]}
scoreboard players add @s sa_distance 1

execute as @s[scores={sa_distance=..28}] positioned ^ ^ ^0.5 if block ~ ~ ~ #standabilities:main/voids unless entity @e[tag = sa_hgspawn, distance=..0.5] run function standabilities:stands/hgreen/web_ray
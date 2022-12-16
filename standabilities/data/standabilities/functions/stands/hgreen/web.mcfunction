scoreboard players set @s sa_cool_x 10

playsound minecraft:entity.arrow.hit_player ambient @s ~ ~ ~ 0.4 1.2

execute at @s run summon armor_stand ~ ~0.5 ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Marker:1b, Tags:["sa_hgstr", "sa_hgnode", "sa_hgspawn"]}
execute at @s run particle minecraft:glow ~ ~0.5 ~ 0 0 0 0.2 5 force

execute as @e[tag = sa_hgnode, tag = !sa_hgspawn, distance = ..10] run scoreboard players set @s sa_distance 0
execute as @e[tag = sa_hgnode, tag = !sa_hgspawn, distance = ..10] positioned as @s facing entity @e[tag = sa_hgspawn, limit = 1] eyes positioned ^ ^ ^0.5 run function standabilities:stands/hgreen/web_ray

tag @e[tag = sa_hgspawn] remove sa_hgspawn

function standabilities:stands/hgreen/str_prtcl

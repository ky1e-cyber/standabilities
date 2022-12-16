scoreboard players set @s sa_lovers_damage 0
execute as @s[tag = !sa_par_active] run scoreboard players set @s sa_distance 100
execute as @s[tag = !sa_par_active] run tag @s add sa_par_caster
execute as @s[tag = !sa_par_active] at @s rotated as @s positioned ~ ~1.62 ~ positioned ^ ^ ^0.5 run function standabilities:stands/lovers/raycast/loop

execute as @s[tag = !sa_par_active] run tag @s remove sa_par_caster

execute as @s[tag = sa_par_active] run tag @e[tag = sa_par_victim] remove sa_par_victim
execute as @s[tag = sa_par_active] run tag @s remove sa_par_active


execute as @s[tag = sa_par_hit] run tag @s add sa_par_active
execute as @s[tag = sa_par_hit] run tag @s remove sa_par_hit
 
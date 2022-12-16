scoreboard players set @a[tag = sa_par_caster] sa_distance 0

tag @a[tag = sa_par_caster] add sa_par_hit

execute as @a[tag = sa_par_caster] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 1

tag @s add sa_par_victim
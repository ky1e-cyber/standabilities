scoreboard players remove @a[tag = sa_par_active] sa_lovers_damage 60
execute as @a[tag = sa_par_active] if score @s sa_lovers_damage matches ..0 run scoreboard players set @s sa_lovers_damage 0
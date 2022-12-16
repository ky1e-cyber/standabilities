execute as @a store result score @s sa_uuid run data get entity @s UUID
execute if data entity @s Thrower store result score @s sa_uuid run data get entity @s Thrower
execute if data entity @s Thrower run tag @s add sa_throwed


execute at @s as @a[tag = !sa_hcaster] if score @s sa_uuid = @e[tag = sa_throwed, sort=nearest,limit=1] sa_uuid run effect give @s minecraft:glowing 5 1 true
execute as @s[type=minecraft:item, nbt={Item:{id:"minecraft:map"}}] at @s if score @s sa_uuid = @a[tag = sa_hcaster, limit=1] sa_uuid run function standabilities:stands/hpurple/map
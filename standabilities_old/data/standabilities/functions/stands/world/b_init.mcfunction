tag @s add sa_world_barrage
execute as @e[tag = sa_worldmodel] run data merge entity @s {ArmorItems:[], Invisible:1b}
execute at @s rotated ~ 0 run summon armor_stand ^ ^0.5 ^-0.4 {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:0b,Marker:1b,Rotation:[292f],ArmorItems:[{id:"golden_boots",Count:1b},{id:"golden_leggings",Count:1b},{id:"golden_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;1260839439,1037059493,-2003526677,1678321557],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmU0OTczMzRmMTlhMWQ4OTc3OWE2YjIwZGQxMzk0ZmFhMDM1MjA2NTQwOWNiYzViYjc2NmZlMjcxNmM2NjA2NSJ9fX0="}]}}}}],HandItems:[{},{}],Pose:{Body:[8f,14f,0f],Head:[10f,0f,0f],LeftLeg:[18f,0f,0f],RightLeg:[34f,0f,0f],LeftArm:[279f,18f,0f],RightArm:[273f,352f,0f]}, Tags:["sa_worldbarrage", "sa_standmodel"]}
scoreboard players set @e[tag = sa_worldbarrage] sa_modelsid 9
execute at @e[tag = sa_worldmodel] run particle minecraft:dust 1 1 0 1 ^ ^ ^ 0.5 1 0.4 0 25 normal

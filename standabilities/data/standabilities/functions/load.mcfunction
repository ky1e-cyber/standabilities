scoreboard objectives add sa_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add sa_damage minecraft.custom:minecraft.damage_taken
scoreboard objectives add sa_damage_ts minecraft.custom:minecraft.damage_taken
scoreboard objectives add sa_lovers_damage minecraft.custom:minecraft.damage_taken
scoreboard objectives add sa_damage_hd minecraft.custom:minecraft.damage_taken
scoreboard objectives add sa_hurt dummy
scoreboard objectives add sa_distance dummy
scoreboard objectives add sa_onground dummy
scoreboard objectives add sa_standid dummy
scoreboard objectives add sa_modelsid dummy
scoreboard objectives add sa_standrng dummy
scoreboard objectives add sa_death deathCount
scoreboard objectives add sa_death_ts deathCount
scoreboard objectives add sa_death_kq deathCount
scoreboard objectives add sa_timer_bst dummy
scoreboard objectives add sa_predtime dummy
scoreboard objectives add sa_skiptime dummy

scoreboard objectives add sa_x1 dummy
scoreboard objectives add sa_y1 dummy
scoreboard objectives add sa_z1 dummy
scoreboard objectives add sa_x2 dummy
scoreboard objectives add sa_y2 dummy
scoreboard objectives add sa_z2 dummy

scoreboard objectives add sa_ts_x1 dummy
scoreboard objectives add sa_ts_y1 dummy
scoreboard objectives add sa_ts_z1 dummy
scoreboard objectives add sa_ts_x2 dummy
scoreboard objectives add sa_ts_y2 dummy
scoreboard objectives add sa_ts_z2 dummy

scoreboard objectives add sa_rotation dummy
scoreboard objectives add sa_fuse dummy

scoreboard objectives add sa_uuid dummy
scoreboard objectives add sa_hpdistance dummy

scoreboard objectives add sa_hg_webs dummy

scoreboard objectives add sa_cool dummy
scoreboard objectives add sa_cool_ts dummy
scoreboard objectives add sa_cool_x dummy
scoreboard objectives add sa_timer_ts dummy

scoreboard objectives add sa_idheap dummy
scoreboard objectives add sa_userid dummy
scoreboard objectives add sa_buffid dummy

execute unless score sa sa_heapid matches 0.. run scoreboard players set sa sa_heapid 0

bossbar add standabilities:timestop {"text":"Time Stop","bold":true,"color":"purple"}
bossbar set standabilities:timestop visible true
bossbar set standabilities:timestop color white
bossbar set standabilities:timestop max 100
bossbar set standabilities:timestop players

tellraw @a ["",{"text":"\u300eStand Abilities Datapack\u300f","bold":true,"color":"yellow"},{"text":" loaded.","bold":true}]
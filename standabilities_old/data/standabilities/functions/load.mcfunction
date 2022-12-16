scoreboard objectives add sa_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add sa_damage minecraft.custom:minecraft.damage_taken
scoreboard objectives add sa_damage_ts minecraft.custom:minecraft.damage_taken
scoreboard objectives add sa_lovers_damage minecraft.custom:minecraft.damage_taken
scoreboard objectives add sa_damage_hd minecraft.custom:minecraft.damage_taken
scoreboard objectives add sa_hurt dummy
scoreboard objectives add sa_distance dummy
scoreboard objectives add sa_onground dummy
scoreboard objectives add jp2_standid dummy
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

scoreboard objectives add sa_morning_x dummy
scoreboard objectives add sa_morning_y dummy
scoreboard objectives add sa_morning_z dummy

scoreboard objectives add sa_rotation dummy
scoreboard objectives add sa_fuse dummy

scoreboard objectives add sa_btd_time dummy
scoreboard objectives add sa_btd_daytime dummy
scoreboard objectives add sa_btd_id dummy

scoreboard objectives add sa_uuid dummy
scoreboard objectives add sa_hpdistance dummy

scoreboard objectives add sa_hg_webs dummy
scoreboard objectives add sa_hg_webs dummy

scoreboard objectives add sa_hd_eid dummy
scoreboard objectives add sa_cool_e dummy

scoreboard objectives add sa_ratt_ammo dummy

scoreboard objectives add sa_cool dummy
scoreboard objectives add sa_cool_ts dummy
scoreboard objectives add sa_cool_x dummy
scoreboard objectives add sa_timer_ts dummy

scoreboard objectives add sa_exist_sum dummy
scoreboard objectives add sa_exist_hp dummy
scoreboard objectives add sa_exist_hg dummy
scoreboard objectives add sa_exist_plat dummy
scoreboard objectives add sa_exist_world dummy
scoreboard objectives add sa_exist_justice dummy
scoreboard objectives add sa_exist_geb dummy
scoreboard objectives add sa_exist_lovers dummy
scoreboard objectives add sa_exist_bastet dummy
scoreboard objectives add sa_exist_achtung dummy
scoreboard objectives add sa_exist_sworld dummy
scoreboard objectives add sa_exist_kq dummy
scoreboard objectives add sa_exist_ratt dummy
scoreboard objectives add sa_exist_kc dummy
scoreboard objectives add sa_exist_hd dummy

bossbar add standabilities:timestop_ts {"text":"Time Stop","bold":true,"color":"yellow"}
bossbar set standabilities:timestop_ts visible true
bossbar set standabilities:timestop_ts color white
bossbar set standabilities:timestop_ts max 40
bossbar set standabilities:timestop_ts players

bossbar add standabilities:timestop_tw {"text":"Time Stop","bold":true,"color":"yellow"}
bossbar set standabilities:timestop_tw visible true
bossbar set standabilities:timestop_tw color white
bossbar set standabilities:timestop_tw max 100
bossbar set standabilities:timestop_tw players

bossbar add standabilities:timestop_sp {"text":"Time Stop","bold":true,"color":"purple"}
bossbar set standabilities:timestop_sp visible true
bossbar set standabilities:timestop_sp color white
bossbar set standabilities:timestop_sp max 100
bossbar set standabilities:timestop_sp players

tellraw @a ["",{"text":"\u300eStand Abilities Datapack\u300f","bold":true,"color":"yellow"},{"text":" loaded.","bold":true}]
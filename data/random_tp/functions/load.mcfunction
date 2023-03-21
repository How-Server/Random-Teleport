

scoreboard objectives remove RTP_detect
scoreboard objectives add RTP_detect trigger
scoreboard objectives remove RTP_timer_min
scoreboard objectives add RTP_timer_min trigger
scoreboard objectives remove RTP_timer_sec
scoreboard objectives add RTP_timer_sec trigger
scoreboard objectives remove RTP_tick
scoreboard objectives add RTP_tick trigger
scoreboard objectives remove RTP_timer_start
scoreboard objectives add RTP_timer_start trigger
tag @a remove RTP_cd
tellraw @a[gamemode=creative] {"text":"==========隨機傳送載入完成==========","color":"gold"}
scoreboard players add @a[scores={RTP_timer_min=0..}] RTP_tick 1
scoreboard players remove @a[scores={RTP_timer_start=1..}] RTP_timer_start 1
execute as @a[scores={RTP_timer_min=0..}] at @s if score @s RTP_timer_sec matches ..-1 run scoreboard players remove @s RTP_timer_min 1
execute as @a[scores={RTP_timer_min=0..}] at @s if score @s RTP_timer_sec matches ..-1 run scoreboard players set @s RTP_timer_sec 60
execute as @a[scores={RTP_timer_min=0..}] at @s if score @s RTP_tick matches 20.. run scoreboard players remove @s RTP_timer_sec 1
execute as @a[scores={RTP_timer_min=0..}] at @s if score @s RTP_tick matches 20.. run scoreboard players reset @s RTP_tick
title @a[scores={RTP_timer_min=0..},tag=RTP_cd] actionbar [{"text":"隨機傳送CD剩餘時間為：","color":"green"},{"score":{"name":"*","objective":"RTP_timer_min"}},{"text":"m","color":"aqua"},{"score":{"name":"*","objective":"RTP_timer_sec"}},{"text":"s","color":"aqua"}]
execute as @a[scores={RTP_timer_start=..0},tag=!RTP_cd] at @s run spreadplayers ~ ~ 1 3000 false @s
execute as @a[scores={RTP_timer_start=..0}] at @s run title @s title {"text":"傳送完畢。","color":"gold"}
execute as @a[scores={RTP_timer_start=..0}] at @s run tag @s add RTP_cd
scoreboard players reset @a[scores={RTP_timer_start=..0}] RTP_timer_start
execute as @a[scores={RTP_timer_min=..-1}] at @s run function random_tp:end
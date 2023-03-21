scoreboard players set @s[tag=!RTP_cd] RTP_timer_min 4
scoreboard players set @s[tag=!RTP_cd] RTP_timer_sec 59
scoreboard players set @s[tag=!RTP_cd] RTP_timer_start 60
playsound minecraft:block.portal.travel master @s[tag=!RTP_cd] ~ ~ ~ 0.5
playsound minecraft:block.glass.break master @s[tag=RTP_cd] ~ ~ ~ 30
effect give @s[tag=!RTP_cd] nausea 3 1 true
effect give @s[tag=!RTP_cd] darkness 3 1 true
effect give @s[tag=!RTP_cd] blindness 3 1 true
effect give @s[tag=!RTP_cd] slowness 3 100 true
particle minecraft:dust 0.67 0.67 0.67 8 ~ ~1 ~ 0.75 0.5 0.75 0 300 force


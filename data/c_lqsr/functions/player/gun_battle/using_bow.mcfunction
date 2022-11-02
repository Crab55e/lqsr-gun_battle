scoreboard players add @s lq.gun_battle.bow.charge 1
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1

title @s actionbar ["=== Lv: ",{"score":{"name": "@s","objective": "lq.gun_battle.bow.charge"}}," ==="]

advancement revoke @s only c_lqsr:gun_battle/using_bow
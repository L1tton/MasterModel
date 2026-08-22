scoreboard objectives add is_sneaking dummy

team add glow_red
team modify glow_red color dark_red
team modify glow_red nametagVisibility never
team modify glow_red deathMessageVisibility never
team modify glow_red collisionRule never

team add glow_green
team modify glow_green color dark_green
team modify glow_green nametagVisibility never
team modify glow_green deathMessageVisibility never
team modify glow_green collisionRule never

team add glow_gold
team modify glow_gold color gold
team modify glow_gold deathMessageVisibility never
team modify glow_gold collisionRule never
team join glow_gold @a

title @a times 10 0 20
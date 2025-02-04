///scr_attack_state
image_speed = 1;

switch(sprite_index) {
    case spr_player_left:
        sprite_index = spr_player_atk_left;
            break;
    case spr_player_right:
        sprite_index = spr_player_atk_right;
            break;
    case spr_player_up:
        sprite_index = spr_player_atk_up;
        break;
    case spr_player_down:
        sprite_index = spr_player_atk_down;
        break;
}

if(image_index >= 3 && attacked == false) {
    var xx = 0;
    var yy = 0;
    switch(sprite_index) {
        case spr_player_atk_left:
                xx = x-20;
                yy = y-10;
                break;
                
        case spr_player_atk_right:
                xx = x+20;
                yy = y-10;
                break;
                
        case spr_player_atk_up:
                xx = x;
                yy = y-25;
                break;
                
        case spr_player_atk_down:
                xx = x;
                yy = y+2;
                break;
            
        }

    var damage = instance_create(xx, yy, obj_damage);
    damage.creator = id;
    damage.damage = obj_player_stats.attack;
    attacked = true;
}

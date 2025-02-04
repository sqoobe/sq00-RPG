///scr_movestate
scr_get_input();

if(dash_key && obj_player_stats.stamina >= DASH_COST && dashUnlock) {
    state = scr_dash_state;
    alarm[0] = room_speed/6;
    obj_player_stats.stamina -= DASH_COST;
    obj_player_stats.alarm[0] = room_speed;
}

if (attack_key) {
    image_index = 9;
    state = scr_attack_state;
}

// Get direction
dir = point_direction(0, 0, xaxis, yaxis);

// Get the axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);

// Get the length
if (xaxis == 0 and yaxis == 0) {
    len = 0;
}else{
    len = spd;
    scr_get_face();
}

// Get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Move
phy_position_x += hspd;
phy_position_y += vspd;

// Vertical sprite
image_speed = sign(len)*.2;
if (len == 0) image_index = 0;

switch (face) {
    case RIGHT:
        sprite_index = spr_player_right;
        break;
        
    case UP:
        sprite_index = spr_player_up;
        break;
        
    case LEFT:
        sprite_index = spr_player_left;
        break;
        
    case DOWN:
        sprite_index = spr_player_down;
        break;
        
}
        
///if (vspd > 0) {
///    sprite_index = spr_player_down;
///}else if (vspd < 0) {
//    sprite_index = spr_player_up;

//}
// Horizontal sprite
//if (hspd > 0) {
//    sprite_index = spr_player_right;
///    sprite_index = spr_player_left;
///}

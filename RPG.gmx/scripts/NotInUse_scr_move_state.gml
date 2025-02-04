// Move UP
if (keyboard_check(ord("W"))){
 sprite_index = spr_player_up;
 phy_position_y -= 2 * walk_speed;
 image_speed = 1;
}

// Move Down

if (keyboard_check(ord("S"))){
 sprite_index = spr_player_down;
 phy_position_y += 2 * walk_speed;
 image_speed = 1;
}

// Move Left

if (keyboard_check(ord("A"))){
 sprite_index = spr_player_left;
 phy_position_x -= 2 * walk_speed;
 image_speed = 1;
}

// Move Right

if (keyboard_check(ord("D"))){
 sprite_index = spr_player_right;
 phy_position_x += 2 * walk_speed;
 image_speed = 1;
 
}

// Stop Animating
if (!keyboard_check(ord("W")) and !keyboard_check(ord("S")) and !keyboard_check(ord("A")) and !keyboard_check(ord("D"))) {
    image_index = 0;
    image_speed = 0;

}

// Interact

if (keyboard_check(ord("E"))){
    //Interaction
    action = true;
}else{
    action = false;
}

//Walk speed
if(keyboard_check(vk_shift)){
    //Interaction
    walk_speed = lerp (walk_speed, 3.5,0.1);
    image_speed = 0.5;
}else{
    walk_speed = lerp (walk_speed, 1.0,0.1);
    image_speed = 0.1;
    
}

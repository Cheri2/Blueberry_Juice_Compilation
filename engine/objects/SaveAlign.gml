#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited();

max_difficulty = 2;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(instance_exists(Player)) {
    if(Player.x mod 3 = good_align) {
        image_alpha=1
    }
    else image_alpha=0.3
}
if !init {
    if save_get("difficulty") > max_difficulty {
        instance_destroy();
    }
    init = true;
}


if input_check_pressed(key_shoot) {
    if place_meeting(x, y, Player) if !Player.frozen if(image_alpha>0.9) {
        event_user(0);
    }
}

#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
text = "";
room_to = noone;
x_to = noone;
y_to = noone;
clear_id=0;
type_normal = 0;
type_outside = 1;
type_wrap_around = 2;
type = type_normal;

x_offset = 0;
y_offset = 0;
autosave = false;
display_text = false;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if display_text {
    if !place_meeting(x, y, Player) || input_check_pressed(key_up) {
        display_text = false;
    }
}
else {
    if input_check_pressed(key_up) if place_meeting(x, y, Player) {
        display_text = true;
    }
}
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (input_check_pressed(key_up)) {
    event_user(0)
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field room_to: room
//field x_to: number
//field y_to: number
//field x_offset: number
//field y_offset: number
//field autosave: bool
//field text: string
//field rangemin: number
//field rangemax: number
//field diff: number
//field clear_id: number
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if x_to != noone || y_to != noone {
    with(Player) {
        x = other.x_to;
        y = other.y_to;
    }
}
else {
    instance_destroy_id(Player);
}

if room_exists(room_to) {
    room_goto(room_to);

    if autosave {
        save_save_asap();
    }
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
    draw_set_font(fDefaultSmall);
    draw_set_halign(fa_middle);
    draw_set_valign(fa_bottom);
draw_self()
draw_sprite(sprDiff,diff,mean(bbox_left, bbox_right),bbox_top-80)
if(rangemin!=-1) {

if(clear_id!=0) {if(save_get(str_cat("boss_item", clear_id))) draw_sprite(sprBlueberry,0,mean(bbox_left, bbox_right)-32,bbox_top-64) else draw_sprite(sprBlueberryBW,0,mean(bbox_left, bbox_right)-32,bbox_top-64)
}else draw_sprite(sprBlueberry,0,mean(bbox_left, bbox_right)-32,bbox_top-64)

    draw_text_outlined(mean(bbox_left, bbox_right)+8, bbox_top-40, str_cat(string(get_item_range(rangemin,rangemax)),"/",string(rangemax-rangemin+1)), c_white, c_black);
    }draw_text_outlined(mean(bbox_left, bbox_right), bbox_top-16, text, c_white, c_black);

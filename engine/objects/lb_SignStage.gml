#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
text = "";

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
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field text: string
//field rangemin: number
//field rangemax: number
//field diff: number
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

draw_sprite(sprDiff,diff,mean(bbox_left, bbox_right),bbox_top-96)
draw_sprite(sprBlueberry,0,mean(bbox_left, bbox_right)-48,bbox_top-80)
    draw_set_font(fDefaultSmall);
    draw_set_halign(fa_middle);
    draw_set_valign(fa_bottom);
    draw_text_outlined(mean(bbox_left, bbox_right)+8, bbox_top-56, str_cat(string(get_item_range(rangemin,rangemax)),"/",string(rangemax-rangemin+1)), c_white, c_black);
    draw_text_outlined(mean(bbox_left, bbox_right), bbox_top-32, text, c_white, c_black);

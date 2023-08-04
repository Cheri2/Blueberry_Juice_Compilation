#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited();
soundeffect = "st_save1";
max_difficulty = 2;
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_self()
if(alarm[0]>0) {
scale = (30-alarm[0]) / 30 + 1
draw_sprite_ext(sprite_index,image_index,x-scale*16+16,y-scale*16+16,scale,scale,0,c_white,alarm[0]/45);
}

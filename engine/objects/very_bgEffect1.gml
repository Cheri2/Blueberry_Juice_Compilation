#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
t = 0
_room = room
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
t += 1
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
background_x[0] = view_xview * (2/3)
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_number(very_bgEffect1)>1 or room != _room instance_destroy()
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
joe = view_xview * (1/3)
draw_background_tiled_ext(very_bMist,t + joe,t,1,1,make_color_hsv(41,56,255),0.25)
draw_background_tiled_ext(very_bMist,-t + joe,t/2,1,1,make_color_hsv(41,56,255),0.25)
draw_reset()

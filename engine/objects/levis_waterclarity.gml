#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surfW=surface_create(view_wview,view_hview)
with(WaterCatharsis) visible=false
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surface_free(surfW)
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!surface_exists(surfW)) {
    surfW = surface_create(view_wview,view_hview);
}
draw_set_alpha(1)
surface_set_target(surfW)
draw_clear_alpha(c_black,0)
draw_set_blend_mode(bm_normal)
with(WaterCatharsis) repeat(2) draw_sprite_ext(sprite_index,floor(image_index),x,y,image_xscale,image_yscale,image_angle,c_white,1)
draw_set_blend_mode(bm_subtract)
with(PlayerKiller) draw_sprite_ext(ternary(object_index=Cherry,sprCherry,sprite_index),floor(image_index),x,y,image_xscale,image_yscale,image_angle,c_black,1)
with(Block) draw_sprite_ext(sprWhite,0,x,y,image_xscale,image_yscale,0,c_black,1);
draw_set_blend_mode(bm_normal)
draw_set_blend_alphamode(false)
surface_set_target(application_surface)
draw_surface_ext(surfW,view_xview,view_yview,1,1,0,c_white,1);

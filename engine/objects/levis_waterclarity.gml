#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surfW=surface_create(view_wview,view_hview)
with(WaterCatharsis) image_alpha=0
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
draw_set_blend_mode_ext(bm_one,bm_one)
with(WaterCatharsis) draw_sprite_ext(sprite_index,floor(image_index),x,y,image_xscale,image_yscale,image_angle,c_white,0.8)
draw_set_blend_mode(bm_normal)
draw_set_blend_alphamode(true,bm_zero,bm_inv_src_alpha)
with(PlayerKiller) draw_sprite_ext(ternary(object_index=Cherry,sprCherry,sprite_index),floor(image_index)+4,x,y,image_xscale,image_yscale,image_angle,c_white,1)
with(Block) draw_sprite_ext(sprWhite,0,x,y,image_xscale,image_yscale,0,make_color_rgb(255,255,255),1);
draw_set_blend_mode(bm_normal)
draw_set_blend_alphamode(true,bm_normal)
draw_set_blend_alphamode(false)
surface_set_target(application_surface)
draw_surface_ext(surfW,view_xview,view_yview,1,1,0,c_white,1);

#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!surface_exists(surf)) {
    surf = surface_create(view_wview,view_hview);
}
if(!surface_exists(surf2)) {
    surf2 = surface_create(view_wview,view_hview);
}
if(!surface_exists(surf3)) {
    surf3 = surface_create(view_wview,view_hview);
}
if(!surface_exists(surf4)) {
    surf3 = surface_create(view_wview,view_hview);
}
//Clear the surface, then draw shadow sprites onto surface (at full opacity)
surface_set_target(surf);
draw_clear_alpha(c_black, 0);

with Block{
  if object_index == Block{//this part is because the normal block sprite is transparent
    draw_sprite_ext(sprWhite,0,x,y,image_xscale,image_yscale,0,make_color_hsv(180,90,90),1);
  }
}

surface_set_target(surf2);
draw_clear_alpha(c_black,1)
draw_set_blend_mode(bm_subtract);
draw_surface(surf,0,0);
surface_set_target(surf3);
draw_clear_alpha(c_black,1);
draw_set_blend_mode(bm_subtract);
draw_surface_ext(surf2,2,-2,1,1,0,c_black,1);
draw_surface_ext(surf2,2,2,1,1,0,c_black,1);
draw_surface_ext(surf2,-2,2,1,1,0,c_black,1);
draw_surface_ext(surf2,-2,-2,1,1,0,c_black,1);
surface_set_target(surf)
draw_surface(surf3,0,0)
draw_set_blend_mode(bm_normal)
surface_set_target(surf4)
draw_background_tiled(bgFabric,0,0)
draw_set_blend_mode(bm_subtract)
draw_surface(surf2,0,0)
draw_set_blend_mode(bm_normal)
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surf = surface_create(view_wview,view_hview);
surf2 = surface_create(view_wview,view_hview);
surf3 = surface_create(view_wview,view_hview);
surf4 = surface_create(view_wview,view_hview);
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surface_free(surf);
surface_free(surf2);
surface_free(surf3);
surface_free(surf4);
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surface_set_target(application_surface)
draw_surface(surf4,view_xview,view_yview)
draw_surface_ext(surf,view_xview,view_yview,1,1,0,c_white,1);

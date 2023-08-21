#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(SaveHard) {
instance_create(x,y,levis_Save)
instance_destroy()
}
with(Warp) {
sprite_index=sprWarpLevis
}
with(Platform) {
sprite_index=sprPlatformLevis
}
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
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
surf5 = surface_create(view_wview,view_hview);
instance_create(1,1,levis_waterclarity)
with(PlayerKiller) visible=false
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with SpikeUp {
sprite_index = sprSpikeLevis
image_index = 4
image_speed = 0
}
with SpikeRight {
sprite_index = sprSpikeLevis
image_index = 5
image_speed = 0
}
with SpikeDown {
sprite_index = sprSpikeLevis
image_index = 6
image_speed = 0
}
with SpikeLeft {
sprite_index = sprSpikeLevis
image_index = 7
image_speed = 0
}
with MiniSpikeUp {
sprite_index = sprMiniLevis
image_index = 4
image_speed = 0
}
with MiniSpikeRight {
sprite_index = sprMiniLevis
image_index = 5
image_speed = 0
}
with MiniSpikeDown {
sprite_index = sprMiniLevis
image_index = 6
image_speed = 0
}
with MiniSpikeLeft {
sprite_index = sprMiniLevis
image_index = 7
image_speed = 0
}
with Cherry {
sprite_index = sprCherryLevis
}
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
surface_free(surf5);
#define Draw_0
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
    surf4 = surface_create(view_wview,view_hview);
}
if(!surface_exists(surf5)) {
    surf4 = surface_create(view_wview,view_hview);
}

//Clear the surface, then draw shadow sprites onto surface (at full opacity)
surface_set_target(surf);
draw_clear_alpha(c_black, 0);
// very clearly a block mask
with Block{
  if object_index == Block{//this part is because the normal block sprite is transparent
    draw_sprite_ext(sprBorder,0,x,y,image_xscale,image_yscale,0,make_color_rgb(255,255,255),1);
  }
}

// very clearly clears any black pixels still around
surface_set_target(surf2);
draw_clear_alpha(c_black,1)
draw_set_blend_mode(bm_subtract);
draw_surface(surf,0,0);
// outline black magic
surface_set_target(surf3);
draw_set_blend_mode(bm_normal)
draw_clear_alpha(c_black,1);
draw_set_blend_mode(bm_subtract);
draw_surface_ext(surf2,2,-2,1,1,0,c_black,1);
draw_surface_ext(surf2,2,2,1,1,0,c_black,1);
draw_surface_ext(surf2,-2,2,1,1,0,c_black,1);
draw_surface_ext(surf2,-2,-2,1,1,0,c_black,1);

//mask lol
surface_set_target(surf)
draw_surface(surf3,0,0)
//guys we did it lets actually draw tiles and mask it to blocks
surface_set_target(surf4)
draw_clear_alpha(c_black,0)
draw_set_blend_mode(bm_normal)
draw_background_tiled(bTileLevis,0,0)
draw_set_blend_mode(bm_subtract)
draw_surface(surf2,0,0)
draw_set_blend_mode(bm_normal)
surface_set_target(application_surface)
draw_surface_ext(surf4,view_xview,view_yview,1,1,0,c_white,0.5);
draw_surface_ext(surf,view_xview,view_yview,1,1,0,c_white,0.5);

// spike master
surface_set_target(surf5)
draw_clear_alpha(make_color_rgb(157,190,240),0)
draw_set_blend_mode(bm_normal)
with(PlayerKiller) draw_sprite_ext(sprite_index,floor(image_index),x,y,image_xscale,image_yscale,image_angle,c_white,1)
draw_set_blend_mode(bm_subtract)
with(Block) draw_sprite_ext(sprWhite,0,x,y,image_xscale,image_yscale,0,make_color_rgb(255,255,255),1);
draw_set_blend_mode(bm_normal)
surface_set_target(application_surface)
draw_surface_ext(surf5,view_xview,view_yview,1,1,0,c_white,0.5);

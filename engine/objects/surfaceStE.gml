#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

surf1=surface_create(800,608);
surfBlock=surface_create(800,608)
sf_mask1=surface_create(800,608)
/*
with(SpikeUp) sprite_index=sprNU
with(SpikeRight) sprite_index=sprNR
with(SpikeDown) sprite_index=sprND
with(SpikeLeft) sprite_index=sprNL
with(MiniSpikeUp) sprite_index=sprNUm
with(MiniSpikeRight) sprite_index=sprNRm
with(MiniSpikeDown) sprite_index=sprNDm
with(MiniSpikeLeft) sprite_index=sprNLm
with(Cherry) sprite_index=sprNC
*/

with(PlayerKiller) {image_alpha=0.75 image_blend=make_color_hsv(210,210,210)}
with(Block) {sprite_index=sprWhite;}
with(BlockMini) {image_xscale*=0.5;image_yscale*=0.5}
with(Platform) sprite_index=sprPlatform
with(BlockUnstable) sprite_index=sprUnstableWhite
r_=3
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !surface_exists(surf1){
    surf1=surface_create(800,608);
}
if !surface_exists(surfBlock){
    surfBlock=surface_create(800,608);
}
if !surface_exists(sf_mask1){
    sf_mask1=surface_create(800,608);
}
draw_set_blend_mode(bm_normal)
surface_set_target(surfBlock)
draw_clear_alpha(0,1)
draw_set_blend_mode(bm_subtract)
with(Block) {if(object_index!=Platform) draw_sprite_ext(sprite_index,0,x-view_xview[0],y,image_xscale,image_yscale,0,c_white,1)}
with(BlockUnstable) draw_self()
draw_set_blend_mode(bm_normal)
surface_reset_target()
surface_set_target(sf_mask1)

draw_clear_alpha(0,1);

draw_set_blend_mode(bm_subtract);

draw_surface(surfBlock,3,-3);
draw_surface(surfBlock,-3,-3);
draw_surface(surfBlock,-3,3);
draw_surface(surfBlock,3,3);
//(-r,-r) ~ (r,r)까지 sf_mask의 영역을 빼줍니다.

draw_set_blend_mode(bm_normal);

surface_reset_target();
surface_set_target(surf1)
draw_clear_alpha(c_black,1)
draw_set_alpha(1)
draw_set_blend_mode(bm_normal)
draw_background_tiled(bgExS,0,0)

draw_set_blend_mode(bm_subtract)
draw_surface(surfBlock,0,0)
draw_background_ext(bgExS,0,0,1,1,0,c_white,0.13)
draw_set_blend_mode(bm_subtract)
draw_surface_ext(sf_mask1,0,0,1,1,0,c_white,0.18)
draw_set_blend_mode(bm_normal)
with(BlockUnstable) draw_sprite_ext(sprite_index,0,x-view_xview[0],y,image_xscale,image_yscale,0,c_white,0.4)
surface_set_target(application_surface)
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surface_free(surf1);
surface_free(surfBlock);
surface_free(sf_mask1);
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

surface_set_target(application_surface)
draw_surface_ext(surf1,view_xview[0],view_yview[0],1,1,0,c_white,1)
draw_set_alpha(1)
draw_set_blend_mode(bm_normal)

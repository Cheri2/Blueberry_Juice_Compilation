#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sf_mask=surface_create(800,608);
sf_mask1=surface_create(800,608);
sf_inline=surface_create(800,608);
with(Block) if(object_index=Block) sprite_index=sprWhite
with(BlockMini) sprite_index=sprWhite1616
with(Platform)
{
instance_create(x,y,vor_Platform)
instance_destroy()
}
with(PlayerKiller) visible=false
instance_create(0,0,genericRainbowChild)
with(SaveHard) {
instance_create(x,y,vor_Save)
instance_destroy()
}
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surface_free(sf_mask)
surface_free(sf_mask1)
surface_free(sf_inline)
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

if !surface_exists(sf_mask){
sf_mask=surface_create(800,608);
}
if !surface_exists(sf_mask1){
sf_mask1=surface_create(800,608);
}
if !surface_exists(sf_inline){
sf_inline=surface_create(800,608);
}

surface_set_target(sf_mask)

draw_clear_alpha(0,1);

draw_set_blend_mode(bm_subtract);

with Block{
if(object_index=Block||object_index=BlockMini)
draw_self();
}
with PlayerKiller{
draw_self()
}
with vor_Save{
draw_self()
}

draw_set_blend_mode(bm_normal);

surface_reset_target();

var r_,i,j;
r_=1;


surface_set_target(sf_mask1)

draw_clear_alpha(0,1);
draw_set_blend_mode(bm_subtract);

for(j=-r_; j<=r_; j+=1){
    for(i=-r_; i<=r_; i+=1){
        draw_surface_ext(sf_mask,i,j,1,1,0,c_white,1);
    }
}
draw_set_alpha(1)

draw_set_blend_mode(bm_normal);

surface_reset_target();


surface_set_target(sf_inline)

draw_rectangle_color(0,0,799,607,make_color_hsv(current_time/300,140,205),make_color_hsv(current_time/300 + 64,140,205),make_color_hsv(current_time/300 + 128,140,205),make_color_hsv(current_time/300 + 192,140,205),0);
draw_set_blend_mode(bm_subtract);

draw_surface(sf_mask,0,0);

draw_surface_ext(sf_mask1,0,0,1,1,0,c_white,0.3);

draw_set_blend_mode(bm_normal);

surface_reset_target();



draw_set_blend_mode(bm_normal);
surface_set_target(application_surface)
var r_1;
r_1=3;
draw_surface(sf_inline,0,0);

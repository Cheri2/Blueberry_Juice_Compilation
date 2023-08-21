#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with Player {
    image_xscale = 0.5
    image_yscale = 0.5
}

r = room
x_ = random(800)
y_ = random(640)
x__ = random(800)
y__ = random(640)
a = 1
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
shader_reset()
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with Player {
    image_xscale = 0.5
    if x_scale = -1 or x_scale = 1 x_scale *= 0.5
    image_yscale = 0.5
}

a -= 1/50
if a = 0 {
    x_ = x__
    y_ = y__
    x__ = random(800)
    y__ = random(640)
    a = 1
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if room != r instance_destroy()
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
shader_reset()
shader_pixel_set(very_HueShift())
shader_pixel_uniform_f("amount",(sin(degtorad(current_time/50))*(1/64)) mod 1)
draw_background_tiled_ext(very_purpeBG,x__,y__,1,1,c_white,1)
draw_background_tiled_ext(very_purpeBG,x_,y_,1,1,c_white,a)

#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(MiniSpikeUp) sprite_index=sprUhuhuMiniUp
with(MiniSpikeRight) sprite_index=sprUhuhuMiniRight
with(MiniSpikeDown) sprite_index=sprUhuhuMiniDown
with(MiniSpikeLeft) sprite_index=sprUhuhuMiniLeft
with(SpikeUp) sprite_index=sprUhuhuUp
with(SpikeRight) sprite_index=sprUhuhuRight
with(SpikeDown) sprite_index=sprUhuhuDown
with(SpikeLeft) sprite_index=sprUhuhuLeft
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
i=current_time*0.4*0.1
for(j=8;j<=776;j+=32){
draw_set_blend_mode(bm_add)
draw_set_color(make_color_hsv(166,20,65))
draw_set_alpha(0.5)
draw_rectangle(j,608,j+18,550-100*abs(sin(floor(degtorad(i+j))+j)),0)
draw_rectangle(j,0,j+18,58+100*abs(cos(floor(degtorad(i+j)-j/2))),0)}
draw_set_blend_mode(bm_normal)
draw_set_alpha(1)

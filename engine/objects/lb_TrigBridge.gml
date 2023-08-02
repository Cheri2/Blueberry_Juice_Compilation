#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
trg=0
image_speed=0

// Trigger object for very specific use
// don't use this
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_index=place_meeting(x,y,Player)
if(trg==0) {
    trg=1;
}
if(trg==1) {
with(PlatformRenex) image_angle+=0.5
if(PlatformRenex.image_angle=180) instance_destroy()}

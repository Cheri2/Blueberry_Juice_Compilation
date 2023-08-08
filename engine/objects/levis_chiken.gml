#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 30;
offset = 0;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
for(angle=0; angle <= 360; angle += 30) {
    obj = instance_create(x,y, levis_chiken)
    obj.speed=5;
    obj.direction = angle + offset;
    obj.image_xscale = 0.25;
    obj.image_yscale = 0.25;
    obj.alarm[0] = 0;
    obj.alarm[1] = 90;
}
offset = (offset + 15) mod 360;
alarm[0] = 75;
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy();
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!instance_exists(Item)) {
    instance_destroy();
}

#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
objs = scrArray(PlayerKiller,Platform,SaveHard,Bullet,Blood)
objcount = 5
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!surface_exists(surf)) {
    surf = surface_create(view_wview,view_hview);
}

//Clear the surface, then draw shadow sprites onto surface (at full opacity)
surface_set_target(surf);
draw_clear_alpha(c_black, 0);

event_user(0);
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surf = surface_create(view_wview,view_hview);
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surface_free(surf);
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with Block{
  if object_index == Block{//this part is because the normal block sprite is transparent
    draw_sprite_ext(sprWhite,0,x+3-view_xview,y+3-view_yview,image_xscale,image_yscale,0,c_black,1);
  }else{//platforms and any fully visible block types
    draw_sprite_ext(sprite_index,image_index,x+3-view_xview,y+3-view_yview,image_xscale,image_yscale,image_angle,c_black,image_alpha*1);
  }
}

with Player{
  draw_sprite_ext(sprite_index,image_index,x+3-view_xview,y+3-view_yview,x_scale,global.grav,image_angle,c_black,image_alpha*1);
}

with GameOver{
    if !global.paused{
        draw_sprite_ext(sprite_index,image_index,403,307,image_xscale,image_yscale,image_angle,c_black,real(visible));
    }
}

    with PlayerKiller{
        scrDrawShadow()
    }
        with Platform{
        scrDrawShadow()
    }
        with SaveHard{
        scrDrawShadow()
    }
        with Bullet{
        scrDrawShadow()
    }
        with Blood{
        scrDrawShadow()
    }
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surface_set_target(application_surface)

//Draw the surface
draw_surface_ext(surf,view_xview,view_yview,1,1,0,c_white,.35);

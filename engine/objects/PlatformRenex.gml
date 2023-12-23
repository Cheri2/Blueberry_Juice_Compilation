#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

bounce = true;

platform_floor_prev = 0;

// Half baked platform variant from renex engine
// Should only be used for rotated static platforms
snap_type=0
phase=false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if speed != 0 {
    if bounce {
        if !place_free(x + hspeed, y) {
            hspeed *= -1;
        }
        if !place_free(x, y + vspeed) {
            vspeed *= -1;
        }
    }

    if global.grav * vspeed > 0 {
        with(Player) {
            if !place_meeting(x, y, other) if place_meeting(x, y + other.vspeed, other) {
                if !place_free(x, y + other.vspeed) {
                    move_contact_solid(90 + 180 * (global.grav == 1), abs(other.vspeed));
                }
                else {
                    y += other.vspeed;
                }
            }
        }
    }
}

platform_floor_prev = ternary(global.grav == 1, bbox_top, bbox_bottom);
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (sprite_index=sprPlatform) {
    //code by renex

    if (image_xscale==1 && image_yscale==1) {
        draw_self()
    } else {
        //some of this might be hard to read, but it's all written for maximum speed
        var w,h,u,v;
        w=32*image_xscale
        h=16*image_yscale
        if (w<=24 && h<=24) {
            //square
            draw_sprite_ext(sprSlicePlatform,0,x,y,w/16,h/16,image_angle,image_blend,image_alpha)
        } else {
            u=(w-32)/16
            v=(h-32)/16
            texture_set_repeat(1)
            d3d_transform_stack_push()
            d3d_transform_add_rotation_z(image_angle)
            d3d_transform_add_translation(x-0.5,y-0.5,0)
            if (w>24 && h>24) {
                //9slice
                draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprSlicePlatform,5))
                    draw_vertex_texture(0,0,0,0)
                    draw_vertex_texture(16,0,1,0)
                    draw_vertex_texture(0,16,0,1)
                    draw_vertex_texture(16,16,1,1)
                draw_primitive_end()
                draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprSlicePlatform,6))
                    draw_vertex_texture(16,0,0,0)
                    draw_vertex_texture(w-16,0,u,0)
                    draw_vertex_texture(16,16,0,1)
                    draw_vertex_texture(w-16,16,u,1)
                draw_primitive_end()
                draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprSlicePlatform,7))
                    draw_vertex_texture(w-16,0,0,0)
                    draw_vertex_texture(w,0,1,0)
                    draw_vertex_texture(w-16,16,0,1)
                    draw_vertex_texture(w,16,1,1)
                draw_primitive_end()
                draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprSlicePlatform,9))
                    draw_vertex_texture(0,16,0,0)
                    draw_vertex_texture(16,16,1,0)
                    draw_vertex_texture(0,h-16,0,v)
                    draw_vertex_texture(16,h-16,1,v)
                draw_primitive_end()
                draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprSlicePlatform,10))
                    draw_vertex_texture(16,16,0,0)
                    draw_vertex_texture(w-16,16,u,0)
                    draw_vertex_texture(16,h-16,0,v)
                    draw_vertex_texture(w-16,h-16,u,v)
                draw_primitive_end()
                draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprSlicePlatform,11))
                    draw_vertex_texture(w-16,16,0,0)
                    draw_vertex_texture(w,16,1,0)
                    draw_vertex_texture(w-16,h-16,0,v)
                    draw_vertex_texture(w,h-16,1,v)
                draw_primitive_end()
                draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprSlicePlatform,13))
                    draw_vertex_texture(0,h-16,0,0)
                    draw_vertex_texture(16,h-16,1,0)
                    draw_vertex_texture(0,h,0,1)
                    draw_vertex_texture(16,h,1,1)
                draw_primitive_end()
                draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprSlicePlatform,14))
                    draw_vertex_texture(16,h-16,0,0)
                    draw_vertex_texture(w-16,h-16,u,0)
                    draw_vertex_texture(16,h,0,1)
                    draw_vertex_texture(w-16,h,u,1)
                draw_primitive_end()
                draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprSlicePlatform,15))
                    draw_vertex_texture(w-16,h-16,0,0)
                    draw_vertex_texture(w,h-16,1,0)
                    draw_vertex_texture(w-16,h,0,1)
                    draw_vertex_texture(w,h,1,1)
                draw_primitive_end()
            } else if (w>24) {
                //hor slice
                draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprSlicePlatform,1))
                    draw_vertex_texture(0,0,0,0)
                    draw_vertex_texture(0,h,0,1)
                    draw_vertex_texture(16,0,1,0)
                    draw_vertex_texture(16,h,1,1)
                draw_primitive_end()
                if (w>32) {
                    draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprSlicePlatform,2))
                        draw_vertex_texture(16,0,0,0)
                        draw_vertex_texture(16,h,0,1)
                        draw_vertex_texture(w-16,0,u,0)
                        draw_vertex_texture(w-16,h,u,1)
                    draw_primitive_end()
                }
                draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprSlicePlatform,3))
                    draw_vertex_texture(w-16,0,0,0)
                    draw_vertex_texture(w-16,h,0,1)
                    draw_vertex_texture(w,0,1,0)
                    draw_vertex_texture(w,h,1,1)
                draw_primitive_end()
            } else {
                //vert slice
                draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprSlicePlatform,4))
                    draw_vertex_texture(0,0,0,0)
                    draw_vertex_texture(w,0,1,0)
                    draw_vertex_texture(0,16,0,1)
                    draw_vertex_texture(w,16,1,1)
                draw_primitive_end()
                if (h>32) {
                    draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprSlicePlatform,8))
                        draw_vertex_texture(0,16,0,0)
                        draw_vertex_texture(w,16,1,0)
                        draw_vertex_texture(0,h-16,0,(h-32)/16)
                        draw_vertex_texture(w,h-16,1,(h-32)/16)
                    draw_primitive_end()
                }
                draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprSlicePlatform,12))
                    draw_vertex_texture(0,h-16,0,0)
                    draw_vertex_texture(w,h-16,1,0)
                    draw_vertex_texture(0,h,0,1)
                    draw_vertex_texture(w,h,1,1)
                draw_primitive_end()
            }
            d3d_transform_stack_pop()
        }
    }
} else if (sprite_index!=-1) draw_self()

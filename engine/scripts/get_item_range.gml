// get_item_range(min,max)
// how many blueberries you have in [min,max]??
// used for counting secrets
var temp_cnt, temp_loop;
temp_cnt=0;
for(temp_loop=argument0;temp_loop<=argument1;temp_loop+=1) {
    if(save_get(str_cat("item", string(temp_loop)))) {
        temp_cnt+=1;
    }
}
return temp_cnt;

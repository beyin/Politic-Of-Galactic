draw_self();
var takim=renk4;
draw_text_transformed_color(x-string_width(object_get_name(object_index))*1.5, bbox_top-90, object_get_name(object_index), 3, 3, 0, takim, takim, takim, takim,1);
draw_text(x-string_width(object_get_name(object_index))*1.5,bbox_top-100,health);
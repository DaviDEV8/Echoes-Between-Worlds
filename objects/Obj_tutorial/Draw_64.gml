if (texto != "")
{
    var largura = 900;
    var altura = 120;

    var pos_x = (display_get_gui_width() - largura) / 2;
    var pos_y = display_get_gui_height() - 180;

    draw_set_font(Fnt_dialogo);
    draw_set_alpha(0.8);
    draw_set_colour(c_black);
    draw_rectangle(pos_x, pos_y, pos_x + largura, pos_y + altura, false);
    draw_set_alpha(1);

    draw_set_colour(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_text(display_get_gui_width()/2, pos_y + altura/2, texto);
}
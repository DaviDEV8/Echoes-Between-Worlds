if (ativo)
{
    var largura = 900;
    var altura = 220;

    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();

    var pos_x = (gui_w - largura) / 2;
    var pos_y = (gui_h - altura) / 2;

    // FUNDO
    draw_set_alpha(0.8);
    draw_set_color(c_black);
    draw_rectangle(pos_x, pos_y, pos_x + largura, pos_y + altura, false);
    draw_set_alpha(1);

    // TEXTO
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(Fnt_dialogo);

    draw_text(gui_w/2, pos_y + 40, texto1);
    draw_text(gui_w/2, pos_y + 95, texto2_linha1);
    draw_text(gui_w/2, pos_y + 125, texto2_linha2);
    draw_text(gui_w/2, pos_y + 180, texto3);
}
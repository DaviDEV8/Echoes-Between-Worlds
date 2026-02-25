tamanho = 16
cols = ceil(room_width / tamanho)
lins = ceil(room_height / tamanho)

// variaveis para animação da sprite
//imagem inicial
img = 0;

// velocidade da animação
img_vel = sprite_get_speed(Spr_transicao) / game_get_speed(gamespeed_fps)

// total da animação
img_num = sprite_get_number(Spr_transicao) -1

// controlando pra ver se estou saindo ou entrando da animação
entrando = true

// Espera 3 segundos antes de iniciar o tutorial
if (delay_inicio > 0)
{
    delay_inicio--;
    
    if (delay_inicio <= 0)
    {
        texto = "Use A e D para se mover.";
    }
    
    exit; // impede o resto do código de rodar
}

// ETAPA 0 - Ensinar a andar
if (etapa == 0)
{
    if (keyboard_check(ord("A")) || keyboard_check(ord("D")))
    {
        etapa = 1;
        texto = "Pressione ESPAÇO para pular.";
    }
}

// ETAPA 1 - Ensinar a pular
if (etapa == 1)
{
    if (keyboard_check_pressed(vk_space))
    {
        etapa = 2;
        texto = "Pressione J para usar o portal.";
    }
}

// ETAPA 2 - Usou o portal
if (etapa == 2)
{
    if (keyboard_check_pressed(ord("J")))
    {
        etapa = 3;
        
        texto = "Use o portal para acessar a outra dimensão\n" +
                "e atravessar objetos ou acessar objetos escondidos.";
        
        tempo_texto = game_get_speed(gamespeed_fps) * 8; // 60 segundos
    }
}

// ETAPA 3 - Espera 60s e muda para objetivo
if (etapa == 3)
{
    if (tempo_texto > 0)
    {
        tempo_texto--;
    }
    else
    {
        etapa = 4;
        texto = "Seu objetivo é alcançar a bandeira no final do level";
        
        tempo_texto = game_get_speed(gamespeed_fps) * 8; // se quiser que também suma depois
    }
}

// ETAPA 4 - Some depois de 60s (opcional)
if (etapa == 4)
{
    if (tempo_texto > 0)
    {
        tempo_texto--;
    }
    else
    {
        texto = "";
    }
}
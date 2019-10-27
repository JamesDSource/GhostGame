image_speed = 0;
image_index = 0;
opened = false;
emitter = audio_emitter_create(); 
audio_emitter_falloff(emitter, 100, 5000, 1);
audio_emitter_position(emitter, x, y, 0); 
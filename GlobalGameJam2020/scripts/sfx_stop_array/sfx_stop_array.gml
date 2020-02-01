/// @param sound

var _sound = argument0;

if (defined(_sound)) {
	
	// Check if any sound in an array is playing
	if (is_array(_sound)) {
		for (var i = 0; i < array_length_1d(_sound); i++) {
			if (audio_is_playing(_sound[i]))
				audio_stop_sound(_sound[i]);
		}
	}
	
	// If no array, just check that the specific sound is not playing
	else {
		if (audio_is_playing(_sound))
			audio_stop_sound(_sound);
	}
}
/// @param sound

var _sound		= argument0;
var _playing	= false;

if (defined(_sound)) {
	
	// Check if any sound in an array is playing
	if (is_array(_sound)) {
		for (var i = 0; i < array_length_1d(_sound); i++) {
			if (audio_is_playing(_sound[i])) {
				_playing = true;
				break;
			}
		}
	}
	
	// If no array, just check that the specific sound is not playing
	else {
		if (audio_is_playing(_sound))
			_playing = true;
	}
}
return _playing;
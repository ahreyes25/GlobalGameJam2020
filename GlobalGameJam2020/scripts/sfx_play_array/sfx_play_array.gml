/// @param emitter
/// @param sound
/// @param loop*

#region Arguments
if (argument_count == 3) {
	var _emitter = argument[0];
	var _sound   = argument[1];
	var _loop	 = argument[2];
}
else if (argument_count == 2) {
	var _emitter = argument[0];
	var _sound	 = argument[1];
	var _loop	 = false;
}
else {
	var _emitter = undefined;
	var _sound	 = argument[0];
	var _loop	 = false;
}
#endregion

// Check Sound Emitter
if (defined(_emitter))
	if (!audio_emitter_exists(_emitter))
		return undefined;

if (defined(_sound)) {
	
	// Choose a random sound from an array 
	if (is_array(_sound)) {
		var _sfx_index = irandom_range(0, array_length_1d(_sound) - 1);
		
		if (defined(_emitter)) {
			var _sound_played = audio_play_sound_on(_emitter, _sound[_sfx_index], _loop, 0);
			audio_sound_pitch(_sound_played, random_range(0.95, 1.05));
			return _sound_played;
		}
		else {
			var _sound_played = audio_play_sound(_sound[_sfx_index], _loop, 0);
			audio_sound_pitch(_sound_played, random_range(0.95, 1.05));
			return _sound_played;
		}
	}
	
	// If no array is passed, just play sound
	else {
		if (defined(_emitter)) {
			var _sound_played = audio_play_sound_on(_emitter, _sound, _loop, 0);
			audio_sound_pitch(_sound_played, random_range(0.95, 1.05));
			return _sound_played;
		}
		else {
			var _sound_played = audio_play_sound(_sound, _loop, 0);
			audio_sound_pitch(_sound_played, random_range(0.95, 1.05));
			return _sound_played;
		}
	}
}
return undefined;
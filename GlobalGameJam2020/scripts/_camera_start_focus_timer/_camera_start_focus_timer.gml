if (defined(focus_time) && x == xprevious && y == yprevious && alarm_stopped(alarm_focus_time)) {
	alarm[alarm_focus_time] = focus_time;
	focus_time = undefined;
}
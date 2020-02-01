if (defined(lock_time_y) && y == yprevious && alarm_stopped(alarm_lock_y)) {
	alarm[alarm_lock_y] = lock_time_y;
	lock_time_y = undefined;
}
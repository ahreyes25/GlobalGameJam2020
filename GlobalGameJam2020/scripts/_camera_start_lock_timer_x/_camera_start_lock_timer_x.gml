if (defined(lock_time_x) && x == xprevious && alarm_stopped(alarm_lock_x)) {
	alarm[alarm_lock_x] = lock_time_x;
	lock_time_x = undefined;
}
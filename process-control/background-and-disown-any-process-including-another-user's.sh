# Background and disown any process, including another user's
kill -TSTP $PID && kill -CONT $PID

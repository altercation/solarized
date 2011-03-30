# test python (sample from offlineimap)

class ExitNotifyThread(Thread):
    """This class is designed to alert a "monitor" to the fact that a thread has
    exited and to provide for the ability for it to find out why."""
    def run(self):
        global exitthreads, profiledir
        self.threadid = thread.get_ident()
        try:
            if not profiledir:          # normal case
                Thread.run(self)
            else:
                try:
                    import cProfile as profile
                except ImportError:
                    import profile
                prof = profile.Profile()
                try:
                    prof = prof.runctx("Thread.run(self)", globals(), locals())
                except SystemExit:
                    pass
                prof.dump_stats( \
                            profiledir + "/" + str(self.threadid) + "_" + \
                            self.getName() + ".prof")
        except:
            self.setExitCause('EXCEPTION')
            if sys:
                self.setExitException(sys.exc_info()[1])
                tb = traceback.format_exc()
                self.setExitStackTrace(tb)
        else:
            self.setExitCause('NORMAL')
        if not hasattr(self, 'exitmessage'):
            self.setExitMessage(None)

        if exitthreads:
            exitthreads.put(self, True)

    def setExitCause(self, cause):
        self.exitcause = cause
    def getExitCause(self):
        """Returns the cause of the exit, one of:
        'EXCEPTION' -- the thread aborted because of an exception
        'NORMAL' -- normal termination."""
        return self.exitcause
    def setExitException(self, exc):
        self.exitexception = exc
    def getExitException(self):
        """If getExitCause() is 'EXCEPTION', holds the value from
        sys.exc_info()[1] for this exception."""
        return self.exitexception
    def setExitStackTrace(self, st):
        self.exitstacktrace = st
    def getExitStackTrace(self):
        """If getExitCause() is 'EXCEPTION', returns a string representing
        the stack trace for this exception."""
        return self.exitstacktrace
    def setExitMessage(self, msg):
        """Sets the exit message to be fetched by a subsequent call to
        getExitMessage.  This message may be any object or type except
        None."""
        self.exitmessage = msg
    def getExitMessage(self):
        """For any exit cause, returns the message previously set by
        a call to setExitMessage(), or None if there was no such message
        set."""
        return self.exitmessage

// the open-action; this directive is run when a client attempts to open
// a channel
open

  // the code inside this block will be run when a client attempts to open
  // channel 2
  channel = 2

    // users must send the token "secret" to be able to open this channel
    token = "secret"

      // if the token was correct, we run the script `init.js` the script
      // will set the context variable `$MESSAGE` to the number of 
      // currently active visitors.
      run('./init.js')

      // finally we allow the connecting user to open this channel (the
      // token was correct, after all) and pass the $MESSAGE back to the
      // client (making it available in the onopen-handler).
      allow($MESSAGE)
    end

    // clients that failed to specify the token "secret" are denied access!
    deny()
  end

  // the code inside this next block will be run when a client attempts to 
  // open channel 1
  channel = 1

    // we allow anyone to open this channel, and when they do, we run the
    // script "register_visitor.js".
    run('./register_visitor.js')
  end
end

// the close-action; this directive is run when a client closes a channel
close
  
  // the code inside this next block will be run when a client closes channel
  // 1
  channel = 1

    // run the script "unregister_visitor.js" when a client on channel 1
    // closes the channel.
    run('./unregister_visitor.js')
  end
end

// increment a counter named `visitors` on the channel object. you can use
// any name (or key) here really, but visitors is a pretty good name.
// the channel object refers to channel `1` here as that's the channel
// the client was trying to open when we ran this script.
channel.incr('visitors');

// now let's store a reference to channel `2` (the privileged channel) in the
// variable `priv`.
var priv = domain.getChannel(2);

// emit the value from the counter that we incremented at the top of this
// file to the privilieged channel.
priv.emit(channel.get('visitors').toString());

// we'll reverse the increment in the previous step by decreasing the counter
// `visitors` by one.
channel.decr('visitors');

// and emit the number of visitors to the privileged channel.
var priv = domain.getChannel(2);
priv.emit(channel.get('visitors').toString());

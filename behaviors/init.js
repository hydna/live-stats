// get a reference to the non-privileged channel `1`
var regular = domain.getChannel(1);

// read the value of the `visitors` counter. default to 0 if the counter has
// not yet been initialized.
var count = (regular.get('visitors') || 0).toString();

// exit the script with code `0` (arbitrary) and the number of visitors as the
// message.
exit(0, count);

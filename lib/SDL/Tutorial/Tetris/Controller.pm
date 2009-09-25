package SDL::Tutorial::Tetris::Controller;

use strict;
use warnings;

use base 'SDL::Tutorial::Tetris';

# all controllers inherit these accessors:
use Class::XSAccessor accessors => {
    event => 'event', 
    evt_manager => 'evt_manager'
};

1;

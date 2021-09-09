use v6.*;

use Acme::Cow:ver<0.0.5>:auth<zef:lizmat>;

unit class Acme::Cow::Frogs:ver<0.0.5>:auth<zef:lizmat> is Acme::Cow;

my $frogs = Q:to/EOC/; 
{$balloon}
                                              {$tr}
                                            {$tr}
          oO)-.                       .-(Oo
         /__  _\                     /_  __\
         \  \(  |     ()~()         |  )/  /
          \__|\ |    (-___-)        | /|__/
          '  '--'    ==`-'==        '--'  '
EOC

method new(|c) { callwith( |c, over => 46 ) }
method as_string() { callwith($frogs) }

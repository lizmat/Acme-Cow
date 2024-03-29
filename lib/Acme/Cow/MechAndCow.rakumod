use v6.*;

use Acme::Cow:ver<0.0.5>:auth<zef:lizmat>;

unit class Acme::Cow::MechAndCow:ver<0.0.5>:auth<zef:lizmat> is Acme::Cow;

my $mech_and_cow = Q:to/EOC/;
{$balloon}
                {$tl}                   ,-----.
                  {$tl}                 |     |
                    {$tl}            ,--|     |-.
                         __,----|  |     | |
                       ,;::     |  `_____' |
                       `._______|    i^i   |
                                `----| |---'| .
                           ,-------._| |== ||//
                           |       |_|P`.  /'/
                           `-------' 'Y Y/'/'
                                     .==\ /_\
   ^__^                             /   /'|  `i
   ({$el}{$er})\_______                   /'   /  |   |
   (__)\       )\/\             /'    /   |   `i
    {$U} ||----w |           ___,;`----'.___L_,-'`\__
       ||     ||          i_____;----\.____i""\____\
EOC

method new(|c) { callwith( |c, over => 10 ) }
method as_string() { callwith($mech_and_cow) }

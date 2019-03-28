use v6.c;

use Acme::Cow;

unit class Acme::Cow::TuxStab:ver<0.0.2>:auth<cpan:ELIZABETH> is Acme::Cow;

my $tux_being_stabbed = Q:to/EOC/;
{$balloon}
             {$tl}            ,        ,
               {$tl}         /(        )`
                 {$tl}       \ \___   / |
                        /- _  `-/  '
                       (/\/ \ \   /\
                       / /   | `    \
                       O O   ) /    |
                       `-^--'`<     '
     .--.             (_.)  _  )   /
    |o_o |             `.___/`    /
    |:_/ |              `-----' /
   //<- \ \----.     __ / __   \
  (|  <- | )---|====O)))==) \) /====
 /'\ <- _/`\---'    `--' `.__,' \
 \___)=(___/            |        |
                         \       /
                    ______( (_  / \______
                  ,'  ,-----'   |        \
                  `--\{__________)        \/
EOC

method new(|c)     { callwith( |c, over => 8 ) }
method as_string() { callwith($tux_being_stabbed) }

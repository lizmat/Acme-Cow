use v6.*;

use Acme::Cow:ver<0.0.5>:auth<zef:lizmat>;

unit class Acme::Cow::TuxStab:ver<0.0.5>:auth<zef:lizmat> is Acme::Cow;

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

use v6.*;

use Acme::Cow:ver<0.0.5>:auth<zef:lizmat>;

unit class Acme::Cow::Stegosaurus:ver<0.0.5>:auth<zef:lizmat> is Acme::Cow;

my $stegosaurus = Q:to/EOC/;
{$balloon}
                {$tr}                  .       .
              {$tr}                   / `.   .' " 
            {$tr}             .---.  <    > <    >  .---.
                         |    \  \ - ~ ~ - /  /    |
         _____          ..-~             ~-..-~
        |     |   \~~~\.'                    `./~~~/
       ---------   \__/                        \__/
      .'  O    \     /               /       \  " 
     (_____,    `._.'               |         \}  \/~~~/
      `----.          /       \}     |        /    \__/
            `-.      |       /      |       /      `. ,~~|
                ~-.__|      /_ - ~ ^|      /- _      `..-'   
                     |     /        |     /     ~-.     `-. _  _  _
                     |_____|        |_____|         ~ - . _ _ _ _ _>
EOC

method new(|c) { callwith( |c, over => 20 ) }
method as_string() { callwith($stegosaurus) }

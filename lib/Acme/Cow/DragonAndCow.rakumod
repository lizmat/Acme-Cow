use v6.*;

use Acme::Cow:ver<0.0.5>:auth<zef:lizmat>;

unit class Acme::Cow::DragonAndCow:ver<0.0.5>:auth<zef:lizmat> is Acme::Cow;

my $dragon_and_cow = Q:to/EOC/;
{$balloon}
                 {$tl}                          ^    /^
                    {$tl}                      / \  // \
                       {$tl}     |\___/|      /   \//  .\
                          {$tl}  /O  O  \__  /    //  | \ \           *----*
                            /     /  \/_/    //   |  \  \          \   |
                            @___@`    \/_   //    |   \   \         \/\ \
                           0/0/|       \/_ //     |    \    \         \  \
                       0/0/0/0/|        \///      |     \     \       |  |
                    0/0/0/0/0/_|_ /   (  //       |      \     _\     |  /
                 0/0/0/0/0/0/`/,_ _ _/  ) ; -.    |    _ _\.-~       /   /
                             ,-\}        _      *-.|.-~-.           .~    ~
            \     \__/        `/\      /                 ~-. _ .-~      /
             \____({$el}{$er})           *.   \}            \{                   /
             (    (--)          .----~-.\        \-`                 .~
             //__\\  \__ Ack!   ///.----..<        \             _ -~
            //    \\               ///-._ _ _ _ _ _ _\{^ - - - - ~
EOC

method as_string() { callwith($dragon_and_cow) }

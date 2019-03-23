use v6.c;

class Acme::Cow::TextBalloon:ver<0.0.1>:auth<cpan:ELIZABETH> {
    has  Int $.over is rw = 0;
    has  Int $.wrap is rw = 40;
    has  Str $.mode is rw = 'say';
    has Bool $.fill is rw = True;
    has      @.text;

    method as-list()   { self!construct }
    method as-string() { self!construct.join }

    method add(*@_) { @.text.append(@_) }

    method !fill_text() {
        my @expanded = @.text>>.trim-trailing>>.subst("\t", "        ", :g);
        $.fill ?? self!wrap(@expanded) !! @expanded
    }

    # do the actuall wrapping (simple case of Text::Wrap)
    method !wrap(@lines) {
        my @result;
        my $current = "";
        my $count;

        # for all the words
        for @lines.join(" ").words -> $word {
            $count = $current.chars;

            # something already
            if $count {

                # won't fit
                if $count + 1 + $word.chars > $.wrap {
                    @result.push($current);
                    $current = $word;
                }

                # fits
                else {
                    $current = "$current $word";
                }
            }

            # single word doesn't fit, just use the whole word
            elsif $word.chars >= $.wrap {
                @result.push($word);
            }

            # start a new line
            else {
                $current = $word;
            }
        }

        # final cleanup
        @result.push($current) if $current;
        @result
    }

    method !construct {

        # set up parameters
        my @message = self!fill_text;
        my $max     = @message>>.chars.max;
        my $max2    = $max + 2;        ## border space fudge.
        my @balloon_lines;
        my $shove   = " " x $.over;

        # set up border markers
        my @border; ## up-left, up-right, down-left, down-right, left, right
        if $.mode eq 'think' {
            @border = < ( ) ( ) ( ) >;
        }
        elsif @message < 2 {
            @border = << < > >>;
        }
        else {
            @border = < / \ \ / | | >;
        }

        # set up basic begin format
        my $format = "$shove%s %-{$max}s %s\n";

        # create the final result and return it
        "$shove " ~ ("_" x $max2) ~ "\n",

          sprintf($format, @border[0], @message[0], @border[1]),

          (@message[1 .. *-2].map( {
              sprintf($format, @border[4], $_, @border[5])
          } ) if @message >= 2),
          (sprintf($format, @border[2], @message[*-1], @border[3])
            if @message >= 2),

          "$shove " ~ ("-" x $max2) ~ "\n"
    }
}

# helper to create method aliases
sub alias(Str:D $method, *@aka) {
    my $r := Acme::Cow::TextBalloon.^find_method($method);
    Acme::Cow::TextBalloon.^add_method($_, $r) for @aka;
}

# add method aliases
BEGIN alias("wrap", "wrapcolumn");
BEGIN alias("fill", "adjust");

=begin pod

=head1 NAME

Acme::Cow::TextBalloon - A balloon of text

=head1 SYNOPSIS

=begin code :lang<perl6>

  use Acme::Cow::TextBalloon;

  my Acme::Cow::TextBalloon $x .= new;
  $x.add("bunch of text");
  $x.wrapcolumn(29);

  my Acme::Cow::TextBalloon $y .= new;
  $y.adjust(0);
  $y.add("more text");

=end code

=head1 DESCRIPTION

C<Acme::Cow::TextBalloon> creates and manipulates balloons of text,
optionally printing them.  One may notice that the methods in this
module are named very similarly to those in C<Acme::Cow>; that's
because most of them have to do with the balloon rather than the
cow.

=head1 AUTHOR

Elizabeth Mattijsen <liz@wenzperl.nl>

=head1 COPYRIGHT AND LICENSE

Original Perl 5 version: Copyright 2002 Tony McEnroe,
Perl 6 adaptation: Copyright 2019 Elizabeth Mattijsen

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod

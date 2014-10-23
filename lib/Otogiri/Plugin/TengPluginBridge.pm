package Otogiri::Plugin::TengPluginBridge;
use 5.008005;
use strict;
use warnings;
use Otogiri::Plugin;

our $VERSION = "0.01";

our @EXPORT = qw(load_teng_plugin sql_builder);

sub load_teng_plugin {
    my ($class, $pkg, $opt) = @_;
    $pkg = $pkg =~ s/^\+// ? $pkg : "+Teng::Plugin::$pkg";
    $class->load_plugin($pkg, $opt);
}

sub sql_builder {
    my ($self) = @_;
    return $self->maker;
}

1;
__END__

=encoding utf-8

=head1 NAME

Otogiri::Plugin::TengPluginBridge - Load Teng plugin into Otogiri

=head1 SYNOPSIS

    use Otogiri;
    use Otogiri::Plugin;
    use Otogiri::Plugin::TengPluginBridge;

    my $db = Otogiri->new( connect_info => ... );
    $db->load_plugin('TengPluginBridge');
    $db->load_teng_plugin('SomePlugin'); # Loads Teng::Plugin::SomePlugin

=head1 DESCRIPTION

THIS SOFTWARE IS ALPHA QUALITY.

Otogiri::Plugin::TengPluginBridge is ...

=head1 LICENSE

Copyright (C) Takuya Tsuchida.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

Takuya Tsuchida E<lt>tsucchi@cpan.orgE<gt>

=cut


package App::MadEye::Plugin::Agent::Redis;
use 5.008005;
use strict;
use warnings;
use App::MadEye::Plugin::Agent::Base;
use Redis;

our $VERSION = "0.01";

sub is_dead {
    my ($self, $host) = @_;

    my $conf     = $self->config->{config};
    my $port     = $conf->{port} || 6379;

    my $server = join ':', $host, $port;
    my $redis = Redis->new(
        server => $server,
        ($conf->{password} ? (password => $conf->{password}) : ()),
    );
    my $res = $redis->ping;

    return if $res;
    return "Can't connect redis server: $server";
}

1;
__END__

=encoding utf-8

=head1 NAME

App::MadEye::Plugin::Agent::Redis - Mnitoring the redis in App::MadEye

=head1 SYNOPSIS

    use App::MadEye::Plugin::Agent::Redis;

    - module: Agent::Redis
        config:
        target:
            required: yes
            type: str
        port:
            required: no
            type: int
            default: 6379
        password:
            required: no
            type: str


=head1 DESCRIPTION

App::MadEye::Plugin::Agent::Redis is Plug-in for monitoring the redis in App::MadEye

=head1 SEE ALSO

=over

=item * App::MadEye
L<https://metacpan.org/module/TOKUHIROM/App-MadEye-0.09/lib/App/MadEye.pm>

=back

=head1 LICENSE

Copyright (C) ntakanashi.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

ntakanashi E<lt>ntakanashi666 at gmail.comE<gt>

=cut


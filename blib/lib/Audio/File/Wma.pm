package Audio::File::Wma;

use strict;
use warnings;
use base qw( Audio::File::Type );
use Audio::File::Wma::Tag;
use Audio::File::Wma::AudioProperties;

our $VERSION = '0.01';

=head1 NAME

Audio::File::Wma - represents a WMA/ASF audio file

=head1 DESCRIPTION

An extension to Audio::File enabling support for WMA/ASF files.

Uses Audio::WMA internally to parse necessary information from the file.

=head1 SEE ALSO

L<Audio::WMA>, L<Audio::File>, L<Audio::File::Tag>, L<Audio::File::AudioProperties>

=cut

sub init {
	return 1;
}

sub _create_tag {
	my $self = shift;
	$self->{tag} = Audio::File::Wma::Tag->new( $self->name() ) or return;
	return 1;
}

sub _create_audio_properties {
	my $self = shift;
	$self->{audio_properties} = Audio::File::Wma::AudioProperties->new( $self->name() ) or return;
	return 1;
}

1;

=head1 ACKNOWLEDGEMENTS

Thanks to Florian Ragwitz for writing Audio::File

=head1 AUTHORS

Nathaniel Heinrichs E<lt>nheinric@cpan.orgE<gt>

=head1 COPYRIGHT AND LICENSE

 Copyright (c) 2009 Nathaniel Heinrichs.
 This program is free software; you can redistribute it and/or
 modify it under the same terms as Perl itself.

=cut

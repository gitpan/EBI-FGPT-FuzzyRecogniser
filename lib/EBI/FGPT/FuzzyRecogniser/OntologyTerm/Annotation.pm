=head1 NAME

EBI::FGPT::FuzzyRecogniser::OntologyTerm::Annotation

=head1 SYNOPSIS

  EBI::FGPT::FuzzyRecogniser::OntologyTerm::Annotation contains two fields- value
  and normalised_value

  my $annotationToMatch =
  EBI::FGPT::FuzzyRecogniser::OntologyTerm::Annotation->new( value => $string_to_match );


=head2 METHODS

=over

=item normalise()

Normalises a string by changing it lowercase and
splitting into 2-grams.

=back

=over

=item compare()

Counts how many n-grmas are shared between annotations

=back

=head1 AUTHOR

Emma Hastings , <ehastings@cpan.org>

=head1 ACKNOWLEDGEMENTS

Tomasz Adamusiak <tomasz@cpan.org>
 
=head1 COPYRIGHT AND LICENSE

Copyright (c) 2010 European Bioinformatics Institute. All Rights Reserved.

This module is free software; you can redistribute it and/or modify it 
under GPLv3.

This software is provided "as is" without warranty of any kind.

=cut

package EBI::FGPT::FuzzyRecogniser::OntologyTerm::Annotation;

use lib 'C:\strawberry\perl\site\lib',
  'C:/Users/emma.EBI/Fuzzy/cpan-distribution/FuzzyRecogniser/lib';

use Moose;
use List::Util qw{min max};

our $VERSION = 0.05;

has 'value' => (
				 is  => 'rw',
				 isa => 'Str',
);

has 'normalised_value' => (
							is         => 'ro',
							isa        => 'HashRef',
							lazy_build => 1
);

sub _build_normalised_value {
	my $self = shift;
	return normalise( $self->value );
}

sub normalise {
	my $string = shift;
	$string = lc($string);
	my $q = 2;

	my $ngram;

	# pad the string
	for ( 1 .. $q - 1 ) {
		$string = '^' . $string;
		$string = $string . '$';
	}

	# split ito ngrams
	for my $i ( 0 .. length($string) - $q ) {
		$ngram->{ substr( $string, $i, $q ) }++;
	}

	return $ngram;
}

sub compare($$) {
	# passed string_to_match wrapped in an annotation object
	my ( $self, $annotationToMatch ) = @_;
	#retrieve normalised hashes for the string values of the annotations
	my $template                     = $self->normalised_value();
	my $normalised_annotationToMatch = $annotationToMatch->normalised_value();

	my $ngrams_matched = 0;
	#count ngrams shared between this annotation and the annotation to match
	for my $template_ngram ( keys %{$template} ) {
		$ngrams_matched++ if exists $normalised_annotationToMatch->{$template_ngram};
	}

	# normalise
	return
	  int(
		 $ngrams_matched / max( scalar keys %$template, scalar keys %$normalised_annotationToMatch )
		   * 100 );
}

1;                     # End of EBI::FGPT::FuzzyRecogniser::OntologyTerm::Annotation


=head1 NAME

EBI::FGPT::FuzzyRecogniser::OntologyTerm::Synonym 

=head1 SYNOPSIS

EBI::FGPT::FuzzyRecogniser::OntologyTerm::Label and 
EBI::FGPT::FuzzyRecogniser::OntologyTerm::Synonym  
both extend EBI::FGPT::FuzzyRecogniser::OntologyTerm::Annotation, 
which contains two fields value and normalised_value.

my $synonym = EBI::FGPT::FuzzyRecogniser::OntologyTerm::Synonym->new( value => $value);

=head1 AUTHOR

Emma Hastings , <ehastings@cpan.org>

=head1 ACKNOWLEDGEMENTS

Tomasz Adamusiak <tomasz@cpan.org>
 
=head1 COPYRIGHT AND LICENSE

EBI::FGPT::FuzzyRecogniser module finds the best match 
for the supplied term in the given ontology.

Copyright [2011] EMBL - European Bioinformatics Institute

Licensed free of charge for academic, non-commercial
purposes under the EMBL Standard academic license; and for
a fee to commercial users and/or commercial purposes under
a commercial license.
For download please follow:
http://www.embl-em.de/login.php


=cut

package EBI::FGPT::FuzzyRecogniser::OntologyTerm::Synonym;

use Moose;
our $VERSION = 0.09;

extends 'EBI::FGPT::FuzzyRecogniser::OntologyTerm::Annotation';

1;    # End of EBI::FGPT::FuzzyRecogniser::OntologyTerm::Synonym

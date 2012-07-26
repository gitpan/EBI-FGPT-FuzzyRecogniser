
=head1 NAME

EBI::FGPT::FuzzyRecogniser::OntologyTerm 


=head1 SYNOPSIS

EBI::FGPT::FuzzyRecogniser::OntologyTerm has three fields: 
accession,label and annotations. Annotations is an array containing 
synonyms (type of EBI::FGPT::!FuzzyRecogniser::OntologyTerm::Synonym) 

    use EBI::FGPT::FuzzyRecogniser::OntologyTerm;

    my $term = EBI::FGPT::FuzzyRecogniser::OntologyTerm->new();
    

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

package EBI::FGPT::FuzzyRecogniser::OntologyTerm;

use Moose;


our $VERSION = 0.09;

has 'accession' => ( is => 'rw', isa => 'Str', required => 1 );
has 'label'     => ( is => 'rw', isa => 'Str', required => 1 );
has 'annotations' =>
  ( is => 'rw', isa => 'ArrayRef', required => 1 );
  


1;    # End of FuzzyRecogniser::OntologyTerm

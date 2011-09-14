
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

Copyright (c) 2010 European Bioinformatics Institute. All Rights Reserved.

This module is free software; you can redistribute it and/or modify it 
under GPLv3.

This software is provided "as is" without warranty of any kind.

=cut

package EBI::FGPT::FuzzyRecogniser::OntologyTerm;

use lib 'C:\strawberry\perl\site\lib',
  'C:/Users/emma.EBI/Fuzzy/cpan-distribution/FuzzyRecogniser/lib';

use Moose;


our $VERSION = 0.02;

has 'accession' => ( is => 'rw', isa => 'Str', required => 1 );
has 'label'     => ( is => 'rw', isa => 'Str', required => 1 );
has 'annotations' =>
  ( is => 'rw', isa => 'ArrayRef', required => 1 );
  


1;    # End of FuzzyRecogniser::OntologyTerm

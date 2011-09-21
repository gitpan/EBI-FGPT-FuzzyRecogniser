
=head1 NAME

EBI::FGPT::FuzzyRecogniser::OntologyTerm::Label

=head1 SYNOPSIS

EBI::FGPT::FuzzyRecogniser::OntologyTerm::Label and 
EBI::FGPT::FuzzyRecogniser::OntologyTerm::Synonym  
both extend EBI::FGPT::FuzzyRecogniser::OntologyTerm::Annotation, 
which contains two fields value and normalised_value.

my $label_annot = EBI::FGPT::FuzzyRecogniser::OntologyTerm::Label->new(value => $label);

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

package EBI::FGPT::FuzzyRecogniser::OntologyTerm::Label;


use lib 'C:\strawberry\perl\site\lib',
  'C:/Users/emma.EBI/Fuzzy/cpan-distribution/FuzzyRecogniser/lib';

use Moose;
our $VERSION = 0.05;

extends 'EBI::FGPT::FuzzyRecogniser::OntologyTerm::Annotation';

1;                      # End of EBI::FGPT::FuzzyRecogniser::OntologyTerm::Label

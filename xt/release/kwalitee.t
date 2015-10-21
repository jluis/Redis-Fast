BEGIN {
    unless (-e "$ENV{PWD}/MANIFEST") {       
        require Test::More;
	Test::More::plan(skip_all=>'Installing from a remote git repository omiting Kwalitee tests.');
    }
}

use Test::More;

use Test::Kwalitee::Extra qw(:retry 1 :experimental);

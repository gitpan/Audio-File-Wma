use inc::Module::Install;

if( -e 'MANIFEST.SKIP' ) {
    system( 'pod2text lib/Audio/File/Wma.pm > README' );
}

# Define metadata
name                'Audio-File-Wma';
all_from            'lib/Audio/File/Wma.pm';

# Specific dependencies
requires 'Audio::File';
requires 'Audio::WMA';

WriteAll;

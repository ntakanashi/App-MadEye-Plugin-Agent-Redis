requires 'perl',          '5.008001';
requires 'App::MadEye',   '0.11';
requires 'Redis',          '1.961';

on 'test' => sub {
    requires 'Test::More', '0.98';
};


# NAME

App::MadEye::Plugin::Agent::Redis - Mnitoring the redis in App::MadEye

# SYNOPSIS

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



# DESCRIPTION

App::MadEye::Plugin::Agent::Redis is Plug-in for monitoring the redis in App::MadEye

# SEE ALSO

- App::MadEye
[https://metacpan.org/module/TOKUHIROM/App-MadEye-0.09/lib/App/MadEye.pm](https://metacpan.org/module/TOKUHIROM/App-MadEye-0.09/lib/App/MadEye.pm)

# LICENSE

Copyright (C) ntakanashi.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

ntakanashi <ntakanashi666 at gmail.com>

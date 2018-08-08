component_interface = "0.0.0.0"

VirtualHost "localhost"

--Component "conference.localhost" "muc"

Component "prekeys.localhost"
        component_secret = "this is secret"
        name = "OTR Prekey Server"


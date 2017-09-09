# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Customize the firmware. Uncomment all or parts of the following
# to add files to the root filesystem or modify the firmware
# archive.

# config :nerves, :firmware,
#   rootfs_overlay: "rootfs_overlay",
#   fwup_conf: "config/fwup.conf"

# Use bootloader to start the main application. See the bootloader
# docs for separating out critical OTP applications such as those
# involved with firmware updates.
config :bootloader,
  init: [:nerves_runtime],
  app: :lava

config :nerves_network, :default,
  wlan0: [
    ssid: "ftc",
    psk: "fedex-conf",
    key_mgmt: String.to_atom("WPA-PSK")
  ],
  eth0: [
    ipv4_address_method: :dhcp
  ]

config :nerves_firmware_ssh,
  authorized_keys: [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCtC3RhW772/V54/AgssvJddlYoqrHyCvg4/WtLdLRmpywqBk6vYjLpCKU6X1WJfgAkfpZ3FoBoyK5nK7VC5ijVd6TMcttgTVDTrDTCeoNg+j+CpwyCwPBG3KqOH0NGemEsyf5VolPxibJWTSJEE5yhhY3JRbc8tHHViTZnLCdANSpywZbfLPnXTN2pXVb+2qv66ub668HuytUyEiYJUHZsdLRHDMTDaL2w5WrTEVQJCBF37xnh1jLc1qVval4775UxSGrfPgjGaNoeppP6afUS/RRB7GlbnEs6b8WjLqnaq9fNWpeE4oEeZ2NbxVoTgcZHXvp+4Ad3mHsp1sSBsq39",
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCmciqHfBt8GTED6WTocuLK0cSlWzXOAE0eQI8vvdPCKlgGGgF9kVMxdrWKygPnwaeRkraabDq64KVJu5/vketIooFmqXM+JEkgzQiTntIBu2SP0cOxaWTgEo8n3XgatjGfvpWtVznvdN7Qttcgmt/r0DfFsrW2dfmx7XBctO4TNBdQhDv5ogfbH6pP4ej4kEmK3+mUYmGfCt8lBQ+GLBZU4O573Bii1eWuTCTf1llkW1zfalO2MuXOIJSEGj7XMB9bzXLKCbGAPWI120yevpTR7N9/GaHkfYB29rtUT304oVt6c3msf56lVPmpXzM2UFDKKLwsOmabq5Bosbd/stlJ"
  ]

# Import target specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
# Uncomment to use target specific configurations

# import_config "#{Mix.Project.config[:target]}.exs"

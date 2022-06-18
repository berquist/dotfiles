#!/usr/bin/env bash

dconf dump / > settings.dconf
dconf2nix -i settings.dconf -o dconf.nix

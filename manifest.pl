#!/usr/bin/perl

use strict;
use warnings;

use JSON;

my %colors = (
  base03  => [ 0x00, 0x2b, 0x36 ],
  base02  => [ 0x07, 0x36, 0x42 ],
  base01  => [ 0x58, 0x6e, 0x75 ],
  base00  => [ 0x65, 0x7b, 0x83 ],
  base0   => [ 0x83, 0x94, 0x96 ],
  base1   => [ 0x93, 0xa1, 0xa1 ],
  base2   => [ 0xee, 0xe8, 0xd5 ],
  base3   => [ 0xfd, 0xf6, 0xe3 ],
  yellow  => [ 0xb5, 0x89, 0x00 ],
  orange  => [ 0xcb, 0x4b, 0x16 ],
  red     => [ 0xdc, 0x32, 0x2f ],
  magenta => [ 0xd3, 0x36, 0x82 ],
  violet  => [ 0x6c, 0x71, 0xc4 ],
  blue    => [ 0x26, 0x8b, 0xd2 ],
  cyan    => [ 0x2a, 0xa1, 0x98 ],
  green   => [ 0x85, 0x99, 0x00 ],
);

my @images = qw(theme_frame theme_tab_background theme_toolbar);

print to_json {
  manifest_version => 2,
  version          => '1.0',
  name             => 'Solarized Dark',
  theme            => {
    colors => {
      frame                      => $colors{base03},
      toolbar                    => $colors{base02},
      tab_text                   => $colors{base1},
      tab_background_text        => $colors{base01},
      bookmark_text              => $colors{base1},
      ntp_background             => $colors{base03},
      ntp_text                   => $colors{base0},
      ntp_link                   => $colors{blue},
      ntp_link_underline         => $colors{blue},
      ntp_header                 => $colors{yellow},
      ntp_section                => $colors{base02},
      ntp_section_text           => $colors{base0},
      ntp_section_link           => $colors{blue},
      ntp_section_link_underline => $colors{blue},
      control_background         => $colors{base03},
      button_background          => $colors{base03},
    },
    images => { map { $_ => "images/$_.png" } @images },
  },
};


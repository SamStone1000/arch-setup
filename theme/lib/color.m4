define(`red_channel', `0xff000000')dnl
define(`green_channel', `0x00ff0000')dnl
define(`blue_channel', `0x0000ff00')dnl
define(`rgb_channel', `0xffffff00')dnl
define(`alpha_channel', `0x000000ff')dnl
dnl
define(`rgba', `format(`#%06X%02X', eval($1, 10), hex_alpha($2))')dnl
define(`argb', `format(`#%X', eval(($1 & alpha_channel) << 24 | ($1 & dnl
rgb_channel)))')dnl
dnl
define(`percent_alpha', `format(`%d.%d', eval($1 / 100), eval($1 % 100))')dnl
define(`hex_alpha', `eval(($1 * 255) / 100)')dnl

project('nitrogfx', 'c')

native = get_option('native')
install = native and meson.is_cross_build() ? false : true

libpng_dep = dependency('libpng', native: native)

nitrogfx_exe = executable('nitrogfx',
    sources: [
        'main.c',
        'convert_png.c',
        'gfx.c',
        'jasc_pal.c',
        'lz.c',
        'rl.c',
        'util.c',
        'font.c',
        'huff.c',
        'json.c',
        'cJSON.c',
    ],
    dependencies: libpng_dep,
    native: native,
    install: install
)

meson.override_find_program('nitrogfx', nitrogfx_exe)

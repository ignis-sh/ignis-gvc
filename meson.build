project('ignis-gvc')

prefix = get_option('prefix')

datadir = join_paths(prefix, get_option('datadir'))
libdir = join_paths(prefix, get_option('libdir'))

pkgdatadir = join_paths(datadir, meson.project_name())
pkglibdir = join_paths(libdir, meson.project_name())

subproject('gvc',
    default_options: [
        'package_name=' + meson.project_name(),
        'pkgdatadir=' + pkgdatadir,
        'pkglibdir=' + pkglibdir,
        'static=false',
        'introspection=true',
        'alsa=false'
    ]
)

use Module::Build;

Module::Build->new(
    module_name => 'CGI::Application::Plugin::Session',
    license => 'perl',
    requires => {
        'CGI::Application' => 3.21,
        'CGI::Session'     => 3.95,
        'File::Spec'       => 0,
        'Scalar::Util'     => 0,
    },
    build_requires => {
        'Test::More' => 0,
    },
    recommends => {
        'Test::Exception' => 0,
    },
    create_makefile_pl => 'traditional',
    dist_author => 'Cees Hek <ceeshek@gmail.com>',
    dist_abstract => 'Plugin that adds session support to CGI::Application',
)->create_build_script;


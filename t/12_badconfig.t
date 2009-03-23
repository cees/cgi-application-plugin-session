use lib './t';
use Test::More;
BEGIN {
    eval { require Test::Exception; Test::Exception->import; };
    if ( $@ ) {
        plan skip_all => 'These tests require Test::Exception';
    }
    else {
         plan tests => 1;
    }
};

{
    package TestAppBadConfig;
    @TestAppBadConfig::ISA = qw(CGI::Application);
    use CGI::Application::Plugin::Session;
};

my $app = TestAppBadConfig->new();
$app->session_config( CGI_SESSION_OPTIONS => [ "driver:invalid_driver", $app->query ] );

dies_ok(sub { $app->session }, 'creation of CGI::Session object fails with a bad config');

1;

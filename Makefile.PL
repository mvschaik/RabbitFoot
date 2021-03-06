use inc::Module::Install;

name 'Net-RabbitFoot';
all_from 'lib/Net/RabbitFoot.pm';

requires 'Moose';
requires 'MooseX::AttributeHelpers';
requires 'MooseX::App::Cmd';
requires 'MooseX::ConfigFromFile';
requires 'Config::Any';
requires 'JSON::XS';
requires 'List::MoreUtils';
requires 'AnyEvent::RabbitMQ' => '1.03';
requires 'Coro';
requires 'Coro::AnyEvent';

tests 't/*.t';
author_tests 'xt';
install_share;

build_requires 'Test::More';
build_requires 'Test::Exception';
build_requires 'version';
install_script 'rabbit_foot';
auto_install;
WriteAll;

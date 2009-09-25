#!/usr/bin/perl

use strict;
use warnings;

use lib './lib';

use SDL::Tutorial::Tetris::Event;
use SDL::Tutorial::Tetris::View;
use SDL::Tutorial::Tetris::Controller::Keyboard;
use SDL::Tutorial::Tetris::Controller::CPUSpinner;
use SDL::Tutorial::Tetris::Controller::Game;

use Data::Dumper;

our ($EDEBUG, $KEYDEBUG, $GDEBUG, $FPS) = @ARGV;

my $manager  = SDL::Tutorial::Tetris::Event::Manager->new;
my $keybd    = SDL::Tutorial::Tetris::Controller::Keyboard->new($manager);
my $spinner  = SDL::Tutorial::Tetris::Controller::CPUSpinner->new($manager);
my $gameView = SDL::Tutorial::Tetris::View::Game->new($manager);
my $game     = SDL::Tutorial::Tetris::Controller::Game->new($manager);

$game->EDEBUG($EDEBUG);
$game->GDEBUG($GDEBUG);
$game->KEYDEBUG($KEYDEBUG);
$game->FPS($FPS);

$spinner->run;

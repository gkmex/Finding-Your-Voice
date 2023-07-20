#!/usr/bin/perl

# Finding Your Voice

# 1
use strict;
use warnings;

# 2
my $goal = "finding your voice";

# 3
my $strategy1 = "keep an open mind";
my $strategy2 = "practice speaking out loud";
my $strategy3 = "listen to others";

# 4
sub find_your_voice{
  print "$goal\n\n";
  print "Strategies for $goal:\n";
  print "1. $strategy1\n";
  print "2. $strategy2\n";
  print "3. $strategy3\n";
}

# 5
find_your_voice();

# 6
my $num_strategies = 3;

# 7
for (my $i = 1; $i <= $num_strategies; $i++){
  my $strat = eval("\$strategy$i");
  print "\n$strat\n";
  my $examples = eval("examples_for_strategy$i()");
  print "$examples\n";
}

# 8
sub examples_for_strategy1{
  return "Examples of $strategy1 include attending seminars
  to learn from experts or reading books that discuss
  different perspectives";
}

# 9
sub examples_for_strategy2{
  return "Examples of $strategy2 include talking to
  yourself in the mirror, engaging in debates with friends
  or presenting in front of the class";
}

# 10
sub examples_for_strategy3{
  return "Examples of $strategy3 include listening intently
  to lectures, listening to podcasts with new ideas or
  reading books written by experts";
}

# 11
my $strategy = "practice speaking out loud";
my $strategy_num = 2;

# 12
my $example = eval("examples_for_strategy$strategy_num()");

print "\nFor the strategy '$strategy', here are some examples:\n$example\n";

# 13
my @strategies;

# 14
push(@strategies, $strategy1);
push(@strategies, $strategy2);
push(@strategies, $strategy3);

# 15
foreach my $strat (@strategies){
  my $example = eval("examples_for_strategy$strategy_num()");
  print "\nFor the strategy '$strat', here are some examples:\n$example\n";
  $strategy_num = $strategy_num + 1;
}

# 16
my $motto = "Never give up on finding your voice";

# 17
print "\nHere is a motto to help you in $goal: \"$motto\"\n";

# 18
sub create_motto{
  print "$motto\n";
}

# 19
create_motto();

# 20
sub create_motto_for{
  my ($input) = @_;
  print "Never give up on $input\n";
}

# 21
create_motto_for($goal);

# 22
my $example_motto = create_motto_for("reaching your goals");

# 23
if ($example_motto ne ""){
  print "$example_motto\n";
}

# 24
sub create_motto_with_action{
  my ($action) = @_;
  print "Always $action when finding your voice\n";
}

# 25
create_motto_with_action("listen");

# 26
my $motto_with_action = create_motto_with_action("ask questions");

# 27
if ($motto_with_action ne ""){
  print "$motto_with_action\n";
}

# 28
my $other_motto = create_motto_with_action("think outside the box");

# 29
if ($other_motto ne ""){
  print "$other_motto\n";
}

# 30
sub get_motto_from_input{
  my ($input) = @_;
  print "Never give up on $input\n";
}

# 31
my $input = "working hard";
my $motto_from_input = get_motto_from_input($input);

# 32
if ($motto_from_input ne ""){
  print "$motto_from_input\n";
}

# 33
get_motto_from_input("being kind");

# 34
my $motto_list;

# 35
$motto_list = get_motto_from_input("staying true to yourself");

# 36
if ($motto_list ne ""){
  print "$motto_list\n";
}

# 37
sub find_your_voice_motto{
  my ($input) = @_;
  print "Never give up on $input\n";
}

# 38
find_your_voice_motto($goal);

# 39
my $motto_goal = find_your_voice_motto("reaching your dreams");

# 40
if ($motto_goal ne ""){
  print "$motto_goal\n";
}

# 41
sub dedication_motto{
  my ($input) = @_;
  print "Always be dedicated to $input\n";
}

# 42
dedication_motto("finding your voice");

# 43
my $dedication_motto = dedication_motto("following your passions");

# 44
if ($dedication_motto ne ""){
  print "$dedication_motto\n";
}

# 45
sub create_success_motto{
  my ($input) = @_;
  print "Success comes to those who dedicate themselves to $input\n";
}

# 46
create_success_motto("finding their voice");

# 47
my $success_motto = create_success_motto("staying true to themselves");

# 48
if ($success_motto ne ""){
  print "$success_motto\n";
}

# 49
sub attitude_motto{
  my ($input) = @_;
  print "An optimistic attitude is essential in $input\n";
}

# 50
attitude_motto($goal);

# 51
my $attitude_motto = attitude_motto("working towards a goal");

# 52
if ($attitude_motto ne ""){
  print "$attitude_motto\n";
}

# 53
sub change_motto{
  my ($input) = @_;
  print "Change is the only constant in $input\n";
}

# 54
change_motto($goal);

# 55
my $change_motto = change_motto("reaching your dreams");

# 56
if ($change_motto ne ""){
  print "$change_motto\n";
}

# 57
sub challenge_motto{
  my ($input) = @_;
  print "Risk taking is necessary in $input\n";
}

# 58
challenge_motto("finding your voice");

# 59
my $challenge_motto = challenge_motto("going after your goals");

# 60
if ($challenge_motto ne ""){
  print "$challenge_motto\n";
}

# 61
sub creativity_motto{
  my ($input) = @_;
  print "Creativity is the key to success in $input\n";
}

# 62
creativity_motto($goal);

# 63
my $creativity_motto = creativity_motto("pursuing your dreams");

# 64
if ($creativity_motto ne ""){
  print "$creativity_motto\n";
}

# 65
sub innovation_motto{
  my ($input) = @_;
  print "Innovation is essential in $input\n";
}

# 66
innovation_motto($goal);

# 67
my $innovation_motto = innovation_motto("being yourself");

# 68
if ($innovation_motto ne ""){
  print "$innovation_motto\n";
}

# 69
sub persistence_motto{
  my ($input) = @_;
  print "Persistence is the key to success in $input\n";
}

# 70
persistence_motto($goal);

# 71
my $persistence_motto = persistence_motto("achieving your goals");

# 72
if ($persistence_motto ne ""){
  print "$persistence_motto\n";
}

# 73
sub motivation_motto{
  my ($input) = @_;
  print "Staying motivated is essential in $input\n";
}

# 74
motivation_motto($goal);

# 75
my $motivation_motto = motivation_motto("reaching your goals");

# 76
if ($motivation_motto ne ""){
  print "$motivation_motto\n";
}

# 77
sub self_belief_motto{
  my ($input) = @_;
  print "Believing in yourself is key in $input\n";
}

# 78
self_belief_motto($goal);

# 79
my $self_belief_motto = self_belief_motto("following your passions");

# 80
if ($self_belief_motto ne ""){
  print "$self_belief_motto\n";
}

# 81
sub determination_motto{
  my ($input) = @_;
  print "Determination is necessary in $input\n";
}

# 82
determination_motto($goal);

# 83
my $determination_motto = determination_motto("making your dreams come true");

# 84
if ($determination_motto ne ""){
  print "$determination_motto\n";
}

# 85
sub courage_motto{
  my ($input) = @_;
  print "Courage is needed in $input\n";
}

# 86
courage_motto($goal);

# 87
my $courage_motto = courage_motto("finding your own path");

# 88
if ($courage_motto ne ""){
  print "$courage_motto\n";
}

# 89
sub resilience_motto{
  my ($input) = @_;
  print "Resilience is key in $input\n";
}

# 90
resilience_motto($goal);

# 91
my $resilience_motto = resilience_motto("staying true to yourself");

# 92
if ($resilience_motto ne ""){
  print "$resilience_motto\n";
}

# 93
sub learning_motto{
  my ($input) = @_;
  print "Continuous learning is essential in $input\n";
}

# 94
learning_motto($goal);

# 95
my $learning_motto = learning_motto("achieving success");

# 96
if ($learning_motto ne ""){
  print "$learning_motto\n";
}

# 97
sub focus_motto{
  my ($input) = @_;
  print "Focus is important in $input\n";
}

# 98
focus_motto($goal);

# 99
my $focus_motto = focus_motto("reaching your goals");

# 100
if ($focus_motto ne ""){
  print "$focus_motto\n";
}
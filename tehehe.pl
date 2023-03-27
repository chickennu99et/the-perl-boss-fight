#!/usr/bin/perl

my $pdamage = 0;
my $pmaxdamage = 10;
my $pmindamage = 5;
my $edamage = 0;
my $emindamage = 5;
my $emaxdamage = 15;
my $enemyhealth = 50;
my $hp = 20;
my $heal = 0;
my $wdyd = 0;
my $gameon = 0;
my $wdyd2 = 0;
my $wdyd3 = 0;
my $holup = 1;
while($holup==1)
{
print "what do you want to do?\n";
system "sleep 0.5";
print "start? 1\n";
system "sleep 0.5";
print "settings? 2\n";
$wdyd2 = <>;
if($wdyd2==1)
{
  $gameon++;
  $holup--;
}elsif($wdyd2==2)
{
  print "what would you like to change?\n";
  system "sleep 1";
  print "hp? 1\n";
  system "sleep 0.5";
  print "attack damage? 2\n";
  system "sleep 0.5";
  print "enemy health? 3\n";
  system "sleep 0.5";
  print "enemy damage? 4\n";
  $wdyd3 = <>;
  system "sleep 1";
  if($wdyd3==1)
  {
    print"\nwhat do you want it to be?\n";
    $hp = <>;
    if($hp<=0)
    {
      system "sleep 1";
      print "bruh, ima just set it back to 20\n";
      $hp = 20;
      system "sleep 1";
    }
  }elsif($wdyd3==2)
  {
    print "what do you want the minimum to be?\n";
    $pmindamage = <>;
    if($pmindamage<=0)
    {
      system "sleep 0.5";
      print"\nbruh, ima just make it 5 again\n";
      $pmindamage = 5;
      system "sleep 1";
    }
    print"\nwhat do you want the maximum to be?\n";
    $pmaxdamage = <>;
    if($pmaxdamage<=0)
    {
      system "sleep 0.5";
      print"\nbruh, ima just make it 10 again\n";
      $pmaxdamage = 10;
      system "sleep 1";
    }elsif($pmaxdamage<$pmindamage)
    {
      system "sleep 0.5";
      print"\nbruh, ima just make it 10 and 5 again\n";
      $pmaxdamage = 10;
      $pmindamage = 5;
      system "sleep 1";
    }
  }elsif($wdyd3==3)
  {
    print "what do you want the enemies health to be?\n\n";
    $enemyhealth = <>;
    if($enemyhealth<=0)
    {
      system "sleep 1";
      print "bruh, ima just set it back to 50\n";
      $enemyhealth = 50;
      system "sleep 1";
    }
  }elsif($wdyd3==4)
  {
    print "what do you want the minimum to be?\n\n";
    $emindamage = <>;
    if($emindamage<=0)
    {
      system "sleep 1";
      print "bruh, ima just set it back to 5\n";
      $emindamage = 5;
      system "sleep 1";
    }
    print "what do you want the maximum to be?\n\n";
    $emaxdamage = <>;
    if($emaxdamage<=0)
    {
      system "sleep 1";
      print "bruh, ima just set it back to 15\n";
      $emaxdamage = 15;
      system "sleep 1";
    }elsif($emaxdamage<$emindamage)
    {
      system "sleep 1";
      print "bruh, ima just set it back to 5 and 15\n";
      $emaxdamage = 15;
      $emindamage = 5;
      system "sleep 1";
    }
  }
}
system ("clear");
}
while ($gameon==1)
{
  print "enemy health: $enemyhealth\n";
  sleep 1;
  print "player health:$hp\n";
  sleep 1;
  print "what do you do?\n\n";
  system"sleep 0.5";
  print"attack? 1\n";
  system"sleep 0.5";
  print"heal? 2\n";
  system"sleep 0.5";
  print"suislide? 3\n\n";
  system"sleep 0.5";
  $wdyd = <>;
  if($wdyd==1)
  {
    $pdamage = int(rand($pmaxdamage)) + $pmindamage;
    print "you delt: $pdamage damage\n\n";
    $enemyhealth = $enemyhealth - $pdamage;
    sleep 1;
  }elsif($wdyd==2){
    $heal = int(rand(10)) + 2;
    print "you healed:$heal hp\n";
    $hp = $hp + $heal;
    sleep 1;
  }elsif($wdyd==3){
   $hp = $hp - 1000000;
   print"\nwhy are you gay?\n";
  }else{
  print "bruh type a number\n\n";
  }
  if($enemyhealth<=0)
  {
    print"game over, you win!\n";
    system "sleep 1";
    $gameon--;
  }
  if(wdyd<3)
  {
    $edamage = int(rand($emaxdamage)) + $emindamage;
    $hp = $hp - $edamage;
    if(edamage > 0)
    {
      print "\nthe boss attacks you,";
      system "sleep 0.5";
      print "\nhe delt:$edamage";
    }else{
      print"he missed!";
    }
  }
  if($hp<=0)
  {
    print"\ngame over, you die";
    system "sleep 1";
    $gameon--;
  }
  sleep 1;
  system("clear");
}

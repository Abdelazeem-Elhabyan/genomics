#! /usr/bin/perl -w
#
# Convert SOLiD file to format acceptible to R
# Creates 1 file per position of read
# Ian Donaldson 20 July 2010
# Modified to also output a second set of file in primer order - 5 Aug 2010
# Modified to obsfurcate the file names etc in the example below - 16 Jun 2011 (PJB)

use strict;

# example qual
# Thu May 20 10:34:56 2010 /share/apps/corona/bin/filter_fasta.pl --output=/data/results/.../results.F1B1/primary.20100520164903182 --name=solid0424_20100511_blah_blah --tag=F3 --minlength=50 --mincalls=25 --prefix=T /data/results/.../jobs/postPrimerSetPrimary.2176/rawseq 
# Cwd: /home/pipeline
# Title: solid0424_20100511_blah_blah
# >932_7_59_F3
# -1 -1 -1 -1 -1 4 8 4 4 -1 4 8 -1 -1 -1 -1 5 -1 4 -1 4 4 -1 4 -1 -1 4 4 -1 -1 4 -1 -1 4 -1 -1 4 4 4 -1 5 5 5 4 -1 4 5 -1 4 4 

# usage
unless(@ARGV == 2) {
   die"USAGE: $0 | Input qual file | Output suffix\n\n";
}

# input
open(INPUT, "<$ARGV[0]") or die("Could not open input!");

# output for sequence positions
open(OUTPUT1, ">$ARGV[1]\_posnAA") or die("Could not open output for position 1");
open(OUTPUT2, ">$ARGV[1]\_posnAB") or die("Could not open output for position 2");
open(OUTPUT3, ">$ARGV[1]\_posnAC") or die("Could not open output for position 3");
open(OUTPUT4, ">$ARGV[1]\_posnAD") or die("Could not open output for position 4");
open(OUTPUT5, ">$ARGV[1]\_posnAE") or die("Could not open output for position 5");
open(OUTPUT6, ">$ARGV[1]\_posnAF") or die("Could not open output for position 6");
open(OUTPUT7, ">$ARGV[1]\_posnAG") or die("Could not open output for position 7");
open(OUTPUT8, ">$ARGV[1]\_posnAH") or die("Could not open output for position 8");
open(OUTPUT9, ">$ARGV[1]\_posnAI") or die("Could not open output for position 9");
open(OUTPUT10, ">$ARGV[1]\_posnAJ") or die("Could not open output for position 10");
open(OUTPUT11, ">$ARGV[1]\_posnAK") or die("Could not open output for position 11");
open(OUTPUT12, ">$ARGV[1]\_posnAL") or die("Could not open output for position 12");
open(OUTPUT13, ">$ARGV[1]\_posnAM") or die("Could not open output for position 13");
open(OUTPUT14, ">$ARGV[1]\_posnAN") or die("Could not open output for position 14");
open(OUTPUT15, ">$ARGV[1]\_posnAO") or die("Could not open output for position 15");
open(OUTPUT16, ">$ARGV[1]\_posnAP") or die("Could not open output for position 16");
open(OUTPUT17, ">$ARGV[1]\_posnAQ") or die("Could not open output for position 17");
open(OUTPUT18, ">$ARGV[1]\_posnAR") or die("Could not open output for position 18");
open(OUTPUT19, ">$ARGV[1]\_posnAS") or die("Could not open output for position 19");
open(OUTPUT20, ">$ARGV[1]\_posnAT") or die("Could not open output for position 20");
open(OUTPUT21, ">$ARGV[1]\_posnAU") or die("Could not open output for position 21");
open(OUTPUT22, ">$ARGV[1]\_posnAV") or die("Could not open output for position 22");
open(OUTPUT23, ">$ARGV[1]\_posnAW") or die("Could not open output for position 23");
open(OUTPUT24, ">$ARGV[1]\_posnAX") or die("Could not open output for position 24");
open(OUTPUT25, ">$ARGV[1]\_posnAY") or die("Could not open output for position 25");
open(OUTPUT26, ">$ARGV[1]\_posnAZ") or die("Could not open output for position 26");
open(OUTPUT27, ">$ARGV[1]\_posnBA") or die("Could not open output for position 27");
open(OUTPUT28, ">$ARGV[1]\_posnBB") or die("Could not open output for position 28");
open(OUTPUT29, ">$ARGV[1]\_posnBC") or die("Could not open output for position 29");
open(OUTPUT30, ">$ARGV[1]\_posnBD") or die("Could not open output for position 30");
open(OUTPUT31, ">$ARGV[1]\_posnBE") or die("Could not open output for position 31");
open(OUTPUT32, ">$ARGV[1]\_posnBF") or die("Could not open output for position 32");
open(OUTPUT33, ">$ARGV[1]\_posnBG") or die("Could not open output for position 33");
open(OUTPUT34, ">$ARGV[1]\_posnBH") or die("Could not open output for position 34");
open(OUTPUT35, ">$ARGV[1]\_posnBI") or die("Could not open output for position 35");
open(OUTPUT36, ">$ARGV[1]\_posnBJ") or die("Could not open output for position 36");
open(OUTPUT37, ">$ARGV[1]\_posnBK") or die("Could not open output for position 37");
open(OUTPUT38, ">$ARGV[1]\_posnBL") or die("Could not open output for position 38");
open(OUTPUT39, ">$ARGV[1]\_posnBM") or die("Could not open output for position 39");
open(OUTPUT40, ">$ARGV[1]\_posnBN") or die("Could not open output for position 40");
open(OUTPUT41, ">$ARGV[1]\_posnBO") or die("Could not open output for position 41");
open(OUTPUT42, ">$ARGV[1]\_posnBP") or die("Could not open output for position 42");
open(OUTPUT43, ">$ARGV[1]\_posnBQ") or die("Could not open output for position 43");
open(OUTPUT44, ">$ARGV[1]\_posnBR") or die("Could not open output for position 44");
open(OUTPUT45, ">$ARGV[1]\_posnBS") or die("Could not open output for position 45");
open(OUTPUT46, ">$ARGV[1]\_posnBT") or die("Could not open output for position 46");
open(OUTPUT47, ">$ARGV[1]\_posnBU") or die("Could not open output for position 47");
open(OUTPUT48, ">$ARGV[1]\_posnBV") or die("Could not open output for position 48");
open(OUTPUT49, ">$ARGV[1]\_posnBW") or die("Could not open output for position 49");
open(OUTPUT50, ">$ARGV[1]\_posnBX") or die("Could not open output for position 50");

# output for primer positions
open(OUTPUT51, ">$ARGV[1]\_pposn01") or die("Could not open output for pposition 1");
open(OUTPUT52, ">$ARGV[1]\_pposn02") or die("Could not open output for pposition 2");
open(OUTPUT53, ">$ARGV[1]\_pposn03") or die("Could not open output for pposition 3");
open(OUTPUT54, ">$ARGV[1]\_pposn04") or die("Could not open output for pposition 4");
open(OUTPUT55, ">$ARGV[1]\_pposn05") or die("Could not open output for pposition 5");
open(OUTPUT56, ">$ARGV[1]\_pposn06") or die("Could not open output for pposition 6");
open(OUTPUT57, ">$ARGV[1]\_pposn07") or die("Could not open output for pposition 7");
open(OUTPUT58, ">$ARGV[1]\_pposn08") or die("Could not open output for pposition 8");
open(OUTPUT59, ">$ARGV[1]\_pposn09") or die("Could not open output for pposition 9");
open(OUTPUT60, ">$ARGV[1]\_pposn10") or die("Could not open output for pposition 10");
open(OUTPUT61, ">$ARGV[1]\_pposn11") or die("Could not open output for pposition 11");
open(OUTPUT62, ">$ARGV[1]\_pposn12") or die("Could not open output for pposition 12");
open(OUTPUT63, ">$ARGV[1]\_pposn13") or die("Could not open output for pposition 13");
open(OUTPUT64, ">$ARGV[1]\_pposn14") or die("Could not open output for pposition 14");
open(OUTPUT65, ">$ARGV[1]\_pposn15") or die("Could not open output for pposition 15");
open(OUTPUT66, ">$ARGV[1]\_pposn16") or die("Could not open output for pposition 16");
open(OUTPUT67, ">$ARGV[1]\_pposn17") or die("Could not open output for pposition 17");
open(OUTPUT68, ">$ARGV[1]\_pposn18") or die("Could not open output for pposition 18");
open(OUTPUT69, ">$ARGV[1]\_pposn19") or die("Could not open output for pposition 19");
open(OUTPUT70, ">$ARGV[1]\_pposn20") or die("Could not open output for pposition 20");
open(OUTPUT71, ">$ARGV[1]\_pposn21") or die("Could not open output for pposition 21");
open(OUTPUT72, ">$ARGV[1]\_pposn22") or die("Could not open output for pposition 22");
open(OUTPUT73, ">$ARGV[1]\_pposn23") or die("Could not open output for pposition 23");
open(OUTPUT74, ">$ARGV[1]\_pposn24") or die("Could not open output for pposition 24");
open(OUTPUT75, ">$ARGV[1]\_pposn25") or die("Could not open output for pposition 25");
open(OUTPUT76, ">$ARGV[1]\_pposn26") or die("Could not open output for pposition 26");
open(OUTPUT77, ">$ARGV[1]\_pposn27") or die("Could not open output for pposition 27");
open(OUTPUT78, ">$ARGV[1]\_pposn28") or die("Could not open output for pposition 28");
open(OUTPUT79, ">$ARGV[1]\_pposn29") or die("Could not open output for pposition 29");
open(OUTPUT80, ">$ARGV[1]\_pposn30") or die("Could not open output for pposition 30");
open(OUTPUT81, ">$ARGV[1]\_pposn31") or die("Could not open output for pposition 31");
open(OUTPUT82, ">$ARGV[1]\_pposn32") or die("Could not open output for pposition 32");
open(OUTPUT83, ">$ARGV[1]\_pposn33") or die("Could not open output for pposition 33");
open(OUTPUT84, ">$ARGV[1]\_pposn34") or die("Could not open output for pposition 34");
open(OUTPUT85, ">$ARGV[1]\_pposn35") or die("Could not open output for pposition 35");
open(OUTPUT86, ">$ARGV[1]\_pposn36") or die("Could not open output for pposition 36");
open(OUTPUT87, ">$ARGV[1]\_pposn37") or die("Could not open output for pposition 37");
open(OUTPUT88, ">$ARGV[1]\_pposn38") or die("Could not open output for pposition 38");
open(OUTPUT89, ">$ARGV[1]\_pposn39") or die("Could not open output for pposition 39");
open(OUTPUT90, ">$ARGV[1]\_pposn40") or die("Could not open output for pposition 40");
open(OUTPUT91, ">$ARGV[1]\_pposn41") or die("Could not open output for pposition 41");
open(OUTPUT92, ">$ARGV[1]\_pposn42") or die("Could not open output for pposition 42");
open(OUTPUT93, ">$ARGV[1]\_pposn43") or die("Could not open output for pposition 43");
open(OUTPUT94, ">$ARGV[1]\_pposn44") or die("Could not open output for pposition 44");
open(OUTPUT95, ">$ARGV[1]\_pposn45") or die("Could not open output for pposition 45");
open(OUTPUT96, ">$ARGV[1]\_pposn46") or die("Could not open output for pposition 46");
open(OUTPUT97, ">$ARGV[1]\_pposn47") or die("Could not open output for pposition 47");
open(OUTPUT98, ">$ARGV[1]\_pposn48") or die("Could not open output for pposition 48");
open(OUTPUT99, ">$ARGV[1]\_pposn49") or die("Could not open output for pposition 49");
open(OUTPUT100, ">$ARGV[1]\_pposn50") or die("Could not open output for pposition 50");


# Header for R output
#print OUTPUT "p$posn\n";

# extract data from file line by line
my $count = 0;

while(defined(my $line = <INPUT>)) {
   if($line =~ /(^#|^>)/) { next } # comment lines and headers

   $count++;

   #print "$count\n";

   # Output in sequence order
   my @line_bits = split(/\s/, $line);
   print OUTPUT1 "$line_bits[0]\n";
   print OUTPUT2 "$line_bits[1]\n";
   print OUTPUT3 "$line_bits[2]\n";
   print OUTPUT4 "$line_bits[3]\n";
   print OUTPUT5 "$line_bits[4]\n";
   print OUTPUT6 "$line_bits[5]\n";
   print OUTPUT7 "$line_bits[6]\n";
   print OUTPUT8 "$line_bits[7]\n";
   print OUTPUT9 "$line_bits[8]\n";
   print OUTPUT10 "$line_bits[9]\n";
   print OUTPUT11 "$line_bits[10]\n";
   print OUTPUT12 "$line_bits[11]\n";
   print OUTPUT13 "$line_bits[12]\n";
   print OUTPUT14 "$line_bits[13]\n";
   print OUTPUT15 "$line_bits[14]\n";
   print OUTPUT16 "$line_bits[15]\n";
   print OUTPUT17 "$line_bits[16]\n";
   print OUTPUT18 "$line_bits[17]\n";
   print OUTPUT19 "$line_bits[18]\n";
   print OUTPUT20 "$line_bits[19]\n";
   print OUTPUT21 "$line_bits[20]\n";
   print OUTPUT22 "$line_bits[21]\n";
   print OUTPUT23 "$line_bits[22]\n";
   print OUTPUT24 "$line_bits[23]\n";
   print OUTPUT25 "$line_bits[24]\n";
   print OUTPUT26 "$line_bits[25]\n";
   print OUTPUT27 "$line_bits[26]\n";
   print OUTPUT28 "$line_bits[27]\n";
   print OUTPUT29 "$line_bits[28]\n";
   print OUTPUT30 "$line_bits[29]\n";
   print OUTPUT31 "$line_bits[30]\n";
   print OUTPUT32 "$line_bits[31]\n";
   print OUTPUT33 "$line_bits[32]\n";
   print OUTPUT34 "$line_bits[33]\n";
   print OUTPUT35 "$line_bits[34]\n";
   print OUTPUT36 "$line_bits[35]\n";
   print OUTPUT37 "$line_bits[36]\n";
   print OUTPUT38 "$line_bits[37]\n";
   print OUTPUT39 "$line_bits[38]\n";
   print OUTPUT40 "$line_bits[39]\n";
   print OUTPUT41 "$line_bits[40]\n";
   print OUTPUT42 "$line_bits[41]\n";
   print OUTPUT43 "$line_bits[42]\n";
   print OUTPUT44 "$line_bits[43]\n";
   print OUTPUT45 "$line_bits[44]\n";
   print OUTPUT46 "$line_bits[45]\n";
   print OUTPUT47 "$line_bits[46]\n";
   print OUTPUT48 "$line_bits[47]\n";
   print OUTPUT49 "$line_bits[48]\n";
   print OUTPUT50 "$line_bits[49]\n";

   # Output in primer order
   print OUTPUT51 "$line_bits[1]\n";
   print OUTPUT52 "$line_bits[0]\n";
   print OUTPUT53 "$line_bits[4]\n";
   print OUTPUT54 "$line_bits[3]\n";
   print OUTPUT55 "$line_bits[2]\n";
   print OUTPUT56 "$line_bits[6]\n";
   print OUTPUT57 "$line_bits[5]\n";
   print OUTPUT58 "$line_bits[9]\n";
   print OUTPUT59 "$line_bits[8]\n";
   print OUTPUT60 "$line_bits[7]\n";
   print OUTPUT61 "$line_bits[11]\n";
   print OUTPUT62 "$line_bits[10]\n";
   print OUTPUT63 "$line_bits[14]\n";
   print OUTPUT64 "$line_bits[13]\n";
   print OUTPUT65 "$line_bits[12]\n";
   print OUTPUT66 "$line_bits[16]\n";
   print OUTPUT67 "$line_bits[15]\n";
   print OUTPUT68 "$line_bits[19]\n";
   print OUTPUT69 "$line_bits[18]\n";
   print OUTPUT70 "$line_bits[17]\n";
   print OUTPUT71 "$line_bits[21]\n";
   print OUTPUT72 "$line_bits[20]\n";
   print OUTPUT73 "$line_bits[24]\n";
   print OUTPUT74 "$line_bits[23]\n";
   print OUTPUT75 "$line_bits[22]\n";
   print OUTPUT76 "$line_bits[26]\n";
   print OUTPUT77 "$line_bits[25]\n";
   print OUTPUT78 "$line_bits[29]\n";
   print OUTPUT79 "$line_bits[28]\n";
   print OUTPUT80 "$line_bits[27]\n";
   print OUTPUT81 "$line_bits[31]\n";
   print OUTPUT82 "$line_bits[30]\n";
   print OUTPUT83 "$line_bits[34]\n";
   print OUTPUT84 "$line_bits[33]\n";
   print OUTPUT85 "$line_bits[32]\n";
   print OUTPUT86 "$line_bits[36]\n";
   print OUTPUT87 "$line_bits[35]\n";
   print OUTPUT88 "$line_bits[39]\n";
   print OUTPUT89 "$line_bits[38]\n";
   print OUTPUT90 "$line_bits[37]\n";
   print OUTPUT91 "$line_bits[41]\n";
   print OUTPUT92 "$line_bits[40]\n";
   print OUTPUT93 "$line_bits[44]\n";
   print OUTPUT94 "$line_bits[43]\n";
   print OUTPUT95 "$line_bits[42]\n";
   print OUTPUT96 "$line_bits[46]\n";
   print OUTPUT97 "$line_bits[45]\n";
   print OUTPUT98 "$line_bits[49]\n";
   print OUTPUT99 "$line_bits[48]\n";
   print OUTPUT100 "$line_bits[47]\n";
}

# close files
close(INPUT);
close(OUTPUT1);
close(OUTPUT2);
close(OUTPUT3);
close(OUTPUT4);
close(OUTPUT5);
close(OUTPUT6);
close(OUTPUT7);
close(OUTPUT8);
close(OUTPUT9);
close(OUTPUT10);
close(OUTPUT11);
close(OUTPUT12);
close(OUTPUT13);
close(OUTPUT14);
close(OUTPUT15);
close(OUTPUT16);
close(OUTPUT17);
close(OUTPUT18);
close(OUTPUT19);
close(OUTPUT20);
close(OUTPUT21);
close(OUTPUT22);
close(OUTPUT23);
close(OUTPUT24);
close(OUTPUT25);
close(OUTPUT26);
close(OUTPUT27);
close(OUTPUT28);
close(OUTPUT29);
close(OUTPUT30);
close(OUTPUT31);
close(OUTPUT32);
close(OUTPUT33);
close(OUTPUT34);
close(OUTPUT35);
close(OUTPUT36);
close(OUTPUT37);
close(OUTPUT38);
close(OUTPUT39);
close(OUTPUT40);
close(OUTPUT41);
close(OUTPUT42);
close(OUTPUT43);
close(OUTPUT44);
close(OUTPUT45);
close(OUTPUT46);
close(OUTPUT47);
close(OUTPUT48);
close(OUTPUT49);
close(OUTPUT50);
close(OUTPUT51);
close(OUTPUT52);
close(OUTPUT53);
close(OUTPUT54);
close(OUTPUT55);
close(OUTPUT56);
close(OUTPUT57);
close(OUTPUT58);
close(OUTPUT59);
close(OUTPUT60);
close(OUTPUT61);
close(OUTPUT62);
close(OUTPUT63);
close(OUTPUT64);
close(OUTPUT65);
close(OUTPUT66);
close(OUTPUT67);
close(OUTPUT68);
close(OUTPUT69);
close(OUTPUT70);
close(OUTPUT71);
close(OUTPUT72);
close(OUTPUT73);
close(OUTPUT74);
close(OUTPUT75);
close(OUTPUT76);
close(OUTPUT77);
close(OUTPUT78);
close(OUTPUT79);
close(OUTPUT80);
close(OUTPUT81);
close(OUTPUT82);
close(OUTPUT83);
close(OUTPUT84);
close(OUTPUT85);
close(OUTPUT86);
close(OUTPUT87);
close(OUTPUT88);
close(OUTPUT89);
close(OUTPUT90);
close(OUTPUT91);
close(OUTPUT92);
close(OUTPUT93);
close(OUTPUT94);
close(OUTPUT95);
close(OUTPUT96);
close(OUTPUT97);
close(OUTPUT98);
close(OUTPUT99);
close(OUTPUT100);

exit;
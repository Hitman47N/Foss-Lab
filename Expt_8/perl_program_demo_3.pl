#!/usr/bin/perl
print "1.Match\n2.Substitute\n3.Transform\nEnter your choice:\t";
$choice=<>;
print "Enter the string on which operation is to be done:\t";
$string = <>;
print "Enter the regular expression:\t";
$regex = <>;
chomp($regex);
chomp($string);
if($choice== 1){
	print "You chose the matching operator\n";
	if($string =~ m/\Q$regex/){

		print "Yes, the regex '$regex'  is present in '$string'\n"
	}
	else{
		print "No the regex '$regex' doesnt match with anything in '$string'\n";
	}
}
if($choice==3){
        print "You chose the transform operator\n";
        if($string =~ tr/\Q$regex/how/){

                print "Yes, the transformed string is '$string'\n";
        }
        else{
                print "No, the regex doesnt match with anything in the string\n";
        }
}


=begin comment
Author : Eshwar
A simple file R/W program in PERL language.
To read and write to files in PERL, we need file handles.
Here, DATA is a file handler. 
use file commands like open, close to open and close the file.
< read
> write
>> append
+< r/w
+> r/w/truncate
+>> r/w/append
=end comment

=cut

#read from a file
open(DATA,"<texts.txt");
while($line=<DATA>){
    print("$line");
}
#write to a file
open(DATA,">textss.txt");
print DATA "HELLO";
close(DATA);

#count the frequency of words in a file
open(DATA,"<texts.txt");
%hashed=("total"=>0);
while(<DATA>){
    @arr_holder=split(" ",$_);
    while($index = each @arr_holder){
        if(exists($hashed{$arr_holder[$index]})){
            $hashed{$arr_holder[$index]}+=1;
        }
        else{
            @hashed{$arr_holder[$index]}=1;
        }
        $hashed{"total"}+=1;
    }
}
close(DATA);
while($value = each %hashed){
    print("\n$value=".$hashed{$value});
}



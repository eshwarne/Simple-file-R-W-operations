=begin comment 
=end comment

=cut

print("\U The following code allows you to search for a specific word in a file and return its count\n");
sub Counter{
    $hashed=($_[0]=0);
    chomp($_[1]);
    $fn="<".$_[1];
    $fn=$fn.".txt";
    print($fn);
    open(DATA,$fn);
    while($data=<DATA>){
        @splitting_array=split(" ",$data);
        while($i = each @splitting_array){
            if(exists($hashed{$splitting_array[$i]})){
                $hashed{$_[0]}+=1;
        }
        else{
                next;
        }
        }
       
    }
    return %hashed;
}
print("\U keyword to search: ");
$key=<>;
print("\U File name        : ");
$fp=<>;
%key_count=&Counter($key,$fp);
if($key_count{$key}==0){
    print("THE WORD DOES NOT EXIST");
}
else{
    print("FOUND IT!\n It occured ".$key_count{$key}." times");
}
while($key = each %key_count){
    print $key_count{$key};
}
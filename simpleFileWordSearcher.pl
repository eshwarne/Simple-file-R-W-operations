=begin comment 
=end comment

=cut

print("\U The following code allows you to search for a specific word in a file and return its count\n");
sub Counter{
    $keywordinSub=$_[0];
    %hashed=($keywordinSub=>0);
    chomp($_[1]);
    $fn="<".$_[1];
    $fn=$fn.".txt";
    print($fn);
    open(DATA,$fn);
    while($data=<DATA>){
        @splitting_array=split(" ",$data);
        while($i = each @splitting_array){
            if(exists($hashed{$splitting_array[$i]})){
                $hashed{$keywordinSub}+=1;
        }
        else{
                continue;
        }
        }
       
    }
    return $hashed{$keywordinSub};
    }
   
    
print("\U keyword to search: ");
$key=<>;
print("\U File name        : ");
$fp=<>;
$count=&Counter($key,$fp);
if($count==0){
    print("THE WORD DOES NOT EXIST");
}
else{
    print("FOUND IT!\n It occured ".$count." times");
}
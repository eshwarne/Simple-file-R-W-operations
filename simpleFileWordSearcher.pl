=begin comment 
Author : Eshwar
This code helps a user in searching for a word in a file and return its frequency count

=end comment

=cut

print("\U The following code allows you to search for a specific word in a file and return its count\n");
sub Counter{
    $a=0;
    $keywordinSub=$_[0];
    %hashed=($keywordinSub=>);
    chomp($_[1]);
    $fn="<".$_[1];
    $fn=$fn.".txt";
    open(DATA,$fn);
    while($data=<DATA>){
        @splitting_array=split(" ",$data);
        while($i = each @splitting_array){
            if($isCase!=1){
              $checker=lc(($splitting_array[$i]));    
            }
            else{
                $checker=($splitting_array[$i]);
            }
            chomp($keywordinSub);
            if($keywordinSub eq $checker){
                $hashed{$keywordinSub}+=1;
        }
        else{
                $a++;
        }
        }
       
    }
    return $hashed{$keywordinSub};
    }
   
    
print("\U keyword to search: ");
$key=<>;
print("\U File name        : ");
$fp=<>;
print("\U Do you want it to be a case sensitive search? (1/0)");
$isCase=<>;
if($isCase!=1){
    $key=lc($key);
}
$count=&Counter($key,$fp,$isCase);
if($count==0){
    print("THE WORD DOES NOT EXIST");
}
else{
    print("FOUND IT!\n It occured ".$count." times");
}
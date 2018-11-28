=begin comment 
=end comment

=cut

print("\U The following code allows you to search for a specific word in a file and return its count\n")
sub Counter{
    $hashed=($_[0]=0);
    open(DATA,"<".$_[1]."txt");
    while($data=<DATA>){
        if(exists($hashed{$_[0]}){}){
            $hashed{$_[0]}+=1;
        }
        else{
            next;
        }
    }
    return %hashed
}
print("\U keyword to search: ");
$key=<>;
print("\U File name        : ");
$fp=<>;

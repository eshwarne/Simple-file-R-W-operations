<?php
#Author : Eshwar
$frequency_assoc=array("total"=>0);

#change your file name here
$filename="texts.txt";


$fp=fopen($filename,"r");
while(!feof($fp)){
    $dataString=fgets($fp);
    $array=explode(" ",$dataString);
    foreach($array as $value){
        if(isset($frequency_assoc[$value])){
            $frequency_assoc[$value]+=1;
        }
        else{
            $frequency_assoc[$value]=1;
        }
        $frequency_assoc["total"]+=1;
    }
}
fclose($fp);
echo "TOTAL NUMBER OF WORDS = ".$frequency_assoc["total"]."<br>";
foreach($frequency_assoc as $word => $count){
    echo "$word has occured $count times"."<br>";
}
?>
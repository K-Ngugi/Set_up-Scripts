 while read url; 
 do 
 python3 ~/Tools/SecretFinder/SecretFinder.py -i $url -o cli >>secrets.txt; 
 done


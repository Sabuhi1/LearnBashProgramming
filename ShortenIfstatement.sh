#!/bin/bash

echo -n "Your Age : " ; read AGE    #CLI-dan input --> echo -n <-- ile input alib,  read ->AGE-ye veririk o inputu.

#Bu gorduyumuz if-in qisaltmasidir.Yasi 20-den az olanlar Sayta daxil ola bilmemesi ucun tetbiq etdiyimiz if qisaltmasi.
[ $AGE -lt 20 ] && echo 'You cannot entered this website.Your age is under of 20' || echo "Successfully entered website."

#  &&  eger her iki teref dogrudursa tetbiq et,  x || y   --->  x commandi dogru deyilse   y-i tetbiq et.
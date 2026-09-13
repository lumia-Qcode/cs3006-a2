rm -f results.txt
for view in 1 2; do
 for t in 2 3 4 5 6 7 8; do
  for rep in 1 2 3 4 5; do
   echo "view=$view threads=$t rep=$rep" >> results.txt
   ./mandelbrot --view $view --threads $t >> results.txt
   echo "---" >> results.txt
  done
 done
done
echo "DONE"

rm -f results_part5.txt
for view in 1 2; do
 for t in 8 12 24; do
  for rep in 1 2 3 4 5; do
    echo "view=$view threads=$t rep=$rep" >> results_part5.txt
   ./mandelbrot --view $view --threads $t >> results_part5.txt
    echo "---" >> results_part5.txt
  done
 done
done
echo "DONE"

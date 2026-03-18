for i in {1214..1000}; do
    mv $i.png $((i+114)).png
done

for n in {999..956}; do
    mv 0$n.png $((n+114)).png
done

for i in {956..999}; do
    cp 0001.png 0$i.png
done

for i in {1000..1069}; do
    cp 0001.png $i.png
done

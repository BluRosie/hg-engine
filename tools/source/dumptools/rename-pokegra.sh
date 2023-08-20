for i in {1214..1000}; do
    mkdir -p $((i+114))
    mv $i/* $((i+114))
done

for n in {999..956}; do
    mkdir -p $((i+114))
    mv 0$n/* $((n+114))
done

for i in {956..999}; do
    mkdir -p 0$i
    cp -r 0001/* 0$i/
done

for i in {1000..1069}; do
    mkdir -p $i
    cp -r 0001/* $i/
done

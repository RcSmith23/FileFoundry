for file in *.coffee
do
    mv "$file" "${file%.coffee}.js.coffee"
done

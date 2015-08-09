for file in *.scss
do
    mv "$file" "${file%.scss}.css.scss"
end

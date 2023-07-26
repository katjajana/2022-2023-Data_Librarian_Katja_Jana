for file in $(find . -type f | grep xml); do
  # catmandu convert XML --path '/ead/dsc/c/did/originations/persname' to CSV \
  catmandu convert XML --path '//persname' to CSV \
    --fix my.fix \
    --fields "GNDnr,Name,ID-Bestand,Name_normiert,Rolle,Source"\
    --header 0 < "$file" >> loop_allfields.csv
done

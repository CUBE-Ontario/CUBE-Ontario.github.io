# CUBE_website

This is the repository for our public-facing website hosted on github pages: https://cube-ontario.github.io.  

The webpage is rendered from a set of rmarkdown files (*.Rmd), with a yaml file (_site.yml) for the layout and a bootstrap css stylesheet (bootstrap.min.css). The main page is derived from index.Rmd.


## How to add a new team member

- Add a new line to the data/team.tsv file with the name, bio, and path to image
- Add the image to pics/
- Build site again and new section will be rendered
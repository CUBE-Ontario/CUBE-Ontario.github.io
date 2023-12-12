# CUBE_website

This is the repository for our public-facing website hosted on github pages: https://cube-ontario.github.io.  

The webpage is rendered from a set of rmarkdown files (*.Rmd), with a yaml file (_site.yml) for the layout, with a bootswatch theme (superhero), a custom css stylesheet (styles.css). The main page is derived from index.Rmd.

The data for different sections comes from a [google sheet here]
(https://docs.google.com/spreadsheets/d/1zSHLGGOSBIOgN3BXXGl2jPtJLBF6OExAznjqmRnzrTY/edit?usp=sharing)

Add new team members, locations for the map, publications, and FAQs to the respective sheet in the googlesheets file.

To update the site, use Rstudios' buildtools to build the site (cmd + B). This will regenerate all the html files. Commit the changed files (the html files) to git and push to the github repository. Github Actions will run automatically when changes are pushed, redeploying the website to cube-ontario.github.io

-----

## How to add a new team member

Go to [the googlesheets file](https://docs.google.com/spreadsheets/d/1zSHLGGOSBIOgN3BXXGl2jPtJLBF6OExAznjqmRnzrTY/edit?usp=sharing)

- Add the image file `public/img/team` in the project directory.
- Add a new row to the sheet `team` with the `name`, `bio`, and `path` to the image in `public/img/team`.  
- Render the page in Rstudio (cmd + K). Check the new card for the added team member.   
- Resize the image and/or lower resolution if necessary (see other images for gist). Crop if not centered on head/face.  
- Build site, commit changes in git, push to this github repo to update the site.

-----

## How to add a new publication

- Go to the `Publications` sheet in the [googlesheets file](https://docs.google.com/spreadsheets/d/1zSHLGGOSBIOgN3BXXGl2jPtJLBF6OExAznjqmRnzrTY/edit?usp=sharing) 
- Add a new line with the details of the article. Remove the relevant preprint if the article was published in a journal, if there was one.
- Build site in Rstudio; a new card should appear for the new article.
- Commit changes in git, push to this github repo to update the site.

-----

## How to add a new site

- Go to the `sites` sheet in the [googlesheets file](https://docs.google.com/spreadsheets/d/1zSHLGGOSBIOgN3BXXGl2jPtJLBF6OExAznjqmRnzrTY/edit?usp=sharing) 
- Add a new line with the approximate coordinates at city-level resolution `lat` and `lng`, as well as the `type` of facility.
- Render the rmarkdown file `about.rmd` in Rstudio (cmd + K). 
- Build site, commit changes in git, push to this github repo to update the site.

-----

## How to add a new FAQ

- Add a row with `question` and `answer` to the `FAQ` sheet in the [googlesheets file](https://docs.google.com/spreadsheets/d/1zSHLGGOSBIOgN3BXXGl2jPtJLBF6OExAznjqmRnzrTY/edit?usp=sharing).
- Rebuild the site, inspect, push changes to gh.

-----

## How to add a new media appearance

Add new media card details to the googlesheets 'media' sheet. Build. Push.


-----


## How to add to events...

Need to write markdown in `about.rmd`, add images to `/public/img/event/`. Rebuild site and push to GH.

-----

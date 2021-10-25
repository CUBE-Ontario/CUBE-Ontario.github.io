## Generate yml file for website layout

## MISSING: output.dir: '.'
## # need to add this tag such that site builds properly

library(ymlthis)

yml_empty() |>
  yml_output(html_document(theme='flatly', highlight = 'textmate', css = 'style.css', output_dir = '.')) |>
  yml_site_opts(
    name = "CUBE: Covid-19 in the Urban Built Environment",
    title = "CUBE: Covid-19 in the Urban Built Environment",
    favicon = "fa-cube",
    new_session = TRUE
    ) |>
  yml_author(c(
    "Aaron Hinz",
    "Ashley Raudanskis",
    "Benazir Hodzic-Santor",
    "Evgeni Douakine",
    "Jason Moggridge",
    "Tamara Van Bakel",
    "Nisha Thampi",
    "Rees Kassen",
    "Veronica Zanichelli",
    "Allison McGreer",
    "Alex Wong",
    "Michael Fralick",
    "Caroline Nott",
    "Derek McFadden"
  )) |>
  yml_navbar(
    title = "CUBE",
    type = 'inverse',
    left = list(navbar_page(
      icon = 'fa-cube',
      text = "Main",
      href = 'index.html'
    )),
    right = list(
      navbar_page(
        icon = 'fa-envelope',
        text = "Contact",
        href = 'mailto:CUBEstudy21@gmail.com'
      ),
      navbar_page(
        icon = 'fa-github',
        text = "GitHub",
        href = 'https://github.com/CUBE-Ontario'
      )
    ))




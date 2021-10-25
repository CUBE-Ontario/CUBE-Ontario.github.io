library(magick)

# to list the formats that your version of ImageMagick supports.
magick::magick_config()

cube_virus <-
  image_read("figures/cube_logo/coronavirus.png") |>
  image_scale(400) |>
  image_rotate(90) |>
  image_shear("1x8")

cube_text <-
  image_read("figures/cube_logo/cube_text_pretransform.png") |>
  image_scale(500) |>
  image_flip() |>
  image_shear("0x15") |>
  image_flip() |>
  image_rotate(20) |>
  image_fill(
    color = "#ffffff00",
    refcolor = "white",
    fuzz = 4,
    point = "+1+1" # start at top left 1 pixel in
  )
## save these as images straight from the Viewer panel
cube_virus
cube_text

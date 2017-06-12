u <- "https://pbs.twimg.com/media/Cup_SmBUsAIvTiv.jpg:large"
download.file(u, "data-raw/perspective.jpg", mode = "wb")

system("gdal_translate data-raw/perspective.jpg data-raw/perspective0.png -of PNG -srcwin 330 200 320 270")

system("gdal_translate data-raw/perspective0.png data-raw/perspective1.png -of PNG -outsize 30% 30%")
file.copy("data-raw/perspective1.png", "public/images/perspective1.png")

library(terra)
library(imageRy)

setwd("~/Desktop/dji_mavic3/immagine_esempio")

green <- rast("DJI_20251115111113_0006_MS_G.TIF")
green <- flip(green)
nir <- rast("DJI_20251115111113_0006_MS_NIR.TIF")
nir <- flip(nir)
red <- rast("DJI_20251115111113_0006_MS_R.TIF")
red <- flip(red)

stack <- c(nir, red, green)
plot(stack)
im.plotRGB(stack, 1, 2, 3)

#---- 

setwd("/Users/ducciorocchini/Desktop/dji_mavic3/immagine_2/TIF")

green <- rast("DJI_20251115111121_0007_MS_G.TIF")
red <- rast("DJI_20251115111121_0007_MS_R.TIF")
rededge <- rast("DJI_20251115111121_0007_MS_RE.TIF")
nir <- rast("DJI_20251115111121_0007_MS_NIR.TIF")

im2 <- c(nir, rededge, red, green)

plot(im2)
im.plotRGB(im2, 3, 4, 3)

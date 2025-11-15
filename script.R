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


# Assign CRS to both images (assuming WGS 84)
crs(nir) <- "EPSG:4326"
crs(red) <- "EPSG:4326"
crs(green) <- "EPSG:4326"

# Check if the CRS is now set correctly
crs(nir)
crs(red)
crs(green)

# Check extent of both images
ext(nir)
ext(red)
ext(green)

# If they don't match, align the extent (for example, use the extent of the red image)
ext(nir) <- ext(red)
ext(green) <- ext(red)

stack <- c(nir, red, green)
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

library(imager)

# Check the extents and CRS of both images (to align them)
ext(red)
ext(nir)

# Assign CRS to both images (assuming WGS 84)
crs(nir) <- "EPSG:4326"
crs(red) <- "EPSG:4326"
crs(green) <- "EPSG:4326"

# Check if the CRS is now set correctly
crs(nir)
crs(red)
crs(green)

# Check extent of both images
ext(nir)
ext(red)
ext(green)

# If they don't match, align the extent (for example, use the extent of the red image)
ext(nir) <- ext(red)
ext(green) <- ext(red)

stack <- c(nir, red, green)
im.plotRGB(stack, 1, 2, 3)

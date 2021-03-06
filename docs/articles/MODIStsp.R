## ---- eval=FALSE, message=FALSE, warning=FALSE, include=TRUE-------------
#  library(devtools)
#  install_github("lbusett/MODIStsp")

## ---- eval=FALSE, message=FALSE, warning=FALSE, include=TRUE-------------
#  install.packages("gWidgetsRGtk2")
#  library(gWidgetsRGtk2)

## ---- eval=FALSE, message=FALSE, warning=FALSE, include=TRUE-------------
#  install.packages("MODIStsp")

## ---- eval=FALSE, message=FALSE, warning=FALSE, include=TRUE-------------
#  library(devtools)
#  install_github("lbusett/MODIStsp")

## ----eval = FALSE--------------------------------------------------------
#  library(RGtk2)

## ----eval = FALSE--------------------------------------------------------
#  install.packages("MODIStsp")
#  MODIStsp()

## ----eval = FALSE--------------------------------------------------------
#  library(devtools)
#  install_github("lbusett/MODIStsp", ref = "master")
#  MODIStsp()

## ---- eval=FALSE, message=FALSE, warning=FALSE, include=TRUE, caption=FALSE----
#  library(MODIStsp)
#  MODIStsp()

## ----GUIfig, echo=FALSE, fig.align="center", fig.heigth=7.5, message=FALSE, warning=FALSE----
  library(png)
  library(grid)
  library(knitr)
  img <- readPNG("MAIN_GUI.png")
  grid.raster(img)

## ----proc_layers, echo=FALSE, fig.align="center", message=FALSE, warning=FALSE, paged.print=FALSE----
  library(png)
  library(grid)
  img <- readPNG('SELECT_GUI.png')
  grid.raster(img)

## ----indexfig, echo=FALSE, fig.height=2.3, fig.width=6, message=FALSE, warning=FALSE, fig.align="center"----
  library(png)
  library(grid)
  img <- readPNG('NEWIND_GUI.png')
  grid.raster(img)

## ---- eval=FALSE---------------------------------------------------------
#  library(MODIStsp)
#  # --> Specify the path to a valid options file saved in advance from MODIStsp GUI
#  options_file <- "X:/yourpath/youroptions.json"
#  
#  # --> Launch the processing
#  MODIStsp(gui = FALSE, options_file = options_file)

## ----eval=FALSE----------------------------------------------------------
#  library(MODIStsp)
#  # --> Specify the path to a valid options file saved in advance from MODIStsp GUI
#  options_file <- "X:/yourpath/youroptions.json"
#  
#  # --> Create a character array containing a list of shapefiles (or other spatial files)
#  extent_list <- list.files("X:/path/containing/some/shapefiles/", "\\.shp$")
#  
#  # --> Loop on the list of spatial files and run MODIStsp using each of them to automatically
#  # define the output extent (A separate output folder is created for each input spatial file).
#  
#  for (single_shape in extent_list) {
#    MODIStsp(gui = FALSE, options_file = options_file, spatial_file_path = single_shape )
#  }
#  

## ----eval=FALSE, tidy=TRUE, highlight=TRUE-------------------------------
#  library(raster)
#  modistsp_file <- "/my_outfolder/EVI/MOD13Q1_2005_137_EVI.tif"
#  my_raster     <- raster(modistsp_file)

## ----eval=FALSE----------------------------------------------------------
#  in_virtual_file <- "/my_outfolder/Time_Series/RData/Terra/EVI/MOD13Q1_MYD13Q1_NDVI_49_2000_353_2015_RData.RData"
#  indata          <- get(load(in_virtual_file))

## ---- eval=FALSE---------------------------------------------------------
#    #Set the input paths to raster and shape file
#    infile    <- 'myoutfolder/Time_Series/RData/Mixed/MOD13Q1_MYD13Q1_NDVI_49_2000_353_2015_RData.RData'
#    shpname   <- 'path_to_file/rois.shp'
#    #Set the start/end dates for extraction
#    startdate <- as.Date("2010-01-01")
#    enddate   <- as.Date("2014-12-31")
#    #Load the RasterStack
#    inrts     <- get(load(infile))
#    # Compute average and St.dev
#    dataavg   <- MODIStsp_extract(inrts, shpname, startdate, enddate, FUN = 'mean', na.rm = T)
#    datasd    <- MODIStsp_extract (inrts, shpname, startdate, enddate, FUN = 'sd', na.rm = T)
#    # Plot average time series for the polygons
#    plot.xts(dataavg)


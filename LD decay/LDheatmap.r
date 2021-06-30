function (gdat, genetic.distances = NULL, distances = "physical", 
    LDmeasure = "r", title = "Pairwise LD", add.map = TRUE, 
    add.key = TRUE, geneMapLocation = 0.15, geneMapLabelX = NULL, 
    geneMapLabelY = NULL, SNP.name = NULL, color = NULL, newpage = TRUE, 
    name = "ldheatmap", vp.name = NULL, pop = FALSE, flip = NULL, 
    text = FALSE) 
{
    requireNamespace("grid")
    if (is.null(color)) {
        if (inherits(gdat, "LDheatmap")) 
            color <- gdat$color
        else color <- grey.colors(20)
    }
    if (is.null(flip)) {
        if (inherits(gdat, "LDheatmap") && !is.null(gdat$flipVP)) 
            flip <- TRUE
        else flip <- FALSE
    }
    if (is.null(genetic.distances)) {
        if (inherits(gdat, "data.frame")) 
            genetic.distances = 1000 * (1:ncol(gdat))
        else if (inherits(gdat, "matrix")) 
            genetic.distances = 1000 * (1:length(gdat[1, ]))
        else genetic.distances = gdat$genetic.distances
    }
    if (inherits(gdat, "SnpMatrix")) {
        if (!is.vector(genetic.distances)) {
            stop("Distance should be in the form of a vector")
        }
        o <- order(genetic.distances)
        genetic.distances <- genetic.distances[o]
        gdat <- gdat[, o]
        if (LDmeasure == "r") 
            LDmatrix <- snpStats::ld(gdat, depth = ncol(gdat) - 
                1, stats = "R.squared")
        else if (LDmeasure == "D") 
            LDmatrix <- snpStats::ld(gdat, depth = ncol(gdat) - 
                1, stats = "D.prime")
        else stop("Invalid LD measurement, choose r or D'.")
        LDmatrix <- as.matrix(LDmatrix)
        LDmatrix[lower.tri(LDmatrix, diag = TRUE)] <- NA
    }
    else if (inherits(gdat, "data.frame")) {
        for (i in 1:ncol(gdat)) {
            if (!genetics::is.genotype(gdat[, i])) 
                stop("column ", i, " is not a genotype object\n")
        }
        gvars <- unlist(sapply(gdat, function(x) genetics::nallele(x) == 
            2))
        genetic.distances <- genetic.distances[gvars]
        gdat <- gdat[gvars]
        if (!is.vector(genetic.distances)) {
            stop("Distance should be in the form of a vector")
        }
        o <- order(genetic.distances)
        genetic.distances <- genetic.distances[o]
        gdat <- gdat[, o]
        myLD <- genetics::LD(gdat)
        if (LDmeasure == "r") 
            LDmatrix <- myLD[[LDmeasure]]^2
        else if (LDmeasure == "D'") 
            LDmatrix <- abs(myLD[[LDmeasure]])
        else stop("Invalid LD measurement, choose r or D'.")
    }
    else if (inherits(gdat, "LDheatmap")) {
        LDmatrix <- gdat$LDmatrix
        distances <- gdat$distances
    }
    else if (inherits(gdat, "matrix")) {
        if (nrow(gdat) != ncol(gdat)) 
            stop("The matrix of linkage disequilibrium measurements must be a square matrix")
        LDmatrix <- gdat
        LDmatrix[lower.tri(LDmatrix, diag = TRUE)] <- NA
    }
    else if (!missing(gdat)) 
        stop(paste("No method for an object of class", 
            class(gdat)))
    else stop("Need to supply LD matrix or genotypes")
    heatmapVP <- viewport(width = unit(0.8, "snpc"), height = unit(0.8, 
        "snpc"), name = vp.name)
    flipVP <- viewport(width = unit(0.8, "snpc"), height = unit(0.8, 
        "snpc"), y = 0.6, angle = -45, name = "flipVP")
    if (color[1] == "blueToRed") 
        color = rainbow(20, start = 4/6, end = 0, s = 0.7)[20:1]
    if (newpage) 
        grid.newpage()
    mybreak <- 0:length(color)/length(color)
    imgLDmatrix <- LDmatrix
    byrow <- ifelse(flip, FALSE, TRUE)
    colcut <- as.character(cut(1 - imgLDmatrix, mybreak, labels = as.character(color), 
        include.lowest = TRUE))
    if (is.numeric(color)) 
        colcut <- as.integer(colcut)
    ImageRect <- makeImageRect(dim(LDmatrix)[1], dim(LDmatrix)[2], 
        colcut, name = "heatmap", byrow)
    ImageText <- NULL
    if (text) 
        ImageText <- makeImageText(dim(LDmatrix)[1], dim(LDmatrix)[2], 
            round(imgLDmatrix, digits = 2), name = "heatmaptext")
    title <- textGrob(title, 0.5, 1.05, gp = gpar(cex = 1), name = "title")
    if (flip) {
        ImageRect <- editGrob(ImageRect, vp = flipVP)
        if (text) {
            ImageText <- makeImageText(dim(LDmatrix)[1], dim(LDmatrix)[2], 
                round(imgLDmatrix, digits = 2), name = "heatmaptext", 
                flip = TRUE)
            textVal <- ImageText
            ImageText <- editGrob(ImageText, vp = flipVP, rot = 0, 
                just = c("right", "top"))
        }
    }
    heatMap <- gTree(children = gList(ImageRect, ImageText, title), 
        name = "heatMap")
    nsnps <- ncol(LDmatrix)
    step <- 1/(nsnps - 1)
    ind <- match(SNP.name, row.names(LDmatrix), nomatch = 0)
    geneMapVP <- NULL
    if (flip) 
        geneMapVP <- flipVP
    geneMap <- LDheatmapMapNew.add(nsnps, genetic.distances = genetic.distances, 
        geneMapLocation = geneMapLocation, add.map, geneMapLabelX = geneMapLabelX, 
        geneMapLabelY = geneMapLabelY, distances = distances, 
        vp = geneMapVP, SNP.name = SNP.name, ind = ind, flip = flip)
    if (add.key) 
        Key <- LDheatmapLegend.add(color, LDmeasure, heatmapVP)
    else Key <- NULL
    LDheatmapGrob <- gTree(children = gList(heatMap, geneMap, 
        Key), vp = heatmapVP, name = name, cl = "ldheatmap")
    grid.draw(LDheatmapGrob)
    if (pop) {
        downViewport(heatmapVP$name)
        popViewport()
    }
    ldheatmap <- list(LDmatrix = LDmatrix, LDheatmapGrob = LDheatmapGrob, 
        heatmapVP = heatmapVP, flipVP = geneMapVP, genetic.distances = genetic.distances, 
        distances = distances, color = color)
    class(ldheatmap) <- "LDheatmap"
    invisible(ldheatmap)
}

shinyServer(function(input, output) {
  inFile <- reactive(read.csv(input$file1$datapath, header=TRUE, sep = ','))
  plotInput1 <- function() {
    #scale
    if (input$scale == 1) {
      scale_value <-TRUE
    } else if (input$scale == 2) {
      scale_value <-FALSE
    } else {
      scale_value <-FALSE
    }
    
    #fancy
    if (input$fancy == 1) {
      fancy_value <-TRUE
    } else if (input$fancy == 2) {
      fancy_value <-FALSE
    } else {
      fancy_value <-FALSE
    }
    
    #col
    if (input$col == 0) {
      col_value <-0
    } else if (input$col == 1) {
      col_value <-1
    } else if (input$col == 2) {
      col_value <-2
    } else if (input$col == 3) {
      col_value <-3
    } else if (input$col == 4) {
      col_value <-4
    } else if (input$col == 5) {
      col_value <-5
    } else if (input$col == 6) {
      col_value <-6
    } else if (input$col == 7) {
      col_value <-7
    } else if (input$col == 8) {
      col_value <-8
    } else if (input$col == 9) {
      col_value <-NULL
    } else {
      col_value <-NULL
    }
    
    #radius
    if (input$radius == 0.750) {
      radius_value <-0.750
    } else if (input$radius == 0.875) {
      radius_value <-0.875
    } else if (input$radius == 1) {
      radius_value <-1
    } else if (input$radius == 1.17) {
      radius_value <-1.17
    } else if (input$radius == 1.33) {
      radius_value <-1.33
    } else if (input$radius == 1.50) {
      radius_value <-1.50
    } else if (input$radius == 1.67) {
      radius_value <-1.67
    } else if (input$radius == 1.83) {
      radius_value <-1.83
    } else if (input$radius == 2.00) {
      radius_value <-2.00
    } else if (input$radius == 2.33) {
      radius_value <-2.33
    } else {
      radius <-1
    }
    
    #legend
    if (input$legend == 0) {
      legend_value <-"topleft"
    } else if (input$legend == 1) {
      legend_value <-"topright"
    } else if (input$legend == 2) {
      legend_value <-"top"
    } else if (input$legend == 3) {
      legend_value <-"bottomleft"
    } else if (input$legend == 4) {
      legend_value <-"bottomright"
    } else if (input$legend == 5) {
      legend_value <-"bottom"
    } else if (input$legend == 6) {
      legend_value <-NULL
    } else {
      legend_value <-"topleft"
    }
    
    #　csvファイルのテーブル読み込み
    #inFile <- reactive(read.csv(input$file1$datapath, header=TRUE, sep = ','))
    inFile <-inFile()[]
    
    inFile=data.frame("inFile"= inFile)
    compiled_inFile<-inFile[input$column_start:input$column_end]
    pca <-prcomp(compiled_inFile, scale= scale_value)
    
    pca2d(pca,
          group = inFile[,input$label],
          show.ellipses = TRUE,
          ellipse.ci = input$ellipse_ci,
          show.plane = TRUE,
          fancy = fancy_value,
          bg = input$bg,
          col = col_value,
          radius = radius_value,
          legend = legend_value
    )
  }
  
  plotInput2 <- function() {
    #scale
    if (input$scale_2 == 1) {
      scale_value_2 <-TRUE
    } else if (input$scale_2 == 2) {
      scale_value_2 <-FALSE
    } else {
      scale_value_2 <-FALSE
    }
    #var.axes
    if (input$var_axes == 1) {
      var_axes_value <-TRUE
    } else if (input$var_axes == 2) {
      var_axes_value <-FALSE
    } else {
      var_axes_value <-FALSE
    }
    #varname.abbrev
    if (input$varname_abbrev == 1) {
      varname_abbrev_value <-TRUE
    } else if (input$varname_abbrev == 2) {
      varname_abbrev_value <-FALSE
    } else {
      varname_abbrev_value <-FALSE
    }
    #　csvファイルのテーブル読み込み
    #　csvファイルのテーブル読み込み
    #inFile1 <- reactive(read.csv(input$file1$datapath, header=TRUE, sep = ','))
    inFile <-inFile()[]
    inFile=data.frame("inFile"= inFile)
    inFile<-inFile[input$column_start:input$column_end]
    inFile[input$column_start1:input$column_end1,] <- inFile[input$column_start1:input$column_end1,] + 1
    inFile[input$column_start2:input$column_end2,] <- inFile[input$column_start2:input$column_end2,] + 2
    inFile[input$column_start3:input$column_end3,] <- inFile[input$column_start3:input$column_end3,] + 3
    inFile[input$column_start4:input$column_end4,] <- inFile[input$column_start4:input$column_end4,] + 4
    inFile[input$column_start5:input$column_end5,] <- inFile[input$column_start5:input$column_end5,] + 5
    inFile[input$column_start6:input$column_end6,] <- inFile[input$column_start6:input$column_end6,] + 6
    inFile[input$column_start7:input$column_end7,] <- inFile[input$column_start7:input$column_end7,] + 7
    inFile[input$column_start8:input$column_end8,] <- inFile[input$column_start8:input$column_end8,] + 8
    inFile[input$column_start9:input$column_end9,] <- inFile[input$column_start9:input$column_end9,] + 9
    inFile[input$column_start10:input$column_end10,] <- inFile[input$column_start10:input$column_end10,] + 10
    inFile[input$column_start11:input$column_end11,] <- inFile[input$column_start11:input$column_end11,] + 11
    inFile[input$column_start12:input$column_end12,] <- inFile[input$column_start12:input$column_end12,] + 12
    inFile[input$column_start13:input$column_end13,] <- inFile[input$column_start13:input$column_end13,] + 13
    inFile[input$column_start14:input$column_end14,] <- inFile[input$column_start14:input$column_end14,] + 14
    inFile[input$column_start15:input$column_end15,] <- inFile[input$column_start15:input$column_end15,] + 15
    
    component_number2 <- input$column_end2 - input$column_end1
    component_number3 <- input$column_end3 - input$column_end2
    component_number4 <- input$column_end4 - input$column_end3
    component_number5 <- input$column_end5 - input$column_end4
    component_number6 <- input$column_end6 - input$column_end5
    component_number7 <- input$column_end7 - input$column_end6
    component_number8 <- input$column_end8 - input$column_end7
    component_number9 <- input$column_end9 - input$column_end8
    component_number10 <- input$column_end10 - input$column_end9
    component_number11 <- input$column_end11 - input$column_end10
    component_number12 <- input$column_end12 - input$column_end11
    component_number13 <- input$column_end13 - input$column_end12
    component_number14 <- input$column_end14 - input$column_end13
    component_number15 <- input$column_end15 - input$column_end14
    
    
    inFile<- cbind(c(rep(input$component1, input$column_end1),
                     rep(input$component2, component_number2),
                     rep(input$component3, component_number3),
                     rep(input$component4, component_number4),
                     rep(input$component5, component_number5),
                     rep(input$component6, component_number6),
                     rep(input$component7, component_number7),
                     rep(input$component8, component_number8),
                     rep(input$component9, component_number9),
                     rep(input$component10, component_number10),
                     rep(input$component11, component_number11),
                     rep(input$component12, component_number12),
                     rep(input$component13, component_number13),
                     rep(input$component14, component_number14),
                     rep(input$component15, component_number15)),
                   inFile)
    
    pca2 <- prcomp(inFile[, input$column_start:input$column_end], scale = scale_value_2)
    
    ggbiplot(pcobj = pca2, choices = 1:2, obs.scale = 0.5, var.scale = 2,
             groups = inFile[, input$label], ellipse = TRUE, ellipse.prob = input$ellipse_prob, alpha = input$alpha,
             labels.size = 3, var.axes = var_axes_value, varname.size = input$varname_size, varname.adjust = input$varname_adjust,
             varname.abbrev = varname_abbrev_value) +
      scale_colour_manual(values = c(input$color1, input$color2, input$color3, input$color4, input$color5, input$color6, input$color7, input$color8, input$color9, input$color10,
                                     input$color11, input$color12, input$color13, input$color14, input$color15)) +
      theme(legend.direction = "horizontal", legend.position = "top")
  }
  
  output$plot2d_1 <- renderPlot ({
    plotInput1()
  })
  
  output$downloadPlot = downloadHandler(
    filename = "pca.png",
    content = function(file) {
      png(file, width = 1000)
      print(plotInput1())
      dev.off()
    },
    contentType = "image/png",
  )
  #######################################################################
  output$summary_1 <- renderPrint({
    #scale
    if (input$scale == 1) {
      scale_value <-TRUE
    } else if (input$scale == 2) {
      scale_value <-FALSE
    } else {
      scale_value <-FALSE
    }
    
    #fancy
    if (input$fancy == 1) {
      fancy_value <-TRUE
    } else if (input$fancy == 2) {
      fancy_value <-FALSE
    } else {
      fancy_value <-FALSE
    }
    
    #col
    if (input$col == 0) {
      col_value <-0
    } else if (input$col == 1) {
      col_value <-1
    } else if (input$col == 2) {
      col_value <-2
    } else if (input$col == 3) {
      col_value <-3
    } else if (input$col == 4) {
      col_value <-4
    } else if (input$col == 5) {
      col_value <-5
    } else if (input$col == 6) {
      col_value <-6
    } else if (input$col == 7) {
      col_value <-7
    } else if (input$col == 8) {
      col_value <-8
    } else if (input$col == 9) {
      col_value <-NULL
    } else {
      col_value <-NULL
    }
    
    #radius
    if (input$radius == 0.750) {
      radius_value <-0.750
    } else if (input$radius == 0.875) {
      radius_value <-0.875
    } else if (input$radius == 1) {
      radius_value <-1
    } else if (input$radius == 1.17) {
      radius_value <-1.17
    } else if (input$radius == 1.33) {
      radius_value <-1.33
    } else if (input$radius == 1.50) {
      radius_value <-1.50
    } else if (input$radius == 1.67) {
      radius_value <-1.67
    } else if (input$radius == 1.83) {
      radius_value <-1.83
    } else if (input$radius == 2.00) {
      radius_value <-2.00
    } else if (input$radius == 2.33) {
      radius_value <-2.33
    } else {
      radius <-1
    }
    
    #legend
    if (input$legend == 0) {
      legend_value <-"topleft"
    } else if (input$legend == 1) {
      legend_value <-"topright"
    } else if (input$legend == 2) {
      legend_value <-"top"
    } else if (input$legend == 3) {
      legend_value <-"bottomleft"
    } else if (input$legend == 4) {
      legend_value <-"bottomright"
    } else if (input$legend == 5) {
      legend_value <-"bottom"
    } else if (input$legend == 6) {
      legend_value <-NULL
    } else {
      legend_value <-"topleft"
    }
    
    #　csvファイルのテーブル読み込み
    inFile <-inFile()[]
    
    inFile=data.frame("inFile"= inFile)
    compiled_inFile<-inFile[input$column_start:input$column_end]
    pca <-prcomp(compiled_inFile, scale= scale_value)
    summary(pca)
  })
  output$round_1 <- renderPrint({
    #scale
    if (input$scale == 1) {
      scale_value <-TRUE
    } else if (input$scale == 2) {
      scale_value <-FALSE
    } else {
      scale_value <-FALSE
    }
    
    #fancy
    if (input$fancy == 1) {
      fancy_value <-TRUE
    } else if (input$fancy == 2) {
      fancy_value <-FALSE
    } else {
      fancy_value <-FALSE
    }
    
    #col
    if (input$col == 0) {
      col_value <-0
    } else if (input$col == 1) {
      col_value <-1
    } else if (input$col == 2) {
      col_value <-2
    } else if (input$col == 3) {
      col_value <-3
    } else if (input$col == 4) {
      col_value <-4
    } else if (input$col == 5) {
      col_value <-5
    } else if (input$col == 6) {
      col_value <-6
    } else if (input$col == 7) {
      col_value <-7
    } else if (input$col == 8) {
      col_value <-8
    } else if (input$col == 9) {
      col_value <-NULL
    } else {
      col_value <-NULL
    }
    
    #radius
    if (input$radius == 0.750) {
      radius_value <-0.750
    } else if (input$radius == 0.875) {
      radius_value <-0.875
    } else if (input$radius == 1) {
      radius_value <-1
    } else if (input$radius == 1.17) {
      radius_value <-1.17
    } else if (input$radius == 1.33) {
      radius_value <-1.33
    } else if (input$radius == 1.50) {
      radius_value <-1.50
    } else if (input$radius == 1.67) {
      radius_value <-1.67
    } else if (input$radius == 1.83) {
      radius_value <-1.83
    } else if (input$radius == 2.00) {
      radius_value <-2.00
    } else if (input$radius == 2.33) {
      radius_value <-2.33
    } else {
      radius <-1
    }
    
    #legend
    if (input$legend == 0) {
      legend_value <-"topleft"
    } else if (input$legend == 1) {
      legend_value <-"topright"
    } else if (input$legend == 2) {
      legend_value <-"top"
    } else if (input$legend == 3) {
      legend_value <-"bottomleft"
    } else if (input$legend == 4) {
      legend_value <-"bottomright"
    } else if (input$legend == 5) {
      legend_value <-"bottom"
    } else if (input$legend == 6) {
      legend_value <-NULL
    } else {
      legend_value <-"topleft"
    }
    
    #　csvファイルのテーブル読み込み
    inFile <-inFile()[]
    
    inFile=data.frame("inFile"= inFile)
    compiled_inFile<-inFile[input$column_start:input$column_end]
    pca <-prcomp(compiled_inFile, scale= scale_value)
    round(pca$rotation, 4)
  })
  ##################################################################
  output$plot2d_2 <- renderPlot ({
    plotInput2()
  })
  
  output$downloadPlot2 = downloadHandler(
    filename = "pca2.png",
    content = function(file) {
      png(file, width = 1000)
      print(plotInput2())
      dev.off()
    },
    contentType = "image/png",
  )
  
  output$summary_2 <- renderPrint({
    #scale
    if (input$scale_2 == 1) {
      scale_value_2 <-TRUE
    } else if (input$scale_2 == 2) {
      scale_value_2 <-FALSE
    } else {
      scale_value_2 <-FALSE
    }
    #var.axes
    if (input$var_axes == 1) {
      var_axes_value <-TRUE
    } else if (input$var_axes == 2) {
      var_axes_value <-FALSE
    } else {
      var_axes_value <-FALSE
    }
    #varname.abbrev
    if (input$varname_abbrev == 1) {
      varname_abbrev_value <-TRUE
    } else if (input$varname_abbrev == 2) {
      varname_abbrev_value <-FALSE
    } else {
      varname_abbrev_value <-FALSE
    }
    #　csvファイルのテーブル読み込み
    #　csvファイルのテーブル読み込み
    #inFile1 <- reactive(read.csv(input$file1$datapath, header=TRUE, sep = ','))
    #　csvファイルのテーブル読み込み
    #　csvファイルのテーブル読み込み
    #inFile1 <- reactive(read.csv(input$file1$datapath, header=TRUE, sep = ','))
    inFile <-inFile()[]
    inFile=data.frame("inFile"= inFile)
    inFile<-inFile[input$column_start:input$column_end]
    inFile[input$column_start1:input$column_end1,] <- inFile[input$column_start1:input$column_end1,] + 1
    inFile[input$column_start2:input$column_end2,] <- inFile[input$column_start2:input$column_end2,] + 2
    inFile[input$column_start3:input$column_end3,] <- inFile[input$column_start3:input$column_end3,] + 3
    inFile[input$column_start4:input$column_end4,] <- inFile[input$column_start4:input$column_end4,] + 4
    inFile[input$column_start5:input$column_end5,] <- inFile[input$column_start5:input$column_end5,] + 5
    inFile[input$column_start6:input$column_end6,] <- inFile[input$column_start6:input$column_end6,] + 6
    inFile[input$column_start7:input$column_end7,] <- inFile[input$column_start7:input$column_end7,] + 7
    inFile[input$column_start8:input$column_end8,] <- inFile[input$column_start8:input$column_end8,] + 8
    inFile[input$column_start9:input$column_end9,] <- inFile[input$column_start9:input$column_end9,] + 9
    inFile[input$column_start10:input$column_end10,] <- inFile[input$column_start10:input$column_end10,] + 10
    inFile[input$column_start11:input$column_end11,] <- inFile[input$column_start11:input$column_end11,] + 11
    inFile[input$column_start12:input$column_end12,] <- inFile[input$column_start12:input$column_end12,] + 12
    inFile[input$column_start13:input$column_end13,] <- inFile[input$column_start13:input$column_end13,] + 13
    inFile[input$column_start14:input$column_end14,] <- inFile[input$column_start14:input$column_end14,] + 14
    inFile[input$column_start15:input$column_end15,] <- inFile[input$column_start15:input$column_end15,] + 15
    
    component_number2 <- input$column_end2 - input$column_end1
    component_number3 <- input$column_end3 - input$column_end2
    component_number4 <- input$column_end4 - input$column_end3
    component_number5 <- input$column_end5 - input$column_end4
    component_number6 <- input$column_end6 - input$column_end5
    component_number7 <- input$column_end7 - input$column_end6
    component_number8 <- input$column_end8 - input$column_end7
    component_number9 <- input$column_end9 - input$column_end8
    component_number10 <- input$column_end10 - input$column_end9
    component_number11 <- input$column_end11 - input$column_end10
    component_number12 <- input$column_end12 - input$column_end11
    component_number13 <- input$column_end13 - input$column_end12
    component_number14 <- input$column_end14 - input$column_end13
    component_number15 <- input$column_end15 - input$column_end14
    
    
    inFile<- cbind(c(rep(input$component1, input$column_end1),
                     rep(input$component2, component_number2),
                     rep(input$component3, component_number3),
                     rep(input$component4, component_number4),
                     rep(input$component5, component_number5),
                     rep(input$component6, component_number6),
                     rep(input$component7, component_number7),
                     rep(input$component8, component_number8),
                     rep(input$component9, component_number9),
                     rep(input$component10, component_number10),
                     rep(input$component11, component_number11),
                     rep(input$component12, component_number12),
                     rep(input$component13, component_number13),
                     rep(input$component14, component_number14),
                     rep(input$component15, component_number15)),
                   inFile)
    
    pca2 <- prcomp(inFile[, input$column_start:input$column_end], scale = scale_value_2)
    summary(pca2)
  })
  
  #inFile1 <- reactive(read.csv(input$file1$datapath, header=TRUE, sep = ',')))
  output$round_2 <- renderPrint({
    #scale
    if (input$scale_2 == 1) {
      scale_value_2 <-TRUE
    } else if (input$scale_2 == 2) {
      scale_value_2 <-FALSE
    } else {
      scale_value_2 <-FALSE
    }
    #var.axes
    if (input$var_axes == 1) {
      var_axes_value <-TRUE
    } else if (input$var_axes == 2) {
      var_axes_value <-FALSE
    } else {
      var_axes_value <-FALSE
    }
    #varname.abbrev
    if (input$varname_abbrev == 1) {
      varname_abbrev_value <-TRUE
    } else if (input$varname_abbrev == 2) {
      varname_abbrev_value <-FALSE
    } else {
      varname_abbrev_value <-FALSE
    }
    #　csvファイルのテーブル読み込み
    #　csvファイルのテーブル読み込み
    #inFile1 <- reactive(read.csv(input$file1$datapath, header=TRUE, sep = ','))
    #　csvファイルのテーブル読み込み
    #　csvファイルのテーブル読み込み
    #inFile1 <- reactive(read.csv(input$file1$datapath, header=TRUE, sep = ','))
    inFile <-inFile()[]
    inFile=data.frame("inFile"= inFile)
    inFile<-inFile[input$column_start:input$column_end]
    inFile[input$column_start1:input$column_end1,] <- inFile[input$column_start1:input$column_end1,] + 1
    inFile[input$column_start2:input$column_end2,] <- inFile[input$column_start2:input$column_end2,] + 2
    inFile[input$column_start3:input$column_end3,] <- inFile[input$column_start3:input$column_end3,] + 3
    inFile[input$column_start4:input$column_end4,] <- inFile[input$column_start4:input$column_end4,] + 4
    inFile[input$column_start5:input$column_end5,] <- inFile[input$column_start5:input$column_end5,] + 5
    inFile[input$column_start6:input$column_end6,] <- inFile[input$column_start6:input$column_end6,] + 6
    inFile[input$column_start7:input$column_end7,] <- inFile[input$column_start7:input$column_end7,] + 7
    inFile[input$column_start8:input$column_end8,] <- inFile[input$column_start8:input$column_end8,] + 8
    inFile[input$column_start9:input$column_end9,] <- inFile[input$column_start9:input$column_end9,] + 9
    inFile[input$column_start10:input$column_end10,] <- inFile[input$column_start10:input$column_end10,] + 10
    inFile[input$column_start11:input$column_end11,] <- inFile[input$column_start11:input$column_end11,] + 11
    inFile[input$column_start12:input$column_end12,] <- inFile[input$column_start12:input$column_end12,] + 12
    inFile[input$column_start13:input$column_end13,] <- inFile[input$column_start13:input$column_end13,] + 13
    inFile[input$column_start14:input$column_end14,] <- inFile[input$column_start14:input$column_end14,] + 14
    inFile[input$column_start15:input$column_end15,] <- inFile[input$column_start15:input$column_end15,] + 15
    
    component_number2 <- input$column_end2 - input$column_end1
    component_number3 <- input$column_end3 - input$column_end2
    component_number4 <- input$column_end4 - input$column_end3
    component_number5 <- input$column_end5 - input$column_end4
    component_number6 <- input$column_end6 - input$column_end5
    component_number7 <- input$column_end7 - input$column_end6
    component_number8 <- input$column_end8 - input$column_end7
    component_number9 <- input$column_end9 - input$column_end8
    component_number10 <- input$column_end10 - input$column_end9
    component_number11 <- input$column_end11 - input$column_end10
    component_number12 <- input$column_end12 - input$column_end11
    component_number13 <- input$column_end13 - input$column_end12
    component_number14 <- input$column_end14 - input$column_end13
    component_number15 <- input$column_end15 - input$column_end14
    
    
    inFile<- cbind(c(rep(input$component1, input$column_end1),
                     rep(input$component2, component_number2),
                     rep(input$component3, component_number3),
                     rep(input$component4, component_number4),
                     rep(input$component5, component_number5),
                     rep(input$component6, component_number6),
                     rep(input$component7, component_number7),
                     rep(input$component8, component_number8),
                     rep(input$component9, component_number9),
                     rep(input$component10, component_number10),
                     rep(input$component11, component_number11),
                     rep(input$component12, component_number12),
                     rep(input$component13, component_number13),
                     rep(input$component14, component_number14),
                     rep(input$component15, component_number15)),
                   inFile)
    
    pca2 <- prcomp(inFile[, input$column_start:input$column_end], scale = scale_value_2)
    round(pca2$rotation, 4)
  })
})
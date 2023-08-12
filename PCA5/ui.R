out_plot2d <-plotOutput(outputId = "plot2d")

shinyUI(fluidPage(
  tags$head(tags$link(rel = "stylesheet", type = "text/css", href = "style.css"),
            tags$link(rel = "shortcut icon", href = "RStudio.ico"),
            tags$title("PCA 5 Elements")),
  h1("Principal Component Analysis"),
  p("5"),
  #file input
  fileInput(inputId = "file1", label = "Select a csv file",
            accept = c("text/csv")
            ,multiple = FALSE
            ,width = "80%"
            ,buttonLabel = "Open folder"
            ,placeholder = "File not selected"
  ),
  h2("Pattern 1 PCA Graph"),
  h3(id = "h3_label",
     "Input csv Data Information"),
  fluidRow(
    column(width = 6,
           #number
           numericInput("column_start", 
                        label = h3("Start Row"), 
                        value = 2)
    ),
    column(width = 6,
           #number
           numericInput("column_end", 
                        label = h3("End Row"), 
                        value = 3)
    )
  ),
  h3(id = "h3_label",
     "Set Calculation Method"),
  #scale
  selectInput("scale", label = h3("scale"), 
              choices = list("TRUE" = 1, "FALSE" = 2),
              selected = 2),
  h3(id = "h3_label",
     "Adjustment of Appearance"),
  fluidRow(
    column(width=6,
           #label
           numericInput("label", 
                        label = h3("Label"), 
                        value = 1),
           #fancy
           selectInput("fancy", label = h3("Additional Rendering Options"), 
                       choices = list("TRUE" = 1, "FALSE" = 2),
                       selected = 1),
           #legend
           selectInput("legend", label = h3("Legend Display Position"), 
                       choices = list("topleft" = 0, "topright" = 1, "top" = 2, "bottomleft" = 3,
                                      "bottomright" = 4, "bottom" = 5, "NULL" = 6),
                       selected = 0)
    ),
    column(width=6,
           #bg
           selectInput("bg", label = h3("Background Color"), 
                       choices = list("white" = 0, "black" = 1, "red" = 2, "green" = 3,
                                      "blue" = 4, "cyan" = 5, "magenta" = 6, "yellow" = 7, "grey" = 8),
                       selected = 0),
           #col
           selectInput("col", label = h3("Element Color"), 
                       choices = list("white" = 0, "black" = 1, "red" = 2, "green" = 3,
                                      "blue" = 4, "cyan" = 5, "magenta" = 6, "yellow" = 7,
                                      "grey" = 8, "standard" = 9),
                       selected = 9),
           #radius
           selectInput("radius", label = h3("Dot Size"), 
                       choices = list("0.750" = 0.750, "0.875" = 0.875, "1" = 1, "1.17" = 1.17,
                                      "1.33" = 1.33, "1.50" = 1.50, "1.67" = 1.67, "1.83" = 1.83,
                                      "2.00" = 2.00, "2.33" = 2.33),
                       selected = 1)
    ),
  ),
  #ellipse.ci
  sliderInput("ellipse_ci", label = h3("ellipse.ci"),
              min = 0, max = 1, value = 0.9),
  #plot
  div(
    plotOutput("plot2d_1")
  ),
  #Download
  downloadButton('downloadPlot', label = 'Download PCA graph 1'),
  #summary
  h3("Principal Component Score"),
  verbatimTextOutput("summary_1"), 
  #round
  h3("Eigenvector Value"),
  verbatimTextOutput("round_1"), 
  ########################################################################################
  h2("Pattern 2 PCA Graph"),
  h3(id = "h3_label",
     "Input csv Data Information"),
  fluidRow(
    column(width = 6,
           #number1
           numericInput("column_start1", 
                        label = h3("Start Column of Element 1"), 
                        value = 1),
           #number2
           numericInput("column_start2", 
                        label = h3("Start Column of Element 2"), 
                        value = 3),
           #number3
           numericInput("column_start3", 
                        label = h3("Start Column of Element 3"), 
                        value = 5),
           #number4
           numericInput("column_start4", 
                        label = h3("Start Column of Element 4"), 
                        value = 7),
           #number5
           numericInput("column_start5", 
                        label = h3("Start Column of Element 5"), 
                        value = 9)
    ),
    column(width = 6,
           #number1
           numericInput("column_end1", 
                        label = h3("End Column of Element 1"), 
                        value = 2),
           #number2
           numericInput("column_end2", 
                        label = h3("ENd Column of Element 2"), 
                        value = 4),
           #number3
           numericInput("column_end3", 
                        label = h3("End Column of Element 3"), 
                        value = 6),
           #number4
           numericInput("column_end4", 
                        label = h3("End Column of Element 4"), 
                        value = 8),
           #number5
           numericInput("column_end5", 
                        label = h3("End Column of Element 5"), 
                        value = 7)
    )
  ),
  h3(id = "h3_label",
     "Assigning Labels"),
  fluidRow(
    column(width = 6,
           #component 1
           textInput("component1",label=h3("Element 1 Name")),
           #component 3
           textInput("component3",label=h3("Element 3 Name"))
    ),
    column(width = 6,
           #component 2
           textInput("component2",label=h3("Element 2 Name")),
           #component 4
           textInput("component4",label=h3("Element 4 Name"))
    )
  ),
  #component 5
  textInput("component5",label=h3("Element 5 Name")),
  h3(id = "h3_label",
     "Elements Colors"),
  fluidRow(
    column(width = 6,
           #color1
           selectInput("color1", label = h3("Element 1 Color"), 
                       choices = list("Violet" = "blueviolet",
                                      "Blue" = "blue",
                                      "Vermilion" = "brown1",
                                      "Turquoise" = "cadetblue3",
                                      "Yellow Green" = "chartreuse",
                                      "Green" = "darkgreen",
                                      "Light orange" = "deeppink3",
                                      "Purple" = "purple4",
                                      "Bronze" = "turquoise4",
                                      "Scarlet" = "tomato4",
                                      "Lime" = "springgreen",
                                      "Gray" = "gray40",
                                      "Ocher" = "darkgoldenrod1",
                                      "Magenta" = "hotpink4",
                                      "Blue Purple" = "lightslateblue",
                                      "Mint" = "darkseagreen",
                                      "Orange" = "orange3",
                                      "Gold" = "lightgoldenrod",
                                      "Black" = "gray3",
                                      "Bright Green" = "olivedrab3"),
                       selected = "blueviolet"),
           #color3
           selectInput("color3", label = h3("Element 3 Color"), 
                       choices = list("Violet" = "blueviolet",
                                      "Blue" = "blue",
                                      "Vermilion" = "brown1",
                                      "Turquoise" = "cadetblue3",
                                      "Yellow Green" = "chartreuse",
                                      "Green" = "darkgreen",
                                      "Light orange" = "deeppink3",
                                      "Purple" = "purple4",
                                      "Bronze" = "turquoise4",
                                      "Scarlet" = "tomato4",
                                      "Lime" = "springgreen",
                                      "Gray" = "gray40",
                                      "Ocher" = "darkgoldenrod1",
                                      "Magenta" = "hotpink4",
                                      "Blue Purple" = "lightslateblue",
                                      "Mint" = "darkseagreen",
                                      "Orange" = "orange3",
                                      "Gold" = "lightgoldenrod",
                                      "Black" = "gray3",
                                      "Bright Green" = "olivedrab3"),
                       selected = "blue")
    ),
    column(width = 6,
           #color2
           selectInput("color2", label = h3("Element 2 Color"), 
                       choices = list("Violet" = "blueviolet",
                                      "Blue" = "blue",
                                      "Vermilion" = "brown1",
                                      "Turquoise" = "cadetblue3",
                                      "Yellow Green" = "chartreuse",
                                      "Green" = "darkgreen",
                                      "Light orange" = "deeppink3",
                                      "Purple" = "purple4",
                                      "Bronze" = "turquoise4",
                                      "Scarlet" = "tomato4",
                                      "Lime" = "springgreen",
                                      "Gray" = "gray40",
                                      "Ocher" = "darkgoldenrod1",
                                      "Magenta" = "hotpink4",
                                      "Blue Purple" = "lightslateblue",
                                      "Mint" = "darkseagreen",
                                      "Orange" = "orange3",
                                      "Gold" = "lightgoldenrod",
                                      "Black" = "gray3",
                                      "Bright Green" = "olivedrab3"),
                       selected = "purple4"),
           #color4
           selectInput("color4", label = h3("Element 4 Color"), 
                       choices = list("Violet" = "blueviolet",
                                      "Blue" = "blue",
                                      "Vermilion" = "brown1",
                                      "Turquoise" = "cadetblue3",
                                      "Yellow Green" = "chartreuse",
                                      "Green" = "darkgreen",
                                      "Light orange" = "deeppink3",
                                      "Purple" = "purple4",
                                      "Bronze" = "turquoise4",
                                      "Scarlet" = "tomato4",
                                      "Lime" = "springgreen",
                                      "Gray" = "gray40",
                                      "Ocher" = "darkgoldenrod1",
                                      "Magenta" = "hotpink4",
                                      "Blue Purple" = "lightslateblue",
                                      "Mint" = "darkseagreen",
                                      "Orange" = "orange3",
                                      "Gold" = "lightgoldenrod",
                                      "Black" = "gray3",
                                      "Bright Green" = "olivedrab3"),
                       selected = "turquoise4")
    )
  ),
  #color5
  selectInput("color5", label = h3("Element 5 Color"), 
              choices = list("Violet" = "blueviolet",
                             "Blue" = "blue",
                             "Vermilion" = "brown1",
                             "Turquoise" = "cadetblue3",
                             "Yellow Green" = "chartreuse",
                             "Green" = "darkgreen",
                             "Light orange" = "deeppink3",
                             "Purple" = "purple4",
                             "Bronze" = "turquoise4",
                             "Scarlet" = "tomato4",
                             "Lime" = "springgreen",
                             "Gray" = "gray40",
                             "Ocher" = "darkgoldenrod1",
                             "Magenta" = "hotpink4",
                             "Blue Purple" = "lightslateblue",
                             "Mint" = "darkseagreen",
                             "Orange" = "orange3",
                             "Gold" = "lightgoldenrod",
                             "Black" = "gray3",
                             "Bright Green" = "olivedrab3"),
              selected = "brown1"),
  h3(id = "h3_label",
     "Set Calculation Method"),
  #scale
  selectInput("scale_2", label = h3("scale"), 
              choices = list("TRUE" = 1, "FALSE" = 2),
              selected = 2),
  fluidRow(
    column(width=6,
           #ellipse.prob
           sliderInput("ellipse_prob", label = h3("ellipse.prob"),
                       min = 0, max = 1, value = 0.9),
           #var.axes
           selectInput("var_axes", label = h3("var.axes"), 
                       choices = list("TRUE" = 1, "FALSE" = 2),
                       selected = 1),
           #varname.size
           sliderInput("varname_size", label = h3("varname.size"),
                       min = 0, max = 10, value = 3)
    ),
    column(width=6,
           #alpha
           sliderInput("alpha", label = h3("alpha"),
                       min = 0, max = 1, value = 1),
           #varname.abbrev
           selectInput("varname_abbrev", label = h3("varname.abbrev"), 
                       choices = list("TRUE" = 1, "FALSE" = 2),
                       selected = 2),
           #varname.adjust
           sliderInput("varname_adjust", label = h3("varname.adjust"),
                       min = 0, max = 3, value = 1)
    )
  ),
  
  ############################################################################
  #plot
  div(
    plotOutput("plot2d_2")
  ),
  #Download
  downloadButton('downloadPlot2', label = 'Download PCA graph 2'),
  #summary
  h3("Principal Component Score"),
  verbatimTextOutput("summary_2"), 
  #round
  h3("Eigenvector Value"),
  verbatimTextOutput("round_2")
))

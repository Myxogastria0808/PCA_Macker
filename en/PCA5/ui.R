out_plot2d <-plotOutput(outputId = "plot2d")

shinyUI(fluidPage(
  tags$head(tags$link(rel="preconnect", href="https://fonts.googleapis.com"),
            tags$link(rel="preconnect", href="https://fonts.gstatic.com"),
            tags$link(href="https://fonts.googleapis.com/css2?family=Roboto+Mono&family=Zen+Maru+Gothic&display=swap", rel="stylesheet"),
            ######################################
            tags$link(rel = "stylesheet", type = "text/css", href = "style.css"),
            tags$link(rel = "shortcut icon", href = "RStudio.ico"),
            tags$title("PCA5")),
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
  ##################################
  div(class="space"),
  ##################################
  h2("Pattern 1 PCA Graph"),
  h3(id = "h3_label",
     "Input csv Data"),
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
  selectInput("scale", label = h3("Standardization"), 
              choices = list("TRUE" = 1, "FALSE" = 2),
              selected = 1),
  h3(id = "h3_label",
     "Adjustment of Appearance"),
  fluidRow(
    column(width=6,
           #label
           numericInput("label", 
                        label = h3("Label"), 
                        value = 1),
    ),
    column(width=6,
           #bg
           selectInput("bg", label = h3("Background Color"), 
                       choices = list("white" = 0, "black" = 1, "red" = 2, "green" = 3,
                                      "blue" = 4, "cyan" = 5, "magenta" = 6, "yellow" = 7, "grey" = 8),
                       selected = 0),
    ),
  ),
  fluidRow(
    column(width=6,
           #fancy
           selectInput("fancy", label = h3("Additional Rendering Options"), 
                       choices = list("TRUE" = 1, "FALSE" = 2),
                       selected = 1),
    ),
    column(width=6,
           #col
           selectInput("col", label = h3("Color of Factors"), 
                       choices = list("white" = 0, "black" = 1, "red" = 2, "green" = 3,
                                      "blue" = 4, "cyan" = 5, "magenta" = 6, "yellow" = 7,
                                      "grey" = 8, "standard" = 9),
                       selected = 9),
    ),
  ),
  fluidRow(
    column(width=6,
           #legend
           selectInput("legend", label = h3("Legend Display Position"), 
                       choices = list("topleft" = 0, "topright" = 1, "top" = 2, "bottomleft" = 3,
                                      "bottomright" = 4, "bottom" = 5, "NULL" = 6),
                       selected = 0),
    ),
    column(width=6,
           #radius
           selectInput("radius", label = h3("Dot Size"), 
                       choices = list("0.750" = 0.750, "0.875" = 0.875, "1" = 1, "1.17" = 1.17,
                                      "1.33" = 1.33, "1.50" = 1.50, "1.67" = 1.67, "1.83" = 1.83,
                                      "2.00" = 2.00, "2.33" = 2.33),
                       selected = 1),
    ),
  ),
  #ellipse.ci
  sliderInput("ellipse_ci", label = h3("Size of the Ellipse in Confidence Interval"),
              min = 0, max = 1, value = 0.9),
  #plot
  div(
    plotOutput("plot2d_1")
  ),
  #Download
  downloadButton('downloadPlot', label = 'Download PCA Graph 1'),
  #summary
  h3("Principal Component Score"),
  verbatimTextOutput("summary_1"), 
  #round
  h3("Eigenvector Value"),
  verbatimTextOutput("round_1"), 
  ########################################################################################
  div(class="space"),
  ##################################
  h2("Pattern 2 PCA Graph"),
  h3(id = "h3_label",
     "Input csv Data"),
  fluidRow(
    column(width = 6,
           #number1
           numericInput("column_start1", 
                        label = h3("Start Column of 1st Factor"), 
                        value = 2)
    ),
    column(width = 6,
           #number1
           numericInput("column_end1", 
                        label = h3("End Column of 1st Factor"), 
                        value = 3)
    ),
  ),
  fluidRow(
    column(width = 6,
           #number2
           numericInput("column_start2", 
                        label = h3("Start Column of 2nd Factor"), 
                        value = 4)
    ),
    column(width = 6,
           #number2
           numericInput("column_end2", 
                        label = h3("End Column of 2nd Factor"), 
                        value = 5)
    ),
  ),
  fluidRow(
    column(width = 6,
           #number3
           numericInput("column_start3", 
                        label = h3("Start Column of 3rd Factor"), 
                        value = 6)
    ),
    column(width = 6,
           #number3
           numericInput("column_end3", 
                        label = h3("End Column of 3rd Factor"), 
                        value = 7)
    ),
  ),
  fluidRow(
    column(width = 6,
           #number4
           numericInput("column_start4", 
                        label = h3("Start Column of 4th Factor"), 
                        value = 8)
    ),
    column(width = 6,
           #number4
           numericInput("column_end4", 
                        label = h3("End Column of 4th Factor"), 
                        value = 9)
    ),
  ),
  fluidRow(
    column(width = 6,
           #number5
           numericInput("column_start5", 
                        label = h3("Start Column of 5th Factor"), 
                        value = 10)
    ),
    column(width = 6,
           #number5
           numericInput("column_end5", 
                        label = h3("End Column of 5th Factor"), 
                        value = 11)
    ),
  ),
  h3(id = "h3_label",
     "Assigning Labels"),
  fluidRow(
    column(width = 6,
           #component 1
           textInput("component1",label=h3("Label of 1st Factor"))
    ),
    column(width = 6,
           #component 2
           textInput("component2",label=h3("Label of 2nd Factor"))
    )
  ),
  fluidRow(
    column(width = 6,
           #component 3
           textInput("component3",label=h3("Label of 3rd Factor"))
    ),
    column(width = 6,
           #component 4
           textInput("component4",label=h3("Label of 4th Factor"))
    )
  ),
  #component 5
  textInput("component5",label=h3("Label of 5th Factor")),
  h3(id = "h3_label",
     "Color of Factors"),
  fluidRow(
    column(width = 6,
           #color1
           selectInput("color1", label = h3("Color of 1st Factor"), 
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
                       selected = "blueviolet")
    ),
    column(width = 6,
           #color2
           selectInput("color2", label = h3("Color of 2nd Factor"), 
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
    )
  ),
  fluidRow(
    column(width = 6,
           #color3
           selectInput("color3", label = h3("Color of 3rd Factor"), 
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
                       selected = "brown1")
    ),
    column(width = 6,
           #color4
           selectInput("color4", label = h3("Color of 4th Factor"), 
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
                       selected = "cadetblue3")
    )
  ),
  #color5
  selectInput("color5", label = h3("Color of 5th Factor"), 
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
              selected = "chartreuse"),
  h3(id = "h3_label",
     "Set Calculation Method"),
  #scale
  selectInput("scale_2", label = h3("Standardization"), 
              choices = list("TRUE" = 1, "FALSE" = 2),
              selected = 1),
  h3(id = "h3_label",
     "Adjustment of Appearance"),
  fluidRow(
    column(width=6,
           #ellipse.prob
           sliderInput("ellipse_prob", label = h3("Size of the Ellipse in Normal Probability"),
                       min = 0, max = 1, value = 0.9)
    ),
    column(width=6,
           #alpha
           sliderInput("alpha", label = h3("Transparency"),
                       min = 0, max = 1, value = 1)
    ),
  ),
  fluidRow(
    column(width=6,
           #var.axes
           selectInput("var_axes", label = h3("Display Variable Names"), 
                       choices = list("TRUE" = 1, "FALSE" = 2),
                       selected = 1)
    ),
    column(width=6,
           #varname.abbrev
           selectInput("varname_abbrev", label = h3("Position of Variable Names"), 
                       choices = list("TRUE" = 1, "FALSE" = 2),
                       selected = 2)
    ),
  ),
  fluidRow(
    column(width=6,
           #varname.size
           sliderInput("varname_size", label = h3("Size of the Text for Variable Names"),
                       min = 0, max = 10, value = 3)
    ),
    column(width=6,
           #varname.adjust
           sliderInput("varname_adjust", label = h3("Vector Length of Variable Names"),
                       min = 0, max = 3, value = 1)
    ),
  ),
  ############################################################################
  #plot
  div(
    plotOutput("plot2d_2")
  ),
  #Download
  downloadButton('downloadPlot2', label = 'Download PCA Graph 2'),
  #summary
  h3("Principal Component Score"),
  verbatimTextOutput("summary_2"), 
  #round
  h3("Eigenvector Value"),
  verbatimTextOutput("round_2")
))


out_plot2d <-plotOutput(outputId = "plot2d")

shinyUI(fluidPage(
  tags$head(tags$link(rel = "stylesheet", type = "text/css", href = "style.css"),
            tags$link(rel = "shortcut icon", href = "RStudio.ico"),
            tags$title("PCA 19 Elements")),
  h1("Principal Component Analysis"),
  p("19"),
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
    column(width=6,
           #number1
           numericInput("column_start1", 
                        label = h3("Start Column of Element 1"), 
                        value = 1)
    ),
    column(width=6,
           #number1
           numericInput("column_end1", 
                        label = h3("End Column of Element 1"), 
                        value = 2)
    )
  ),
  fluidRow(
    column(width=6,
           #number2
           numericInput("column_start2", 
                        label = h3("Start Column of Element 2"), 
                        value = 3)
    ),
    column(width=6,
           #number2
           numericInput("column_end2", 
                        label = h3("End Column of Element 2"), 
                        value = 4)
    )
  ),
  fluidRow(
    column(width=6,
           #number3
           numericInput("column_start3", 
                        label = h3("Start Column of Element 3"), 
                        value = 5)
    ),
    column(width=6,
           #number3
           numericInput("column_end3", 
                        label = h3("End Column of Element 3"), 
                        value = 6)
    )
  ),
  fluidRow(
    column(width=6,
           #number4
           numericInput("column_start4", 
                        label = h3("Start Column of Element 4"), 
                        value = 7)
    ),
    column(width=6,
           #number4
           numericInput("column_end4", 
                        label = h3("End Column of Element 4"), 
                        value = 8)
    )
  ),
  fluidRow(
    column(width=6,
           #number5
           numericInput("column_start5", 
                        label = h3("Start Column of Element 5"), 
                        value = 9)
    ),
    column(width=6,
           #number5
           numericInput("column_end5", 
                        label = h3("End Column of Element 5"), 
                        value = 10)
    )
  ),
  fluidRow(
    column(width=6,
           #number6
           numericInput("column_start6", 
                        label = h3("Start Column of Element 6"), 
                        value = 11)
    ),
    column(width=6,
           #number6
           numericInput("column_end6", 
                        label = h3("End Column of Element 6"), 
                        value = 12)
    )
  ),
  fluidRow(
    column(width=6,
           #number7
           numericInput("column_start7", 
                        label = h3("Start Column of Element 7"), 
                        value = 13)
    ),
    column(width=6,
           #number7
           numericInput("column_end7", 
                        label = h3("End Column of Element 7"), 
                        value = 14)
    )
  ),
  fluidRow(
    column(width=6,
           #number8
           numericInput("column_start8", 
                        label = h3("Start Column of Element 8"), 
                        value = 15)
    ),
    column(width=6,
           #number8
           numericInput("column_end8", 
                        label = h3("End Column of Element 8"), 
                        value = 16)
    )
  ),
  fluidRow(
    column(width=6,
           #number9
           numericInput("column_start9", 
                        label = h3("Start Column of Element 9"), 
                        value = 17)
    ),
    column(width=6,
           #number9
           numericInput("column_end9", 
                        label = h3("End Column of Element 9"), 
                        value = 18)
    )
  ),
  fluidRow(
    column(width=6,
           #number10
           numericInput("column_start10", 
                        label = h3("Start Column of Element 10"), 
                        value = 19)
    ),
    column(width=6,
           #number10
           numericInput("column_end10", 
                        label = h3("End Column of Element 10"), 
                        value = 20)
    )
  ),
  fluidRow(
    column(width=6,
           #number11
           numericInput("column_start11", 
                        label = h3("Start Column of Element 11"), 
                        value = 21)
    ),
    column(width=6,
           #number11
           numericInput("column_end11", 
                        label = h3("End Column of Element 11"), 
                        value = 22)
    )
  ),
  fluidRow(
    column(width=6,
           #number12
           numericInput("column_start12", 
                        label = h3("Start Column of Element 12"), 
                        value = 23)
    ),
    column(width=6,
           #number12
           numericInput("column_end12", 
                        label = h3("End Column of Element 12"), 
                        value = 24)
    )
  ),
  fluidRow(
    column(width=6,
           #number13
           numericInput("column_start13", 
                        label = h3("Start Column of Element 13"), 
                        value = 25)
    ),
    column(width=6,
           #number13
           numericInput("column_end13", 
                        label = h3("End Column of Element 13"), 
                        value = 26)
    )
  ),
  fluidRow(
    column(width=6,
           #number14
           numericInput("column_start14", 
                        label = h3("Start Column of Element 14"), 
                        value = 27)
    ),
    column(width=6,
           #number14
           numericInput("column_end14", 
                        label = h3("End Column of Element 14"), 
                        value = 28)
    )
  ),
  fluidRow(
    column(width=6,
           #number15
           numericInput("column_start15", 
                        label = h3("Start Column of Element 15"), 
                        value = 29)
    ),
    column(width=6,
           #number15
           numericInput("column_end15", 
                        label = h3("End Column of Element 15"), 
                        value = 30)
    )
  ),
  fluidRow(
    column(width=6,
           #number16
           numericInput("column_start16", 
                        label = h3("Start Column of Element 16"), 
                        value = 31)
    ),
    column(width=6,
           #number16
           numericInput("column_end16", 
                        label = h3("End Column of Element 16"), 
                        value = 32)
    )
  ),
  fluidRow(
    column(width=6,
           #number17
           numericInput("column_start17", 
                        label = h3("Start Column of Element 17"), 
                        value = 33)
    ),
    column(width=6,
           #number17
           numericInput("column_end17", 
                        label = h3("End Column of Element 17"), 
                        value = 34)
    )
  ),
  fluidRow(
    column(width=6,
           #number18
           numericInput("column_start18", 
                        label = h3("Start Column of Element 18"), 
                        value = 35)
    ),
    column(width=6,
           #number18
           numericInput("column_end18", 
                        label = h3("End Column of Element 18"), 
                        value = 36)
    )
  ),
  fluidRow(
    column(width=6,
           #number19
           numericInput("column_start19", 
                        label = h3("Start Column of Element 19"), 
                        value = 37)
    ),
    column(width=6,
           #number19
           numericInput("column_end19", 
                        label = h3("End Column of Element 19"), 
                        value = 38)
    )
  ),
  h3(id = "h3_label",
     "Assigning Labels"),
  fluidRow(
    column(width=6,
           #component 1
           textInput("component1",label=h3("Element 1 Name")),
    ),
    column(width=6,
           #component 2
           textInput("component2",label=h3("Element 2 Name")),
    ),
  ),
  fluidRow(
    column(width=6,
           #component 3
           textInput("component3",label=h3("Element 3 Name")),
    ),
    column(width=6,
           #component 4
           textInput("component4",label=h3("Element 4 Name")),
    ),
  ),
  fluidRow(
    column(width=6,
           #component 5
           textInput("component5",label=h3("Element 5 Name")),
    ),
    column(width=6,
           #component 6
           textInput("component6",label=h3("Element 6 Name")),
    ),
  ),
  fluidRow(
    column(width=6,
           #component 7
           textInput("component7",label=h3("Element 7 Name")),
    ),
    column(width=6,
           #component 8
           textInput("component8",label=h3("Element 8 Name")),
    ),
  ),
  fluidRow(
    column(width=6,
           #component 9
           textInput("component9",label=h3("Element 9 Name")),
    ),
    column(width=6,
           #component 10
           textInput("component10",label=h3("Element 10 Name")),
    ),
  ),
  fluidRow(
    column(width=6,
           #component 11
           textInput("component11",label=h3("Element 11 Name")),
    ),
    column(width=6,
           #component 12
           textInput("component12",label=h3("Element 12 Name")),
    ),
  ),
  fluidRow(
    column(width=6,
           #component 13
           textInput("component13",label=h3("Element 13 Name")),
    ),
    column(width=6,
           #component 14
           textInput("component14",label=h3("Element 14 Name")),
    ),
  ),
  fluidRow(
    column(width=6,
           #component 15
           textInput("component15",label=h3("Element 15 Name")),
    ),
    column(width=6,
           #component 16
           textInput("component16",label=h3("Element 16 Name")),
    ),
  ),
  fluidRow(
    column(width=6,
           #component 17
           textInput("component17",label=h3("Element 17 Name")),
    ),
    column(width=6,
           #component 18
           textInput("component18",label=h3("Element 18 Name")),
    ),
  ),
  #component 19
  textInput("component19",label=h3("Element 19 Name")),
  h3(id = "h3_label",
     "Elements Colors"),
  fluidRow(
    column(width=6,
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
                       selected = "blueviolet")
    ),
    column(width=6,
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
                       selected = "blue")
    )
  ),
  fluidRow(
    column(width=6,
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
                       selected = "brown1")
    ),
    column(width=6,
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
                       selected = "cadetblue3")
    )
  ),
  fluidRow(
    column(width=6,
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
                       selected = "chartreuse")
    ),
    column(width=6,
           #color6
           selectInput("color6", label = h3("Element 6 Color"), 
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
                       selected = "darkgreen")
    )
  ),
  fluidRow(
    column(width=6,
           #color7
           selectInput("color7", label = h3("Element 7 Color"), 
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
                       selected = "deeppink3")
    ),
    column(width=6,
           #color8
           selectInput("color8", label = h3("Element 8 Color"), 
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
                       selected = "purple4")
    )
  ),
  fluidRow(
    column(width=6,
           #color9
           selectInput("color9", label = h3("Element 9 Color"), 
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
    ),
    column(width=6,
           #color10
           selectInput("color10", label = h3("Element 10 Color"), 
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
                       selected = "tomato4")
    )
  ),
  fluidRow(
    column(width=6,
           #color11
           selectInput("color11", label = h3("Element 11 Color"), 
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
                       selected = "springgreen")
    ),
    column(width=6,
           #color12
           selectInput("color12", label = h3("Element 12 Color"), 
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
                       selected = "gray40")
    )
  ),
  fluidRow(
    column(width=6,
           #color13
           selectInput("color13", label = h3("Element 13 Color"), 
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
                       selected = "darkgoldenrod1")
    ),
    column(width=6,
           #color14
           selectInput("color14", label = h3("Element 14 Color"), 
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
                       selected = "hotpink4")
    )
  ),
  fluidRow(
    column(width=6,
           #color15
           selectInput("color15", label = h3("Element 15 Color"), 
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
                       selected = "lightslateblue")
    ),
    column(width=6,
           #color16
           selectInput("color16", label = h3("Element 16 Color"), 
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
                       selected = "darkseagreen")
    )
  ),
  fluidRow(
    column(width=6,
           #color17
           selectInput("color17", label = h3("Element 17 Color"), 
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
                       selected = "orange3")
    ),
    column(width=6,
           #color18
           selectInput("color18", label = h3("Element 18 Color"), 
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
                       selected = "lightgoldenrod")
    )
  ),
  #color19
  selectInput("color19", label = h3("Element 19 Color"), 
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
              selected = "gray3"),
  h3(id = "h3_label",
     "Set Calculation Method"),
  #scale
  selectInput("scale_2", label = h3("scale"), 
              choices = list("TRUE" = 1, "FALSE" = 2),
              selected = 2),
  h3(id = "h3_label",
     "Adjustment of Appearance"),
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

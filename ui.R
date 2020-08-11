shinyUI(navbarPage("Choose parameters", 
                   
                   tabPanel("Table", 
                            
                            # Sidebar 
                            sidebarLayout( 
                                    sidebarPanel( 
                                            helpText("Choose the parameters of the car that you like"),
                                            
                                            sliderInput('hp', 'Horsepower:', min=50, max=340, value=c(50,340), step=10),
                                            
                                            sliderInput('disp', 'Engine displacement (cubic inches):', min=70, max=480, value=c(70,480), step=10),
                                            
                                            checkboxGroupInput('am', 'Transmission type:', c("Automatic"=0, "Manual"=1), selected = c(0,1)),
                                            
                                            checkboxGroupInput('cyl', 'Number of cylinders:', c("4"=4, "6"=6, "8"=8), selected = c(4,6,8)),
                                            
                                            sliderInput('cost', 'Fuel Price (per gallon):', min=2, max=5, value=2.5, step=0.01),
                                            
                                            sliderInput('gas', 'Maximum fuel consumtion:', min=1, max=1000, value=100, step=10),
                                            
                                            sliderInput('dis', 'Distance (in miles):', min=1, max=1000, value=100, step=10)
                                            
                                    ), 
                                    
                                    mainPanel( 
                                            dataTableOutput('table') 
                                    ) 
                            ) 
                   ) 
                    
) 
)

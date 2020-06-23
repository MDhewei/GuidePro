library(shiny)
library(shinydashboard)
library(DT)
library(shinythemes)


ui <- navbarPage(
  'GuidePro',
  theme = shinytheme("cerulean"),
  id = 'panels',
  ## The introduction page of GuidePro
  tabPanel(strong('Introduction',style = "font-size:18px"),
           titlePanel(h2("GuidePro: An ensemble predictor for prioritizing sgRNAs in CRISPR/Cas9 protein knockouts")),
           br(),
           fluidRow(
             column(12,
                    ## The left column gives detailed introduction of GuidePro: 
                    column(6,
                           p(align='justify',style = "font-size:18px",'CRISPR/Cas9 has evolved as the most powerful tool for gene perturbation, and is widely used in protein functional 
                           analysis. Successful knockout of a protein-coding gene relies on the selection of sgRNAs with high efficiency. GuidePro is a two-layer ensemble 
                           predictor that enables the integration of multiple predictive methods and feature sets to predict sgRNA efficiency for the CRISPR/Cas9 protein knockouts'),
                           
                           p(align='justify',style = "font-size:18px",'As shown in the figure at right, GuidePro integrates three sub-predictors trained with different types of 
                           features that jointly contribute to protein knockouts: i) The first predictor (SA) predicts sgRNA activity by combining the outputs of other sgRNA sequence-based 
                           predictive methods. ii) The second predictor (FP) predicts the frameshift probabilities, leveraging the indel type predictions of three different machine learning 
                           models. iii) The third predictor (AS) predicts the amino acid sensitivity to CRISPR knockouts from annotation of protein features.
                           Tested on 6 independent datasets from 5 studies, GuidePro demonstrated consistent superior performance in predicting phenotypes caused by protein loss-of-function, 
                           suggesting its robustness in a broad spectrum of experimental settings.'),
                           
                           p(align='justify',style = "font-size:18px",'You can select highly efficient sgRNAs for any given protein-coding gene',
                             actionLink("sgRNASelection", strong("here."))),
                           
                           p(align='justify',style = "font-size:18px",strong('OR'),'download genome-wide prioritized top10 sgRNAs for ',
                             a(strong('human,'),href="https://figshare.com/articles/Genome-wide-sgRNA-Selection-human_csv_zip/12504167",style = "font-size:18px"),
                             a(strong('monkey,'),href="https://figshare.com/articles/Genome-wide-sgRNA-Selection-monkey_csv_zip/12504245",style = "font-size:18px"),
                             a(strong('mouse.'),href="https://figshare.com/articles/Genome-wide-sgRNA-Selection-mouse_csv_zip/12504203",style = "font-size:18px")),
                             
                           p(align='justify',style = "font-size:18px",'To learn more about our research, please visit'
                             ,a(strong('Xu lab.'),href="https://www.mdanderson.org/research/departments-labs-institutes/labs/xu-laboratory.html"))
                           
                    ),
                    ## The right columns contains a figure of GuidePro workflow
                    column(6, img(src='Workflow.png', align = "center",width="600",height="425"),
                           hr(),
                           p(align='center',style = "font-size:20px",'Copyright (C) 2020 @',img(src='MD_Anderson.png', align = "center",width="200",height="100")))
             ))
             ),
  
  ## This tab is the main page for sgRNA selection
  tabPanel(strong("sgRNA Selection",style = "font-size:18px"),value='Selection',
           titlePanel("Select high efficient sgRNAs for CRISPR-Cas9 mediated Protein Knockouts"),
           br(),
           ## User input the genome and gene name
           sidebarLayout(
             sidebarPanel(
               radioButtons("GenomeInput", "Select Genome",
                            choices = c("Human",'Monkey','Mouse'),
                            selected = "Human"),
               selectInput("GeneInput", "Gene Symbol",
                           choices = c("EP300", "CREBBP", "CDK9"),
                           selected = 'CREBBP'),
               downloadButton('downloadData', 'Download'),
               width = 4,
               hr(),
               ## Text to explain the meaning of output table
               p(align = 'justify', strong('Explaination of different columns of output table:')),
               p(align = 'justify','1.spacer: 20 nt spacer sequence followed by NGG PAM motif.'),
               p(align = 'justify','2.align: The number of perfect match sequences in the genome.'),
               p(align = 'justify','3.genomic.loci: The genomic location of target DNA sequence.'),
               p(align = 'justify','4.gene: The official symbol of target protein-coding gene.'),
               p(align = 'justify','5.SA.score: Combined score for sgRNA activity, higher value means higher activity.'),
               p(align = 'justify','6.FS.score: Combined score for frameshift probability, higher value means higher probability.'),
               p(align = 'justify','7.AS.score: Combined score for amino acid sensitivity to knockout, higher value means more sensitive.'),
               p(align = 'justify','8.GuidePro.score: Combined score of FS, AS and SA, higher value indicates higher knockout efficiency'),
               'Source code and data sets are available at:',
               a('https://github.com/MDhewei/GuidePro',href="https://github.com/MDhewei/GuidePro")
             ),
             ## Render the inquried table
             mainPanel(DT::dataTableOutput('results'))
           )
  ),
  
  tabPanel(strong('Contacts',style = "font-size:18px"),
           titlePanel('Any feedbacks and reasonable requests are welcomed to contact us'),
           br(),
           p(align = 'left',style = "font-size:18px",'Wei He (First author)',br(),
             'Postdoctoral Fellow',br(),
             'The University of Texas MD Anderson Cancer Center',br(),
             'Department of Epigenetics and Molecular Carcinogenesis',br(),
             'Science Park',br(),
             '1808 Park Road 1C',br(),
             'Smithville, Texas 78957',br(),
             '512-237-6510',br(),
             'whe3@mdanderson.org'),
           hr(),
           p(align = 'left',style = "font-size:18px",'Han Xu (Supervisor)',br(),
             'Principal Investigator',br(),
             'The University of Texas MD Anderson Cancer Center',br(),
             'Department of Epigenetics and Molecular Carcinogenesis',br(),
             'Science Park',br(),
             '1808 Park Road 1C',br(),
             'Smithville, Texas 78957',br(),
             '512-237-9474',br(),
             'hxu4@mdanderson.org'),
           br(),
           img(src='MD_Anderson.png', align = "center",width="200",height="100")
  ),
  
  navbarMenu(strong("Useful links",style = "font-size:18px"),
             tabPanel(a('Xu lab web page',href="https://www.mdanderson.org/research/departments-labs-institutes/labs/xu-laboratory.html")),
             tabPanel(a('GuidePro source code',href="https://github.com/MDhewei/GuidePro")),
             tabPanel(a('SSC web server',href="http://cistrome.org/SSC/")),
             tabPanel(a('MoPAC for multi-sample CRISPR screen analysis',href="https://sourceforge.net/projects/mopac/")),
             tabPanel(a('ProTiler for tiling CRISPR screen analysis',href="https://github.com/MDhewei/protiler")),
             tabPanel(a('CRISPR-DO for genome-wide CRISPR design',href="http://cistrome.org/crispr/"))
  )
)

server <- function(input, output, session){
   ## Link the 'here' in introduction page to sgRNA selection page
   observeEvent(input$sgRNASelection, {
    newvalue <- "Selection"
    updateTabItems(session, "panels", newvalue)
   })
  ## Response to input genome to change list of selectinput gene names
  observe({
    genome <- input$GenomeInput
    gene_tb <- read.csv(paste(genome,'_genes.csv',sep=''))
    x <- gene_tb['Gene']
    
    updateSelectInput(session, "GeneInput",
                      label = 'Gene',
                      choices = x,
                      selected = x[1,1]
    )
  })
  ## Response to input gene to render output tables
  output$results <- DT::renderDataTable({
    genome <- input$GenomeInput
    gene <- input$GeneInput
    f_path <- paste('./',genome,'/',gene,'_sgRNA_selection.csv',sep='')
    tb_o <- read.csv(f_path)
    return(tb_o)
  })
  ## Response to download button to download the table
  output$downloadData <- downloadHandler(
    filename = function(){
      paste(input$GenomeInput,'/',input$GeneInput,'_sgRNA_selection.csv',sep='')
    },
    content = function(theFile){ 
      genome <- input$GenomeInput
      gene <- input$GeneInput
      f_path <- paste('./',genome,'/',gene,'_sgRNA_selection.csv',sep='')
      tb <- read.csv(f_path)
      write.csv(tb,theFile)
    }
  )
}

shinyApp(ui = ui, server = server)

# UI Functions

# Junaid Favourite Films
junaid_fave_film <- function() {
    return( fluidRow(
        column(width = 4,
               div(class = "thumbnail text-center",
                   style = "padding: 10px;",
                   img(class = "img-rounded img-responsive",
                       style = "height: 200px; width: 200px;",
                       src = "SW_New_Hope.png"),
                   h3(class="text-info", "A New Hope"),
                   p(class="text-secondary",
                     "It is a period of civil wars in the galaxy. A brave alliance of underground freedom fighters has challenged the tyranny and oppression of the awesome Galactic Empire."),
                   a(class = "btn btn-primary btn-sm",
                     href = "https://www.youtube.com/watch?v=vZ734NWnAHA", 
                     target = "_blank",
                     "View Trailer")
               )
        ),
        column(width = 4,
               div(class = "thumbnail text-center",
                   style = "padding: 10px;",
                   img(class = "img-rounded img-responsive",
                       style = "height: 200px; width: 200px;",
                       src = "SW_Empire_Strikes_Back.png"),
                   h3(class="text-info", "The Empire Strikes Back"),
                   p(class="text-secondary",
                     "It is a dark time for the Rebellion. Although the Death Star has been destroyed, Imperial troops have driven the Rebel forces from their hidden base and pursued them across the galaxy."),
                   a(class = "btn btn-primary btn-sm",
                     href = "https://www.youtube.com/watch?v=JNwNXF9Y6kY",
                     target = "_blank",
                     "View Trailer")
               )
        ),
        column(width = 4,
               div(class = "thumbnail text-center",
                   style = "padding: 10px;",
                   img(class = "img-rounded img-responsive",
                       style = "height: 200px; width: 200px;",
                       src = "SW_Return_Jedi.png"),
                   h3(class="text-info", "Return of the Jedi"),
                   p(class="text-secondary",
                     "Luke Skywalker has returned to his home planet of Tatooine in an attempt to rescue his friend Han Solo from the clutches of the vile gangster Jabba the Hutt."),
                   a(class = "btn btn-primary btn-sm",
                     href = "https://www.youtube.com/watch?v=7L8p7_SLzvU",
                     target = "_blank",
                     "View Trailer")
               )
        )
        
    ) )
}

# Aaron's Favourite Films
aaron_fave_film <- function() {
    return( fluidRow(
        column(width = 4,
               div(class = "thumbnail text-center",
                   style = "padding: 10px;",
                   img(class = "img-rounded img-responsive",
                       style = "height: 200px; width: 200px;",
                       src = "Shutter_Island.png"),
                   h3(class="text-info", "Shutter Island"),
                   p(class="text-secondary",
                     "In 1954, a U.S. Marshal investigates the disappearance of a murderer who escaped from a hospital for the criminally insane. In 1954, up-and-coming U.S. marshal Teddy Daniels is assigned to investigate the disappearance of a patient from Boston's Shutter Island Ashecliffe Hospital."),
                   a(class = "btn btn-primary btn-sm",
                     href = "https://www.youtube.com/watch?v=5iaYLCiq5RM", 
                     target = "_blank",
                     "View Trailer")
               )
        ),
        column(width = 4,
               div(class = "thumbnail text-center",
                   style = "padding: 10px;",
                   img(class = "img-rounded img-responsive",
                       style = "height: 200px; width: 200px;",
                       src = "Zodiac.png"),
                   h3(class="text-info", "Zodiac"),
                   p(class="text-secondary",
                     "A serial killer in the San Francisco Bay Area taunts police with his letters and cryptic messages. We follow the investigators and reporters in this lightly fictionalized account of the true 1970's case as they search for the murderer, becoming obsessed with the case. Based on Robert Graysmith's book, the movie's focus is the lives and careers of the detectives and newspaper people."),
                   a(class = "btn btn-primary btn-sm",
                     href = "https://www.youtube.com/watch?v=tnFSymJ3Qgg",
                     target = "_blank",
                     "View Trailer")
               )
        )
    ) )
}

# Junaid Favourite Books
junaid_fave_books <- function() {
    x <- fluidRow(
        column(width = 4,
               div(class = "thumbnail text-center",
                   style = "padding: 10px;",
                   img(class = "img-rounded img-responsive",
                       style = "height: 200px; width: 200px;",
                       src = "regression_and_other_stories.png"),
                   h3(class="text-info", "Regression and other Stories"),
                   h4(class = "text-centre", "Andrew Gelman"),
                   p(class="text-secondary",
                     "A practical approach to using regression and computation to solve real-world problems of estimation, prediction, and causal inference."),
                   a(class = "btn btn-primary btn-sm",
                     href = "https://www.amazon.co.uk/Regression-Stories-Analytical-Methods-Research/dp/1107676517/",
                     target = "_blank",
                     "View on Amazon")
               )
        ),
        column(width = 4,
               div(class = "thumbnail text-center",
                   style = "padding: 10px;",
                   img(class = "img-rounded img-responsive",
                       style = "height: 200px; width: 200px;",
                       src = "atomic_habits.png"),
                   h3(class="text-info", "Atomic Habits"),
                   h4(class = "text-centre", "James Clear"),
                   p(class="text-secondary",
                     "In this ground-breaking book, Clears reveals exactly how these minuscule changes can grow into such life-altering outcomes. He uncovers a handful of simple life hacks, and delves into cutting-edge psychology and neuroscience to explain why they matter."),
                   a(class = "btn btn-primary btn-sm",
                     href = "https://www.amazon.co.uk/Atomic-Habits-Proven-Build-Break-ebook/dp/B01N5AX61W/",
                     target = "_blank",
                     "View on Amazon")
               )
        ),
        column(width = 4,
               div(class = "thumbnail text-center",
                   style = "padding: 10px;",
                   img(class = "img-rounded img-responsive",
                       style = "height: 200px; width: 200px;",
                       src = "art_of_statistics.png"),
                   h3(class="text-info", "The Art of Statistics"),
                   h4(class = "text-centre", "David Spiegelhalter"),
                   p(class="text-secondary",
                     "Do busier hospitals have higher survival rates? How many trees are there on the planet? Why do old men have big ears? David Spiegelhalter reveals the answers to these and many other questions - questions that can only be addressed using statistical science."),
                   a(class = "btn btn-primary btn-sm",
                     href = "https://www.amazon.co.uk/Learning-Data-Statistics-Pelican-Books/dp/0241258766/",
                     target = "_blank",
                     "View on Amazon")
               )
        )
        
    )
    
    return(x)
}

# Aaron's Favourite Books
aaron_fave_books <- function() {
    x <- fluidRow(
        column(width = 4,
               div(class = "thumbnail text-center",
                   style = "padding: 10px;",
                   img(class = "img-rounded img-responsive",
                       style = "height: 200px; width: 200px;",
                       src = "regression_and_other_stories.png"),
                   h3(class="text-info", "Regression and other Stories"),
                   h4(class = "text-centre", "Andrew Gelman"),
                   p(class="text-secondary",
                     "A practical approach to using regression and computation to solve real-world problems of estimation, prediction, and causal inference."),
                   a(class = "btn btn-primary btn-sm",
                     href = "https://www.amazon.co.uk/Regression-Stories-Analytical-Methods-Research/dp/1107676517/",
                     target = "_blank",
                     "View on Amazon")
               )
        ),
        column(width = 4,
               div(class = "thumbnail text-center",
                   style = "padding: 10px;",
                   img(class = "img-rounded img-responsive",
                       style = "height: 200px; width: 200px;",
                       src = "deep_learning_for_coders.png"),
                   h3(class="text-info", "Deep Learning for Coders"),
                   h4(class = "text-centre", "Jeremy Howard"),
                   p(class="text-secondary",
                     "Deep learning is often viewed as the exclusive domain of math PhDs and big tech companies. But as this hands-on guide demonstrates, programmers comfortable with Python can achieve impressive results in deep learning with little math background, small amounts of data, and minimal code. "),
                   a(class = "btn btn-primary btn-sm",
                     href = "https://www.amazon.co.uk/Deep-Learning-Coders-fastai-PyTorch-ebook/dp/B08C2KM7NR/",
                     target = "_blank",
                     "View on Amazon")
               )
        ),
        column(width = 4,
               div(class = "thumbnail text-center",
                   style = "padding: 10px;",
                   img(class = "img-rounded img-responsive",
                       style = "height: 200px; width: 200px;",
                       src = "art_of_statistics.png"),
                   h3(class="text-info", "The Art of Statistics"),
                   h4(class = "text-centre", "David Spiegelhalter"),
                   p(class="text-secondary",
                     "Do busier hospitals have higher survival rates? How many trees are there on the planet? Why do old men have big ears? David Spiegelhalter reveals the answers to these and many other questions - questions that can only be addressed using statistical science."),
                   a(class = "btn btn-primary btn-sm",
                     href = "https://www.amazon.co.uk/Learning-Data-Statistics-Pelican-Books/dp/0241258766/",
                     target = "_blank",
                     "View on Amazon")
               )
        )
        
    )
    
    return(x)
}




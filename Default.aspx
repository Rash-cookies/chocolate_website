<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Chocolate Website</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv ="X-UA compatible" content="Google Chrome-edge"/>

    <link href="css/Custom.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">

                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>


                </button>
                <a class="navbar-brand" href="Default.aspx"> <span><img src="Icon/LogoIcon.jpg" alt="MyChocorichChocolate " height="30" /></span>My Chocolate</a>

                  </div>
            <div class="navbar-collapse collapse">
                <ul class=" nav navbar-nav navbar-right" >
                    <li class="active" ><a href="Default.aspx">Home</a></li>
                     <li><a href="#">About Us</a></li>
                    <li><a href="#">Contact Us</a></li>
                    <li><a href="#">Blog</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-header">Chocolate</li>
                            <li role="separator" class="divider"></li> 

                            <li><a href="#">White Chocolate</a></li>
                             <li><a href="#">Milk Chocolate</a></li>
                             <li><a href="#">Dark Chocolate</a></li>
                            <li role="separator" class="divider"></li>
                            <li class="dropdown-header">Gift Chocolate</li>
                            <li role="separator" class="divider"></li>

                            <li><a href="#">Choclairs Gold Home Pack</a></li>
                             <li><a href="#"> Rich Cocoa Dark Chocolate Bar</a></li>
                             <li><a href="#"> Cocoa Dark Noir Chocolate</a></li>

                        </ul>
                    </li>

                   <li><a href="SignUp.aspx">SignUp</a></li>
                    <li><a href="SignIn.aspx">SignIn</a></li>
                </ul>
            </div>






        </div>


    </div>
<!-------Image Slider-------->
    
    <div class="container">
  <h2>Carousel Example</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="ImageSlider/personalized-messages-chocolates-1.jpg" alt="Festival chocolate" style="width:100%; height:500px;"/>

           <div class="carousel-caption">
          <h3>Festival Customize Chocolate</h3>
          <p>Chocolate is happiness that you can eat.</p>
               <p><a class="btn btn-lg btn-primary" href="#" role="button">Buy Now</a></p> 
        </div>
      </div>

      <div class="item">
        <img src="ImageSlider/slideimg7download.jpg" alt="Milk Choco" style="width:100%; height:500px;"/>

          <div class="carousel-caption">
          <h3>Milk Chocolate</h3>
          <p>Chocolate is a gift of love to yourself.</p>
        </div>
      </div>
    

        <div class="item">
        <img src="ImageSlider/Slide4images.jpg" alt="Choco Ball" style="width:100%; height:500px;"/>

            <div class="carousel-caption">
          <h3>Chocolate ball</h3>
          <p>A little bit of sweetness can drown out a whole lot of bitterness.</p>
        </div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
    
    
    
<!-------Image Slider End-------->
    
     </div>
    
    <!-------Middle Contents start-------->
        <hr />
    <div class="container center">
       <div class="row">
           <div class="col-lg-4">
               <img class="img-circle" src="Circle mage/DarkCircle.jpg" alt="thumb" width="120" height="120" />
               <h2>Dark Chocolate</h2>
               <p>Dark chocolate is a rich source of antioxidants and minerals, and it generally contains less sugar than milk chocolate. Some research suggests that dark chocolate may help lower the risk of heart disease, reduce inflammation and insulin resistance, and improve brain function.</p>
               <p><a class="btn btn-default"  href="#" role="button">View more &raquo;</a></p>
        </div>

            <div class="col-lg-4">
               <img class="img-circle" src="Circle mage/MilkCircle1.jpg" alt="thumb" width="120" height="120" />
               <h2>Milk Chocolate</h2>
               <p>Milk chocolate is chocolate that has been made with milk. It is lighter in colour and has a creamier taste than plain chocolate.According to the FDA definition, milk chocolate must contain at least 10% chocolate liquor and 12% milk</p>
               <p><a class="btn btn-default"  href="#" role="button">View more &raquo;</a></p>
        </div>

            <div class="col-lg-4">
               <img class="img-circle" src="Circle mage/WhiteCiecl.jpg" alt="thumb" width="120" height="120" />
               <h2>White Chocolate</h2>
               <p>White chocolate has none of the cacao mass, hence the delicate, ivory-like color, which it gets from the cocoa butter. Instead it's rich with cocoa butter, which gives it that suave, subtle taste, that I find compliments dark chocolate desserts and bolder flavors.</p>
               <p><a class="btn btn-default"  href="#" role="button">View more &raquo;</a></p>
        </div>
    </div>
</div>

 <!-------Middle Contents End-------->




 <!-------Footer Contents start here-------->
        <hr />
<footer>

    <div class="container">
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy 2021 Chocolate Site created by Rashmi &middot;<a href="Default.aspx">Home</a>&middot;<a href="#">About Us</a>&middot;<a href="#">Contact Us</a>&middot;<a href="#">Blog</a>&middot;<a href="#">Product</a>&middot;<a href="#">Account</a>&middot;</p>

 </div>

</footer>

  <!-------Footer Contents End here--------> 


   

   
  
   
    </form>

    

</body>
</html>

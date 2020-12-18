
<html>



<head>
    <title>contactus Page</title>
    <meta name="Description" content="qwertyuiopqwerty">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8">

    <link rel="stylesheet" href="css/homepage.css" />
    <link rel="stylesheet" href="css/header&footer.css" />
    <!-- <script src="scripts/contactusscript.js"></script> -->

<body>







    <header id="main-header" class="header-top">
        <div class="content">

            <section class="content-inside">
            </section>

            <section class="content-inside2">
                <div class="column">
                    <img src="assets/facebook.png" alt="fblogo">
                </div>
                <div class="column">
                    <img src="assets/linkedin.png" alt="Llogo">
                </div>

            </section>

        </div>

        <div class="beforeheader">
            <div>
                <img src="assets/logo.png">

            </div>

            <div class="image-txt-container">
                <img src="assets/time.png">
                <div>
                    <p style="font-size: small;">
                        Contact Time
                        <br>
                        <b>Mon - Sat: 09:30 AM - 7:00 PM</b>
                    </p>

                </div>

            </div>


        </div>

        <div style="display: flex;justify-content: center;background-color:rgb(23, 11, 73);">
            <ul style="max-width: 800px;margin-right: auto;margin-left: auto;">
                <li><a href="home.jsp">Home</a></li>
                <li><a href="#">Our Team</a></li>
                <li><a href="#">Industries We Serve</a></li>
                <li>
                    <div class="navbar">
                        <div class="dropdown">
                            <button class="dropbtn">Services
                                <i class="arrow down"></i>
                            </button>
                            <div class="dropdown-content">
                                <a href="#">Registration</a>
                                <a href="#">Audit & Assurance Services</a>
                                <a href="#">Income Tax</a>
                                <a href="#">VAT / CST / Profession Tax</a>
                                <a href="#"> Service Tax</a>
                                <a href="#">Finance</a>
                                <a href="#">International Taxation</a>
                                <a href="#">Payroll Process</a>
                                <a href="#">Client support</a>
                                <a href="#">Accountancy Service</a>
                                <a href="#">Comapny Matters</a>
                            </div>
                        </div>
                    </div></a>
                </li>
                <li><a href="#">Career</a></li>
                <li><a href="ourteam.jsp">Links</a></li>
                <li><a href="contactus.php">Contact us</a></li>


            </ul>

        </div>


    </header>



    <section style="overflow: hidden; background-color: #a9ff9da6;border-radius: 10px;width: 870px;
    margin: auto;margin-bottom: 50px;
    padding: 10px;
    margin-top: 50px;align-self: auto;">

        <section>
            <p style="text-align: start;margin-left: 50px;"><b>If you would like to contact us for any reason you can
                    reach to us at:
                </b></p>
            <section style="background-color: #7cdd6f83;border-radius: 10px;width: auto;
             margin-left: 250px;
             padding: 10px;
             ">
                <p>
                    <b>Pune Add -</b><br>
                    700, Sadashiv Peth,<br> Office 501, Fifth Floor,<br> Jondhale Chowk, Above Nandkumar Collection,
                    near Radhika Bhel,<br> Pune, Maharashtra 411030
                    <br>
                    <br>
                    <b>Contact -</b>
                    <br>
                    +919422931710
                    <br>
                    maheshsomani01@gmail.com
                </p>
            </section>
        </section>

        <!-- <section>
            <p style="text-align: start;margin-left: 50px;"><b>For Any business enquiry please fill this form & send it
                    to us:
                </b></p>
            <section style="background-color: #7cdd6f83;border-radius: 10px;width: auto;
             margin-left: 250px;
             padding: 10px;
             ">

                <section>

                    <form>

                        <label for="fname">First Name</label><br>
                        <input type="text" id="fname" name="fname" required><br>

                        <label for="lname">Last Name</label><br>
                        <input type="text" id="lname" name="lname" required><br>

                        <label for="address">Address</label><br>
                        <input type="text" id="address" name="addr" required><br>

                        <label for="mobile">Mobile</label><br>
                        <input type="number" id="mobile" name="mobile" maxlength="10" minlength="10" min="7000000000"
                            max="10000000000" required><br>

                        <label for="email">Email</label><br>
                        <input type="email" id="email" name="email" required><br>

                        <label for="webaddress">Web address</label><br>
                        <input type="url" id="webaddress" name="webaddress"><br>
                        <br>
                        <input type="submit" value="Submit"><br>
                    </form>


                </section>




            </section>
        </section> -->
    <!-- $nameErr = $emailErr = $genderErr = $websiteErr = ""; -->
        <?php
        $fname = $lname= $email = $website = "";
        
        if ($_SERVER["REQUEST_METHOD"] == "POST") {

          if (empty($_POST["fname"])) {
            echo '<script> alert("First name is required")</script>';
          } else {
            $fname = test_input($_POST["fname"]);
            if (!preg_match("/^[a-zA-Z-' ]*$/",$fname)) {
                echo '<script> alert("Only letters and white space allowed")</script>';
            }
          }

            if (empty($_POST["lname"])) {
                echo '<script>alert("Last name is required")</script>';
            } else {
              $fname = test_input($_POST["lname"]);
              if (!preg_match("/^[a-zA-Z-' ]*$/",$fname)) {
                echo '<script>alert("Only letters and white space allowed")</script>';
              }
            }
          
          if (empty($_POST["email"])) {
            echo '<script>alert("Email is required")</script>';
          } else {
            $email = test_input($_POST["email"]);
            if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                echo '<script>alert("Invalid email format")</script>';
            }
          }
            
          if (empty($_POST["website"])) {
            echo '<script>alert("WebURL is required")</script>';
          } else {
            $website = test_input($_POST["website"]);
            if (!preg_match("/\b(?:(?:https?|ftp):\/\/|www\.)[-a-z0-9+&@#\/%?=~_|!:,.;]*[-a-z0-9+&@#\/%=~_|]/i",$website)) {
                echo '<script>alert("WebURL is not correct")</script>';
            }    
          }
        }
        
        function test_input($data) {
          $data = trim($data);
          $data = stripslashes($data);
          $data = htmlspecialchars($data);
          return $data;
        }

        ?>

        <section>
            <p style="text-align: start;margin-left: 50px;"><b>For Any business enquiry please fill this form & send it
                    to us:
                </b></p>
            <section style="background-color: #7cdd6f83;border-radius: 10px;width: auto;
             margin-left: 250px;
             padding: 10px;
             ">

                <section>

                    <form name="contactform" method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" >

                        <label for="fname">First Name</label><br>
                        <input type="text" id="fname" name="fname"><br>

                        <label for="lname">Last Name</label><br>
                        <input type="text" id="lname" name="lname"><br>

                        <label for="address">Address</label><br>
                        <input type="text" id="address" name="addr"><br>

                        <label for="mobile">Mobile</label><br>
                        <input type="number" id="mobile" name="mobile"><br>

                        <label for="email">Email</label><br>
                        <input type="text" id="email" name="email"><br>

                        <label for="webaddress">Web address</label><br>
                        <input type="url" id="webaddress" name="website"><br>
                        <br>
                        <input type="submit" value="Submit"><br>
                    </form>


                </section>




            </section>
        </section>


    </section>


    <footer style="background-color: #050521;padding: 30px;margin-top: 50px;">

        <div class="row">

            <div id="arrowd">
                <h3 style="color: white;margin-left: 10px;">Services</h2>
                    <ul class="footerServicesList">
                        <li><a>Audit and Assurance Services</a></li>
                        <li><a>business solutions</a></li>
                        <!-- <i class="arrow right"></i> -->
                        <li><a>Corporate Law</a></li>
                        <li><a>Direct Tax</a></li>
                        <li><a>Indirect Tax</a></li>





                    </ul>
            </div>

            <div class="col-md-3">
                <h2>Opening Hours</h2>
                <ul class="list-foot padd-inft">
                    <li><span> Mon - Sat : </span>
                        <div class="value pull-right">9.30 am - 7.00 pm</div>
                    </li>
                    <li><span> Sun : </span>
                        <div class="value pull-right">Close</div>
                    </li>
                </ul>
            </div>


        </div>
    </footer>
















</body>



















</head>
</html>
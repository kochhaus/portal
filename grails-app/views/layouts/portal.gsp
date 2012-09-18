<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title><g:layoutTitle default=":: CulinaryCrowd ::"/></title>
        <g:layoutHead/>
		<link href="http://fonts.googleapis.com/css?family=PT+Sans+Narrow:400,700" rel="stylesheet" type="text/css" />
		<r:require modules="mainPage"/>
        <r:layoutResources/>
    </head>
	<body>
        <div id="carousel-navigation">
            <a class="left" href="#left"></a>
            <a class="right" href="#right"></a>
        </div>
        <div id="carousel"></div>
        <div id="header">
            <div class="section">
                <ul>
                    <li>
                        <a href="#">How it works</a>
                    </li>
                    <li>
                        <a href="#">Find Chefs</a>
                    </li>
                    <li>
                        <a href="#">Join public events</a>
                    </li>
                    <li>
                        <a href="#">Sign up</a>
                    </li>
                    <li>
                        <a href="#" id="sign-in">Sign in</a>
                    </li>
                </ul>
                <div class="clearfix"></div>
            </div>
        </div>
	    <div id="container">
            <g:render template="/templates/auth/loginForm" />
            <g:layoutBody/>
        </div>
	    <div id="footer">
	       <div class="section">
	           <div class="menu">
	               <ul>
	                   <li><a href="#">Lorem ipsum</a></li>
	                   <li><a href="#">Dolor sit amet</a></li>
	                   <li><a href="#">consectetur adipiscing</a></li>
	                   <li><a href="#">Curabitur odio</a></li>
	                   <li><a href="#">Nullam dictum risus</a></li>
	               </ul>
	               <ul>
                       <li><a href="#">Lorem ipsum</a></li>
                       <li><a href="#">Dolor sit amet</a></li>
                       <li><a href="#">consectetur adipiscing</a></li>
                       <li><a href="#">Curabitur odio</a></li>
                       <li><a href="#">Nullam dictum risus</a></li>
                   </ul>
                   <ul>
                       <li><a href="#">Lorem ipsum</a></li>
                       <li><a href="#">Dolor sit amet</a></li>
                       <li><a href="#">consectetur adipiscing</a></li>
                       <li><a href="#">Curabitur odio</a></li>
                       <li><a href="#">Nullam dictum risus</a></li>
                   </ul>
                   <div class="clearfix"></div>
	           </div>
	           <div class="share">
                   <ul>
                       <li><a class="gplus" href="#">gplus</a></li>
                       <li><a class="facebook" href="#">facebook</a></li>
                       <li><a class="twitter" href="#">twitter</a></li>
                   </ul>
               </div>
               <div class="credits">
                   <a class="logo clearfix" href="#"></a>
                   <div class="clearfix"></div>
                   <p class="clearfix">&copy; Culinary Crowd 2012</p>
               </div>
               <div class="clearfix"></div>
	       </div>
	    </div>
        <r:layoutResources/>
	</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="portal"/>
    <r:require modules="profileSettings"/>
</head>
<body>
<div class="panel section rb">
<div class="panel section rb">
               <div id="sub-menu" class="panel">
                   <div id="hello">
                       <h1>hello,</h1>
                       <span>username</span><a href="#notachef" class="nach">not a chef?</a><a href="#notachef" class="logout">log out</a>
                   </div>
                   <ul>
                       <li><a href="#stream" class="selected">stream</a></li>
                       <li><a href="#inboxbookings">inbox bookings</a></li>
                       <li><a href="#profilesettings" class="selected">profile setting</a></li>
                       <li><a href="#menucreation">menu creation</a></li>
                       <li><a href="#account settings" class="selected">account settings</a></li>
                   </ul>
                   <div class="clearfix"></div>
               </div>
               <div class="topbar rb">
                   <ul class="progress">
                       <li><h1>15% profile progress</h1></li>
                       <li><span>&lt;</span></li>
                       <li><div class="progress rb"><div class="rb"></div></div></li>
                       <li><span>&gt;</span></li>
                   </ul>
                   <ul class="info">
                       <li><a href="#" class="question"></a></li>
                       <li><h1>how to full fill your profile?</h1></li>
                   </ul>
                   <div class="clearfix"></div>
               </div>
               <div class="forms">
                   <!--
                       MAIN
                   -->
                <div id="main" class="separator">
                    <p class="info border rb">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In venenatis turpis at risus accumsan et malesuada lorem porttitor. In sodales risus eget sem blandit fringilla. Nulla convallis quam eu lorem tincidunt consequat. Morbi ultrices dignissim quam in rhoncus. Mauris commodo blandit pretium. Nullam accumsan risus eu eros ultrices egestas. Curabitur augue lectus, varius et consectetur id, consequat ac purus. Aenean vel est et justo pretium luctus sed id mi. Sed sit amet rhoncus quam. Quisque felis felis, bibendum quis viverra vel, blandit at lectus. Pellentesque sodales nunc at est condimentum consectetur. Sed aliquet ipsum ut tortor faucibus a tristique neque tincidunt. Nullam malesuada urna eget enim tristique sit amet mollis erat condimentum. Curabitur eleifend massa vitae purus bibendum tincidunt. Proin quis fringilla nulla.</p>
                    <h1>organisational qustions</h1>
                    <form>
                       <div class="left">
                               <label class="required">choose a name</label><br />
                               <input type="text" class="rb" /><br />
                               <label class="required">up to 3 keywords describing you</label><br />
                               <input type="text" class="rb" /><br />
                               <label class="required">maximum of ppl you want to cook for</label><br />
                               <div id="maxPeople"></div>
                           </div>
                           <div class="right">
                               <label class="required">choose up tp 3 cities to cook</label><br />
                               <div id="city"></div>
                               <label class="required">your hourly rate (not the ingredients)</label><br />
                               <div id="rate"></div>
                           </div>
                           <div class="clearfix"></div>

                           <label class="required">choose type of kitchen you can offer</label>
                           <g:render template="kitchenTypes" model="[items: kitchenTypes]" />
                    </form>
                </div>
                   <!--
                       OFFER
                    -->
                   <div id="offer" class="separator">
                       <h1>your offer</h1>
                       <form>
                        <div class="border rb">
                            <div class="header">
                                <div class="checkbox white">
                                    <input type="hidden" name="type_vegetarian" />
                                    <label>cooking course</label>
                                </div>
                                <a href="#" class="question"></a>
                                <div class="clearfix"></div>
                            </div>
                            <div class="body">
                                <ul>
                                    <li>
                                        <label class="required">level</label>
                                    </li>
                                    <li>
                                        <div class="checkbox">
		                                    <input type="hidden" name="type_vegetarian" />
		                                    <label>basic</label>
		                                </div>
		                                <a href="#" class="question"></a>
                                    </li>
                                    <li>
	                                   <div class="checkbox">
	                                       <input type="hidden" name="type_vegetarian" />
	                                       <label>middle</label>
	                                   </div>
	                                   <a href="#" class="question"></a>
                                    </li>
                                    <li>
                                       <div class="checkbox">
                                           <input type="hidden" name="type_vegetarian" />
                                           <label>gourmet</label>
                                       </div>
                                       <a href="#" class="question"></a>
                                    </li>
                                </ul>
                                <ul>
                                    <li>
                                        <label class="required">choose price of ingredients</label>
                                    </li>
                                    <li>
                                        <div class="price-basic"></div>
                                    </li>
                                    <li>
                                        <div class="price-middle"></div>
                                    </li>
                                    <li>
                                       <div class="price-top"></div>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="border rb">
                            <div class="header">
                                <div class="checkbox white">
                                    <input type="hidden" name="type_vegetarian" />
                                    <label>private dinner</label>
                                </div>
                                <a href="#" class="question"></a>
                                <div class="clearfix"></div>
                            </div>
                            <div class="body">
                                <ul>
                                    <li>
                                        <label class="required">level</label>
                                    </li>
                                    <li>
                                        <div class="checkbox">
                                            <input type="hidden" name="type_vegetarian" />
                                            <label>basic</label>
                                        </div>
                                        <a href="#" class="question"></a>
                                    </li>
                                    <li>
                                       <div class="checkbox">
                                           <input type="hidden" name="type_vegetarian" />
                                           <label>middle</label>
                                       </div>
                                       <a href="#" class="question"></a>
                                    </li>
                                    <li>
                                       <div class="checkbox">
                                           <input type="hidden" name="type_vegetarian" />
                                           <label>gourmet</label>
                                       </div>
                                       <a href="#" class="question"></a>
                                    </li>
                                </ul>
                                <ul>
                                    <li>
                                        <label class="required">choose price of ingredients</label>
                                    </li>
                                    <li>
                                        <div class="price-basic"></div>
                                    </li>
                                    <li>
                                        <div class="price-middle"></div>
                                    </li>
                                    <li>
                                       <div class="price-top"></div>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="border rb">
                            <div class="header">
                                <div class="checkbox white">
                                    <input type="hidden" name="type_vegetarian" />
                                    <label>cattering</label>
                                </div>
                                <a href="#" class="question"></a>
                                <div class="clearfix"></div>
                            </div>
                            <div class="body">
                                <ul>
                                    <li>
                                        <label class="required">level</label>
                                    </li>
                                    <li>
                                        <div class="checkbox">
                                            <input type="hidden" name="type_vegetarian" />
                                            <label>basic</label>
                                        </div>
                                        <a href="#" class="question"></a>
                                    </li>
                                    <li>
                                       <div class="checkbox">
                                           <input type="hidden" name="type_vegetarian" />
                                           <label>middle</label>
                                       </div>
                                       <a href="#" class="question"></a>
                                    </li>
                                    <li>
                                       <div class="checkbox">
                                           <input type="hidden" name="type_vegetarian" />
                                           <label>gourmet</label>
                                       </div>
                                       <a href="#" class="question"></a>
                                    </li>
                                </ul>
                                <ul>
                                    <li>
                                        <label class="required">choose price of ingredients</label>
                                    </li>
                                    <li>
                                        <div class="price-basic"></div>
                                    </li>
                                    <li>
                                        <div class="price-middle"></div>
                                    </li>
                                    <li>
                                       <div class="price-top"></div>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                       </form>
                   </div>
                   <!--
                       INTERVIEW
                    -->
                   <div id="interview" class="separator">
                       <h1>tell us about your self</h1>
                       <form>
                           <div class="inquiry">
                               <label>Why did you become a cook? Any story why you become a Chef?</label>
                               <textarea class="rb" rows="" cols=""></textarea>
                               <div></div>
                           </div>
                           <div class="inquiry">
                               <label>What do you likne most about your job?</label>
                               <textarea class="rb" rows="" cols=""></textarea>
                               <div></div>
                           </div>
                           <div class="inquiry">
                               <label>Do you have a favorite product?</label>
                               <textarea class="rb" rows="" cols=""></textarea>
                               <div></div>
                           </div>
                           <div class="questionary">
                               <label>What do you prefer for your guests?</label>
                               <div>
                                <div class="border rb left">
                                    <ul>
                                        <li>
                                            <div class="checkbox">
                                                <input type="hidden" name="type_vegetarian" />
                                                <label>recipe</label>
                                            </div>
                                        </li>
                                        <li class="or">
                                            or
                                        </li>
                                        <li>
                                            <div class="checkbox">
                                                <input type="hidden" name="type_vegetarian" />
                                                <label>frystyle cooking</label>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                    <ul>
                                        <li>
                                            <div class="checkbox">
                                                <input type="hidden" name="type_vegetarian" />
                                                <label>recipe</label>
                                            </div>
                                        </li>
                                        <li class="or">
                                            or
                                        </li>
                                        <li>
                                            <div class="checkbox">
                                                <input type="hidden" name="type_vegetarian" />
                                                <label>frystyle cooking</label>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                    <ul>
                                        <li>
                                            <div class="checkbox">
                                                <input type="hidden" name="type_vegetarian" />
                                                <label>recipe</label>
                                            </div>
                                        </li>
                                        <li class="or">
                                            or
                                        </li>
                                        <li>
                                            <div class="checkbox">
                                                <input type="hidden" name="type_vegetarian" />
                                                <label>frystyle cooking</label>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="border rb right">
                                    <ul>
                                        <li>
                                            <div class="checkbox">
                                                <input type="hidden" name="type_vegetarian" />
                                                <label>recipe</label>
                                            </div>
                                        </li>
                                        <li class="or">
                                            or
                                        </li>
                                        <li>
                                            <div class="checkbox">
                                                <input type="hidden" name="type_vegetarian" />
                                                <label>frystyle cooking</label>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                    <ul>
                                        <li>
                                            <div class="checkbox">
                                                <input type="hidden" name="type_vegetarian" />
                                                <label>recipe</label>
                                            </div>
                                        </li>
                                        <li class="or">
                                            or
                                        </li>
                                        <li>
                                            <div class="checkbox">
                                                <input type="hidden" name="type_vegetarian" />
                                                <label>frystyle cooking</label>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                    <ul>
                                        <li>
                                            <div class="checkbox">
                                                <input type="hidden" name="type_vegetarian" />
                                                <label>recipe</label>
                                            </div>
                                        </li>
                                        <li class="or">
                                            or
                                        </li>
                                        <li>
                                            <div class="checkbox">
                                                <input type="hidden" name="type_vegetarian" />
                                                <label>frystyle cooking</label>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                               </div>
                           </div>
                       </form>
                   </div>
                   <!--
                       PICTURE
                   -->
                   <div id="picture">
                       <h1>upload your profile picture</h1>
                       <form>
                           <div class="image">
                               <img src="images/account/cook_placeholder.png" />
                           </div>
                           <div class="upload">
                               <div class="field rb">
                                   <input type="text" class="rb" />
                                   <input type="button" value="browse"/>
                               </div>
                               <div class="progress rb"><div class="rb"></div></div>
                               <p>Lorem ipsum dolor ammet</p>
                               <p>Lorem ipsum dolor ammet</p>
                               <input type="button" value="save" class="save rb"/>
                           </div>
                           <div class="clearfix"></div>
                       </form>
                   </div>
               </div>
           </div>
       </div>
    <script type="text/javascript">
        var G = G || {};
        G.CookProfileSettings = {
            cities: <g:render template="/jsData/elements/cities" model="[items:cities]" />,
            hourlyRates: <g:render template="/jsData/elements/hourlyRates" model="[items:hourlyRates]" />,
            customersLimitations: <g:render template="/jsData/elements/customersLimitations" model="[items:customersLimitations]" />
        }
    </script>
</body>
</html>
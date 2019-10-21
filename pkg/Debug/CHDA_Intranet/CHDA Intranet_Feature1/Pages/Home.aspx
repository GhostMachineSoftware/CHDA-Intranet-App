<%-- The following 4 lines are ASP.NET directives needed when using SharePoint components --%>

<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" Language="C#" %>

<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- The markup and script in the following Content element will be placed in the <head> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    
    <SharePoint:ScriptLink name="sp.js" runat="server" OnDemand="true" LoadAfterUI="true" Localizable="false" />
    <meta name="WebPartPageExpansion" content="full" />

    <!-- STYLES -->
    <link rel="Stylesheet" type="text/css" href="../Content/App.css" />
    <link rel="Stylesheet" type="text/css" href="../Content/maxuksites.css" />
    <link rel="Stylesheet" type="text/css" href="../Content/chda.css" />
    <link rel="Stylesheet" type="text/css" href="../Content/bootstrap.min.css" />
    <link rel="Stylesheet" type="text/css" href="../Content/jquery-ui.min.css" />
    <link rel="Stylesheet" type="text/css" href="../Content/all.min.css" />
    <link rel="Stylesheet" type="text/css" href="../Content/brands.min.css" />

</asp:Content>

<%-- The markup in the following Content element will be placed in the TitleArea of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">

</asp:Content>

<%-- The markup and script in the following Content element will be placed in the <body> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">

    <style type="text/css">
        #suiteBarDelta, #s4-ribbonrow, #titleAreaBox {display:none}
        #s4-titlerow {height:110px;background-color:#ddddeb}
        .box{height:75px; border:1px solid #545487}
        .headerSection{margin:auto; top:30px;}
    </style>

    <header>
        <div class="container-fluid row headerSection">
            <!-- ***** CHDA Logo ***** -->
            <div class="col-3 pageLogo">                           
                <SharePoint:SiteLogoImage CssClass="ms-siteicon-img" name="onetidHeadbnnr0" id="onetidHeadbnnr2" LogoImageUrl="/PublishingImages/Logos/CHDA_logo.png" runat="server" __designer:Preview="&lt;img id=&quot;ctl00_onetidHeadbnnr2&quot; class=&quot;ms-siteicon-img&quot; name=&quot;onetidHeadbnnr0&quot; Src=&quot;/PublishingImages/chda logo.png&quot; alt=&quot;CHDA Intranet&quot; /&gt;" __designer:Values="&lt;P N=&#39;CssClass&#39; T=&#39;ms-siteicon-img&#39; /&gt;&lt;P N=&#39;LogoImageUrl&#39; T=&#39;/PublishingImages/chda logo.png&#39; /&gt;&lt;P N=&#39;HasAttributes&#39; T=&#39;True&#39; /&gt;&lt;P N=&#39;ID&#39; T=&#39;onetidHeadbnnr2&#39; /&gt;&lt;P N=&#39;Page&#39; ID=&#39;1&#39; /&gt;&lt;P N=&#39;TemplateControl&#39; ID=&#39;2&#39; /&gt;&lt;P N=&#39;AppRelativeTemplateSourceDirectory&#39; R=&#39;-1&#39; /&gt;"></SharePoint:SiteLogoImage>
            </div>
            
            <div class="col-6">
                <nav class="navbar navbar-expand-sm" id="custom-bootstrap-menu">
                    <div class="navbar-collapse collapsed" id="chdaNavbarCollapse">
                        <div class="nav navbar-nav">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">About</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Teams</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Knowledge</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Key Contacts</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Admin</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>

            <div class="col-3"> 
                <!-- ***** Search Box ***** -->
                <div class="navbar-search" id="search"></div>

                <div class="welcomeText" id="welcomeMsg">
                    <p id="message">
                        <!-- The following content will be replaced with the user name when you run the app - see App.js -->
                        initializing...
                    </p>
                </div>
            </div>
        </div>
    </header>

      <!-- SCRIPTS -->
    <script type="text/javascript" src="../Scripts/jquery.min.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.SPServices.min.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.isotope.js"></script>
    <script type="text/javascript" src="../Scripts/jquery-ui.min.js"></script>
    <script type="text/javascript" src="../Scripts/angular.min.js"></script>
    <script type="text/javascript" src="../Scripts/angular-route.min.js"></script>
    <script type="text/javascript" src="../Scripts/angular-animate.min.js"></script>
    <script type="text/javascript" src="../Scripts/angular-loader.min.js"></script>
    <script type="text/javascript" src="../Scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="../Scripts/bootstrap-toggle.min.js"></script>
    <script type="text/javascript" src="../Scripts/all.min.js"></script>
    <script type="text/javascript" src="../Scripts/brands.min.js"></script>
    <script type="text/javascript" src="../Scripts/solid.min.js"></script>
    <script type="text/javascript" src="../Scripts/App.js"></script>

    <script type="text/javascript">
        //$('#s4-titlerow').append('<div class="container-fluid row headerSection"><div class="col-2 headerLeft box"></div><div class="col-6 headerMiddle box"></div><div class="col-4 headerRight box"></div></div>');
    </script>

</asp:Content>

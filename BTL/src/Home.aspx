<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BTL.src.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link rel="stylesheet" href="CSS/Home.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="home" id="home">
        <!-- Header -->
            <header class="header">
                <nav class="navbar">
                    <div class="format-header">
                    <div class="nav-left">
                        <a href="#home" class="logo-layer"><img src="./Img/icon/logo.png" alt="Logo" class="logo" /></a>
                        <ul class="navigator">
                            <li class="nav-selector">Home</li>
                            <li class="nav-selector">Clothes</li>
                            <li class="nav-selector">Cosmetics</li>
                            <li class="nav-selector">About Us</li>
                        </ul>
                    </div>
                    <div class="nav-right">
                        <div class="nav-search nav-btn">
                            <div class="searcher nav-btn">
                                <input type="text" name="" id="" class="search-input" placeholder="Search..." />
                            </div>
                            <img src="./Img/icon/search.png" alt="Search" class="nav-button" />
                        </div>
                        <div class="nav-btn"><img src="./Img/icon/user.png" alt="Sign In" class="nav-button" /></div>
                        <div class="nav-btn"><img src="./Img/icon/shopping-cart.png" alt="Cart" class="nav-button" /></div>
                    </div>
                    </div>
                </nav>
            </header>
        <!-- Body -->
        <main>
            <div class="content">
                <div class="poster">
                    <div class="container">
                        <img src="./Img/bg_poster.png" alt="Poster" class="poster-img"/>
                    </div>
                </div>
                <!--Women Field-->
                <div class="content-part">
                    <div class="content-top">
                        <div class="content-title">
                            <h1 class="content-tag hover-red">#forher</h1>
                            <div class="for-image"><img src="./Img/women/forwomen.jpg" alt="" class="image"/></div>
                        </div>
                        <div class="content-list">
                        <!--Women Shirts-->
                            <div class="product-row">
                                <asp:ListView ID="WomenShirts" runat="server">
                                    <ItemTemplate>
                                    <a class="product" href="SingleProduct.aspx?id=<%#Eval("Id") %>">
                                        <div class="product-top">
                                            <img src="<%# Eval("Image")%>" alt="" class="product-image">
                                        </div>
                                        <div class="product-info">
                                            <div class="product-left">
                                                <h3 class="product-name"><%# Eval("Name") %></h3>
                                                <h4 class="product-price"><%# Eval("Price") %></h4>
                                            </div>
                                            <div class="product-right">
                                                <img src="./Img/icon/shopping-cart.png" alt="" class="add-to-cart"/>
                                            </div>
                                        </div>
                                    </a>
                                    </ItemTemplate>
                                 </asp:ListView>
                            </div>
                         <!--Women Trousers-->
                            <div class="product-row">
                                 <asp:ListView ID="WomenTrousers" runat="server">
                                    <ItemTemplate>
                                            <a class="product" href="SingleProduct.aspx?id=<%#Eval("Id") %>">
                                                <div class="product-top">
                                                    <img src="<%# Eval("Image")%>" alt="" class="product-image">
                                                </div>
                                                <div class="product-info">
                                                    <div class="product-left">
                                                        <h3 class="product-name"><%# Eval("Name") %></h3>
                                                        <h4 class="product-price"><%# Eval("Price") %></h4>
                                                    </div>
                                                    <div class="product-right">
                                                        <img src="./Img/icon/shopping-cart.png" alt="" class="add-to-cart"/>
                                                    </div>
                                                </div>
                                            </a>
                                    </ItemTemplate>
                                 </asp:ListView>
                            </div>
                        </div>
                    </div>
                    <div class="product-poster"></div>
                </div>
                <!--Men Field-->
                <div class="content-part">
                    <div class="content-top reverse-row">
                        <div class="content-title">
                            <h1 class="content-tag hover-red">#forhim</h1>
                            <div class="for-image"><img src="./Img/men/formen.jpg" alt="" class="image"/></div>
                        </div>
                        <div class="content-list">
                            <!-- Men Shirts -->
                            <div class="product-row">
                                 <asp:ListView ID="MenShirts" runat="server">
                                    <ItemTemplate>
                                            <a class="product" href="SingleProduct.aspx?id=<%#Eval("Id") %>">
                                                <div class="product-top">
                                                    <img src="<%# Eval("Image")%>" alt="" class="product-image"/>
                                                </div>
                                                <div class="product-info">
                                                    <div class="product-left">
                                                        <h3 class="product-name"><%# Eval("Name") %></h3>
                                                        <h4 class="product-price"><%# Eval("Price") %></h4>
                                                    </div>
                                                    <div class="product-right">
                                                        <img src="./Img/icon/shopping-cart.png" alt="" class="add-to-cart"/>
                                                    </div>
                                                </div>
                                            </a>
                                    </ItemTemplate>
                                 </asp:ListView>
                            </div>
                            <!-- Men Trousers -->
                            <div class="product-row">
                                 <asp:ListView ID="MenTrousers" runat="server">
                                    <ItemTemplate>
                                            <a class="product" href="SingleProduct.aspx?id=<%#Eval("Id") %>">
                                                <div class="product-top">
                                                    <img src="<%# Eval("Image")%>" alt="" class="product-image"/>
                                                </div>
                                                <div class="product-info">
                                                    <div class="product-left">
                                                        <h3 class="product-name"><%# Eval("Name") %></h3>
                                                        <h4 class="product-price"><%# Eval("Price") %></h4>
                                                    </div>
                                                    <div class="product-right">
                                                        <img src="./Img/icon/shopping-cart.png" alt="" class="add-to-cart"/>
                                                    </div>
                                                </div>
                                            </a>
                                    </ItemTemplate>
                                 </asp:ListView>
                            </div>
                        </div>
                    </div>
                    <div class="product-poster"></div>
                </div>
                <!--Cosmetics Field-->
                <div class="content-part">
                    <div class="content-top">
                        <div class="content-title">
                            <h1 class="content-tag hover-red">#forlady</h1>
                            <div class="for-image"><img src="./Img/cosmetics/forlady.jpg" alt="" class="image"/></div>
                        </div>
                        <div class="content-list">
                            <!-- Lipsticks -->
                            <div class="product-row">
                                 <asp:ListView ID="Lipsticks" runat="server">
                                    <ItemTemplate>
                                            <a class="product" href="SingleProduct.aspx?id=<%#Eval("Id") %>">
                                                <div class="product-top border-bot">
                                                    <img src="<%# Eval("Image")%>" alt="" class="product-image"/>
                                                </div>
                                                <div class="product-info">
                                                    <div class="product-left">
                                                        <h3 class="product-name"><%# Eval("Name") %></h3>
                                                        <h4 class="product-price"><%# Eval("Price") %></h4>
                                                    </div>
                                                    <div class="product-right">
                                                        <img src="./Img/icon/shopping-cart.png" alt="" class="add-to-cart"/>
                                                    </div>
                                                </div>
                                            </a>
                                    </ItemTemplate>
                                 </asp:ListView>
                            </div>
                            <!-- Perfumes -->
                            <div class="product-row">
                                 <asp:ListView ID="Perfumes" runat="server">
                                    <ItemTemplate>
                                            <a class="product" href="SingleProduct.aspx?id=<%#Eval("Id") %>">
                                                <div class="product-top border-bot">
                                                    <img src="<%# Eval("Image")%>" alt="" class="product-image"/>
                                                </div>
                                                <div class="product-info">
                                                    <div class="product-left">
                                                        <h3 class="product-name"><%# Eval("Name") %></h3>
                                                        <h4 class="product-price"><%# Eval("Price") %></h4>
                                                    </div>
                                                    <div class="product-right">
                                                        <img src="./Img/icon/shopping-cart.png" alt="" class="add-to-cart"/>
                                                    </div>
                                                </div>
                                            </a>
                                    </ItemTemplate>
                                 </asp:ListView>
                            </div>
                        </div>
                    </div>
                    <div class="product-poster"></div>
                </div>
            </div>
        </main>
        <!-- Footer -->
        <footer class="footer">
            <div class="footer-top">
                <div class="footer-body">
                    <h4 class="font-larger">About Us</h4>
                    <div class="footer-body hover-red">Infomation</div>
                    <div class="footer-body hover-red">Store Location</div>
                </div>
                <div class="footer-body">
                    <h4 class="font-larger">Help</h4>
                    <div class="footer-body hover-red">FAQ</div>
                    <div class="footer-body hover-red">Return Policy</div>
                    <div class="footer-body hover-red">Privacy Policy</div>
                    <div class="footer-body hover-red">Accessibility</div>
                </div>
                <div class="footer-body">
                    <h4 class="font-larger">Account</h4>
                    <div class="footer-body hover-red">Membership</div>
                    <div class="footer-body hover-red">Profile</div>
                    <div class="footer-body hover-red">Coupons</div>
                </div>
                <div class="footer-body">
                    <h4 class="font-larger">Social Account</h4>
                    <div class="social-img">
                        <img src="./Img/icon/facebook.png" alt="Facebook" class="social-icon"/>
                        <img src="./Img/icon/instagram.png" alt="Instagram" class="social-icon"/>
                        <img src="./Img/icon/youtube.png" alt="Youtube" class="social-icon"/>
                        <img src="./Img/icon/tik-tok.png" alt="Tiktok" class="social-icon"/>
                    </div>
                </div>
            </div>
            <div class="footer">
            <div class="footer-bot">
                <div class="fbot-head">
                    <h3 class="blur-text">Copyright @ Nhom LTWeb ncct</h3>
                    <div class="fbot-head-right">
                        <h3 class="blur-text highline">Terms of Use</h3>
                        <h3 class="blur-text highline">Privacy Policy</h3>
                    </div>
                </div>
                <div class="fbot-title">Company Name: Ngu</div>
                <div class="fbot-title">Enterprise Code: 0123456798</div>
                <div class="fbot-title">Address: Poket Billiards 96 Dinh Cong</div>
                <div class="fbot-title">For any inquiry, please visit our FAQ page</div>
                <div class="fbot-title">Working Hours: 12h-5h 'cause 1 of us sleep at 5am and wake up at 12am lol</div>
            </div>
            </div>
        </footer>
    </div>
    </form>
</body>
</html>

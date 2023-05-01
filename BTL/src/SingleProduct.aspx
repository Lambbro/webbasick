<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SingleProduct.aspx.cs" Inherits="BTL.src.SingleProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product Details</title>
    <link rel="stylesheet" href="CSS/Details.css" />
</head>
<body>
    
    <form id="form1" runat="server">
        <div class="home" id="home">
        <!-- Header -->
            <header class="header">
                <nav class="navbar">
                    <div class="format-header">
                    <div class="nav-left">
                        <a href="Home.aspx" class="logo-layer"><img src="./Img/icon/logo.png" alt="Logo" class="logo" /></a>
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
                                <input type="text" name="" id="Searcher" class="search-input" placeholder="Search..." />
                                <div id="search-result"></div>
                            </div>
                            <img src="./Img/icon/search.png" alt="Search" class="nav-button" />
                        </div>
                        <div class="nav-btn"><img src="./Img/icon/user.png" alt="Sign In" class="nav-button" /></div>
                        <div class="nav-btn">
                            <a href="Cart.aspx" style="text-decoration:none;">
                                <img src="./Img/icon/shopping-cart.png" alt="Cart" class="nav-button" />
                                <span id="CartCounter" class="cart-counter" runat="server">0</span>
                            </a>
                        </div>
                    </div>
                    </div>
                </nav>
            </header>
        <!-- Body -->
        <main>
            <div class="content">
                <asp:ListView  id="productData" runat="server">
                    <ItemTemplate>
                        <div class="img-layer"><img src="<%# Eval("Image") %>" alt="Img" class="product-img"/></div>
                        <div class="details-layer">
                            <div class="details-title">
                                <h3 class="p-name"><%# Eval("Name") %></h3>
                                <div class="p-id">Id: <p id="pId"><%# Eval("Id") %></p></div>
                                <div class="p-describe">
                                    <p><%# Eval("Description") %></p>
                                </div>
                            </div>
                            <div class="details-content">
                                <div class="p-price"><%# Eval("Price") %></div>
                                <div class="size">
                                    Size:
                                    <div class="picker">
                                        <div class="pick-box">S</div>
                                        <div class="pick-box">M</div>
                                        <div class="pick-box">L</div>
                                        <div class="pick-box">XL</div>
                                        <div class="pick-box">XXL</div>
                                    </div>
                                </div>
                                <div class="quantites-layer">
                                    <div class="quantities-title">Quantities:</div>
                                    <div class="picker">
                                        <div class="pick-box" onclick="increase()">+</div>
                                        <div class="pick-box" id="quantities">1</div>
                                        <div class="pick-box" onclick="decrease()">-</div>
                                    </div>
                                </div>
                                <div class="purchase-layer">
                                    <a href="javascript:redirectToCart('back')" class="purchase">Add to Cart</a>
                                    <a href="AddByDetails.aspx?id=<%# Eval("Name") %>&type=go" class="purchase">Purchase Now</a>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
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
                        <h3 class="blur-text highlight hover-red">Terms of Use</h3>
                        <h3 class="blur-text highlight hover-red">Privacy Policy</h3>
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

    <script src="JS/Home.js"></script>
    <script src="JS/Details.js"></script>
</body>
</html>

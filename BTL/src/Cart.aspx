<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="BTL.src.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cart</title>
    <link rel="stylesheet" href="CSS/Cart.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="cart">
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
                    </div>
                    </div>
                </nav>
            </header>
            <!-- Body -->
            <main>
                <div class="content">
                    <div class="table-hnf">
                        <div class="layer-name">Product</div>
                        <div class="layer-price">Price</div>
                        <div class="layer-quantities">Quantities</div>
                        <div class="layer-money">Into Money</div>
                    </div>
                    <div class="table-body border-outside">
                        <asp:ListView ID="cartList" runat="server">
                            <ItemTemplate>
                                <div class="border-outside dis-flex">
                                    <div class="layer-name">
                                        <div class="i-layer">
                                            <img src="<%# Eval("Image")%>" class="c-img"/>
                                            <div class="resize"><%# Eval("Name") %></div>
                                        </div>
                                    </div>
                                    <div class="layer-price resize"><%# Eval("Price") %></div>
                                    <div class="layer-quantities resize dis-flex">
                                        <a href="ProductIncrease.aspx?id=<%#Eval("Id") %>" class="quantity-width"><div class="border-outside">+</div></a>
                                        <div class="quantity-width "><%# Eval("Quantity") %></div>
                                        <a href="ProductDecrease.aspx?id=<%#Eval("Id") %>" class="quantity-width"><div class="border-outside">-</div></a>
                                    </div>
                                    <div class="layer-money resize"><%# Eval("Total") %></div>
                                    <a href="ProductDeletion.aspx?id=<%#Eval("Id") %>"><div class="delete">x</div></a>
                                    
                                </div>
                            </ItemTemplate>
                         </asp:ListView>
                    </div>
                    <div class="table-hnf">
                        <div class="layer-50"></div>
                        <div class="total">Total:</div>
                        <div class="total-price" id="TotalPrices" runat="server">0</div>
                        <div class="payment">Pay</div>
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
</body>
</html>

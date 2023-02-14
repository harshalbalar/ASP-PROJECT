<%@ Page Language="C#" AutoEventWireup="true" Codefile="registration.aspx.cs" Inherits="Registration.registration" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Bowling System</title>
    <link rel="stylesheet" href="css/style.css" />
    <script src="https://kit.fontawesome.com/cd742a0dd6.js" crossorigin="anonymous"></script>
</head>

<body>
    <div class="body">
        <div class="form-container sign-up-form">
            <div class="imgBox sign-up-imgbox">
                <div class="sliding-link">
                    <p>Already a member?</p>
                    <span class="sign-in-btn"><a href="login.aspx"> Sign in</a></span>
                </div>
                <img src="images/signup-img.png" alt="" />
            </div>
            <div class="form-box sign-up-box">
                <h2>Sign Up</h2>
                <form method="post" runat="server">
                    <div class="field">
                        <i class="fa-solid fa-at"></i>
                        <asp:TextBox ID="email" TextMode="email" runat="server" placeholder="Email ID" /></asp:TextBox>
                        
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" Display="Dynamic" ErrorMessage="Email id is incorrect" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        
                    </div>
                    <div class="field">
                        <i class="fa-regular fa-user"></i>
                        <asp:TextBox ID="user" runat="server" placeholder="Full Name"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="user" Display="Dynamic" ErrorMessage="Please enter username" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        
                    </div>
                    <div class="field">
                        <i class="fa-solid fa-phone"></i>
                        <asp:TextBox ID="tel" runat="server" onkeypress="return event.charCode >= 48 && event.charCode <= 57"
                            maxlength="12"  placeholder="Phone Number"></asp:TextBox>
                    </div>
                    <div class="field">
                        <i class="fa-solid fa-unlock"></i>
                        <asp:TextBox ID="pwd" TextMode="password" runat="server" placeholder="Password"></asp:TextBox>
                        
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="pwd" Display="Dynamic" ErrorMessage="Password must contain at least 8 character" Font-Size="Small" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate" SetFocusOnError="True" ValidateEmptyText="True"></asp:CustomValidator>
                        
                    </div>
                    <div class="field">
                        <i class="fa-solid fa-key"></i>
                        <asp:TextBox ID="cpwd" TextMode="password" runat="server" placeholder="Confirm Password"></asp:TextBox>
                        
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pwd" ControlToValidate="cpwd" Display="Dynamic" ErrorMessage="Password and confirm password doesn't match" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                        
                    </div>
                        <asp:HiddenField ID="type" runat="server" Value="customer"/>
                        <asp:Button class="submit-btn" ID="submit" runat="server" Text="Sign Up" OnClick="submit_Click"  />
                </form>

            </div>
        </div>
    </div>
    <script>
        const textInputs = document.querySelectorAll("input");

        textInputs.forEach(textInput => {
            textInput.addEventListener("focus", () => {
                let parent = textInput.parentNode;
                parent.classList.add("active");
            });
            textInput.addEventListener("blur", () => {
                let parent = textInput.parentNode;
                parent.classList.remove("active");
            });
        });

        const passwordInput = document.querySelector(".password-input");
        const eyeBtn = document.querySelector(".eye-btn");
        eyeBtn.addEventListener("click", () => {
            if (passwordInput.type == "password") {
                passwordInput.type = "text";
                eyeBtn.innerHTML = "<i class='fa-solid fa-eye'></i>";
            } else {
                passwordInput.type = "password";
                eyeBtn.innerHTML = "<i class='fa-solid fa-eye-slash'></i>";
            }
        })
    </script>
</body>

</html>

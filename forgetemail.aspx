<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgetemail.aspx.cs" Inherits="Registration.forgetemail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/forgotemail.css" />
    <title></title>
</head>
<body>

    <div class="body">
        <div id="homebtn">
            <a href="main.aspx"><i class="fa-solid fa-house"></i></a>
        </div>
        <div class="form-container sign-in-form">
            <div class="form-box sign-in-box">
                <h2> Recover Account </h2>
                <p>Fill the data correctly</p>
                <form runat="server" method="POST">
                    <div class="field">
                        <i class="fa-solid fa-at"></i>
                        <asp:TextBox ID="email" TextMode="email" runat="server" placeholder="Email ID"></asp:TextBox>
                    </div>
                    <asp:Button class="submit-btn" ID="submit" runat="server" Text="Send Mail" OnClick="submit_Click"  />
                </form>
                <p>Don't have an account? <a href="registration.aspx">Sign up</a></p>
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
    </script>pt>
</body>
</html>
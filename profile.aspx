<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="Registration.profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Bowling System</title>
    <link rel="stylesheet" href="css/profile.css" />
    <link rel="stylesheet" href="css/alert.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/cd742a0dd6.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/cd742a0dd6.js" crossorigin="anonymous"></script>
</head>

<body>
    <form id="form" runat="server">
    <div class="body">
        <div id="homebtn">
            <a href="main.aspx"><i class="fa-solid fa-house"></i></a>
        </div>
        <div class="form-container sign-up-form">
            <div class="form-box sign-up-box">
                <h2>Edit Profile</h2>
                <div class="box">
                     <div class="box1">
                       <div class="field">
                            <i class="fa-solid fa-at"></i>
                            <asp:TextBox ID="txtemail1" TextMode="Email" runat="server" placeholder="email" ReadOnly="True"></asp:TextBox>
                        </div>
                        <div class="field">
                            <i class="fa-regular fa-user"></i>
                            <asp:TextBox ID="txtuname1" runat="server" placeholder="Full name"></asp:TextBox> <br />
                        </div>
                        <div class="field">
                              <i class="fa-solid fa-phone"></i>
                              <asp:TextBox ID="txttel1" runat="server" placeholder="Phone Number" onkeypress="return event.charCode >= 48 && event.charCode <= 57"></asp:TextBox>
                        </div> 
                      </div>
                   </div>
                            <asp:Button class="submit-btn" ID="btnupdate1" runat="server" Text="Update Profile" OnClick="btnupdate_Click1" />
                            <asp:Button style="background-color:#ff5353;" class="submit-btn" ID="btndelete" runat="server" Text="Delete Profile" OnClick="btndelete_Click1" />
                 </div>

            <div class="form-box sign-up-box">
                <h2>Change Password</h2>
                    <div class="box">
                        <div class="box2">
                            <div class="field">
                                <i class="fa-solid fa-unlock-keyhole"> </i>
                                <asp:TextBox ID="txtoldpass" runat="server" TextMode="Password" MaxLength="8" placeholder="Old Password"></asp:TextBox>
                            </div>
                            <div class="field">
                                <i class="fa-solid fa-unlock"></i>
                                <asp:TextBox ID="txtnewpass" runat="server" TextMode="Password" MaxLength="8" placeholder="New Password"></asp:TextBox>
                            </div>
                            <div class="field">
                                <i class="fa-solid fa-key"></i>
                                <asp:TextBox ID="txtconfirmpass" runat="server" TextMode="Password" MaxLength="8" placeholder="Confirm Password"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <asp:Button ID="btnchangepass"  class="submit-btn" runat="server" Text="Change Password" OnClick="btnchangepass_Click" />
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
    </form>
</body>
</html>
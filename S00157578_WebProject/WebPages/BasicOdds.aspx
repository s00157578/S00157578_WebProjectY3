<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BasicOdds.aspx.cs" Inherits="S00157578_WebProject.WebPages.BasicOdds" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-sm-12 col-md-4 pull-left ">
                <h2>Hand Odds</h2>
                <div class="input-group input-group-lg">
                    <span class="input-group-addon">Pocket Cards</span>
                    <asp:TextBox ID="txtbxPocket" runat="server" class="form-control" placeholder="Ah Ks" />          
                </div>
                <br />
                <div class="input-group input-group-lg">
                    <span class="input-group-addon">players In hand</span>
                    <asp:TextBox ID="txtbxPlayers" runat="server" class="form-control" placeholder="1-10" />
                </div>
                <br />
                <div class="input-group input-group-lg">
                    <span class="input-group-addon">Board Cards</span>
                    <asp:TextBox ID="txtbxBoard" runat="server" class="form-control" placeholder="board cards" />
                </div>
                <br />

                <div class="tpbutton btn-toolbar">
                <asp:Button ID="btnHandOdds" class=" btn center-block btn-lg btn-success " runat="server" Text="Calculate" OnClick="btnHandOdds_Click" />
                <h3 id="handGlyphicon"class="glyphicon glyphicon-info-sign" onclick="OpenHelp()"></h3>
                    </div>
                <div id="handInfo" class="jumbotron hidden">
                    <p>
                       Calculates the percentage of times you will win a hand based on the inputted data
                    </p><br />
                    <p>for tutorial on how to work program click on "help" button</p>
                    
                </div>
                    <br />
                <h3 id="txtHandOdds" class="text text-center" runat="server"></h3>
            </div>
            
            <div class="col-lg-4 col-sm-12 col-md-4 pull-right">
                <div class="form-group">
                    <h2>Pot Odds</h2>
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">Pot Amount</span>
                        <asp:TextBox ID="txtbxPot" runat="server" class="form-control" placeholder="Pot Amount" />
                    </div>
                    <br />
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">Call Amount</span>
                        <asp:TextBox ID="txtboxCall" runat="server" class="form-control" placeholder="Call Amount" />
                    </div><br />
                    <div class="input-group input-group-lg invisible">
                        <asp:TextBox runat="server" class="form-control" placeholder="Call Amount" />                      
                    </div>
                    <br />
                    <div class="tpbutton btn-toolbar">
                    <asp:Button ID="btnPotOdds" class=" btn center-block btn-lg btn-success bottom " runat="server" Text="Calculate" OnClick="btnPotOdds_Click" />
                    <h3 id="potGlyphicon"class="glyphicon glyphicon-info-sign" onclick="OpenHelp()"></h3>
                    </div>
                     <div id="potInfo" class="jumbotron hidden">
                    <p>
                       Calculates the percentage of the pot you need to call.
                       Pot Amount is equal to all chips in play excluding yours
                    </p><br />
                    <p>for tutorial on how to work program left click either info symbol</p>
                    
                </div>
                <br />
                    <h3 id="txtPotOdds" class="text text-center" runat="server"></h3>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-sm-12 col-md-12">
                <h1 ID="txtFold" class="" runat="server"></h1>
            </div>
        </div>
    </div>
        
</asp:Content>

<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GraphicOdds.aspx.cs" Inherits="S00157578_WebProject.WebPages.GraphicOdds" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
            <h1 class="text text-center">Graphic Odds</h1>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class=" col-md-6">
                <h2>Hand Odds</h2>
                <div id="pncw">
                    <script type="text/javascript" src="https://www.pokernews.com/js/pokernews.widget.js"></script>
                    <script type="text/javascript">pokernews.widget.OddsCalculator.createFlash("pncw", "390x320", "hpromo", "com", 2)</script>
                </div>
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
                    <asp:Button ID="btnPotOdds" class=" btn center-block btn-lg btn-success bottom " runat="server" Text="Calculate" OnClick="btnPotOdds_Click" />
                <br />
                    <h3 id="txtPotOdds" class="text text-center" runat="server"></h3>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

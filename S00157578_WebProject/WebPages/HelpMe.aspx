<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HelpMe.aspx.cs" Inherits="S00157578_WebProject.WebPages.HelpMe" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div id="helpHeading" class="row">
            <div class="col-md-12" >
                <h1 class="text-center"> Odds Helper</h1>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-sm-12 col-md-5 pull-left" >
                <h3>Hand Odds tutorial</h3><br />
                <p> the Hand odds calculator calculates the chance of winning a particular hand and displays it as a percentage.
                    This is extremely important in determining whether to call or fold a hand, especially when used in conjunction with
                    the pot odds calculator. 
                <p class="text text-danger"> 
                    Pre flop it is better practice to rely on position and your ranges for each position.                  
                    you can use the hand odds calculator to give the percentage chance of winning a hand pre flop.
                    this can be used to help establish your range for each position.  
                </p>
                <p>
                    To use the Hand Odds Calculator there is two required inputs, Pocket Cards and Players in Hand.
                </p>

                <br /><h4 class="text text-info">Pocket Cards</h4>
                <p> these are two two cards you have been dealt.
                    the key for each card value is as follows, in order deuce to ace:
                </p>
                <p class="text text-success"> 2, 3, 4, 5, 6, 7, 8, 9, 10, J, Q, K, A</p>
                <p>key for each suit is</p>
                    <p class="text text-success"> d = Diamonds </p>
                    <p class="text text-success"> h = Hearts </p>
                    <p class="text text-success"> s = Spades </p>
                    <p class="text text-success"> c = Clubs </p>

                <p>the method for writing the card values in the text box is
                    card value followed by suit then a space followed by second card value and second card suit. </p>
                <p class="text text-primary">eg: you are dealt 2 of clubs and ace of diamonds. your input will be:
                      <p class="text text-primary"> "2c Ad"</p>
                </p>
                <p class="text text-danger">This value is required!</p>
                <br /><h4 class="text text-info">Players in hand</h4>
                <p>This is the amount of players remaining in the hand, excluding you.
                </p>
                <p class="text text-success">Any player who has not folded is included in this value, even if they have yet to act</p>
                <p class="text text-danger">This value is required and must be a number between 1 and 9 inclusive </p>
                <br /><h4 class="text text-info">Board Cards</h4>
                <p>this is where you input the board cards. the input method is the same as inputting pocket cards.
                   card value card suit followed by a space. 
                </p>
                <p class="text text-primary">eg: on the flop a 6 of clubs, ace of diamonds and jack of spades is turned. your input will be:
                      <p class="text text-primary"> "6c Ad Js"</p>
                <p class="text text-success">this value in not required</p>
            </div>
            <div class="col-lg-5 col-sm-12 col-md-5 pull-right" >
                <h3 class="text text-center">Pot Odds tutorial</h3><br />

                <p>pot odds are used to calculate the the percent of the pot you need to call. This is extremely important when trying
                    to play poker profitably. the calculator for pot odds requires only two inputs:
                </p>
                <br /><h4 class="text text-info">Pot Amount</h4>
                <p> This is the amount of chips currently in the pot. it includes any raises/calls before you
                    All money in play is part of the pot .
                </p>
                <p class="text text-primary">eg: 1000 in center table, one player raises 200 and one player calls,
                    the pot amount is 1400 </p>
                <p class="text text-success">enter a whole positive number for this value.</p>

                <br /><h4 class="text text-info">Call Amount</h4>
                <p> This is the amount of chips you need to call.</p>
                <p class="text text-danger"> 
                    this calculator does not determine whether a raise is viable, The
                    hand odds calculator should give an indication whether to raise or not.
                </p>
                <p class="text text-primary">eg: 200 raise in front of you, the call amount it 200.</p>
                <p class="text text-success">enter a whole positive number for this value.</p>
                <br /><h3 class="text text-center">Call/Fold Text</h3>
                <p>when you calculate both your hand odds and your pot odds, text will appear telling you whether it is mathamatically
                    profitable to call or fold
                </p>
            </div>
        </div>
    </div>

</asp:Content>
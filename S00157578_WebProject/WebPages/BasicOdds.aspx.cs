using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HoldemHand;
using System.Collections.Specialized;
using System.Configuration;

namespace S00157578_WebProject.WebPages
{
    

    public partial class BasicOdds : System.Web.UI.Page
    {
        /*I am using session to carry the data from one button click across to another one so I can calculate to call/fold once
        both calculators are run once*/
        private const string sessionHandOdds = "handOdds";
        private const string sessionPotOdds = "PotOdds";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //so page is not loaded on secure connection
            if (Request.IsSecureConnection && !User.Identity.IsAuthenticated)
            {
                NameValueCollection securePath = (NameValueCollection)ConfigurationManager.GetSection("genericAppSettings");
                string url = securePath["UnsecurePath"] + "/WebPages/BasicOdds.aspx";
                Response.Redirect(url);
            }
        }
        protected void btnHandOdds_Click(object sender, EventArgs e)
        {
            //only calls methods to run the program if the two required values are not null
            if (txtbxPocket.Text != "" || txtbxPlayers.Text !="")
            {
                CalculateHand();
                CallFold();
            }         
        }

        protected void btnPotOdds_Click(object sender, EventArgs e)
        {
            CalculatePotOdds();
            CallFold();
            
        }
        protected void CalculateHand()
        {
            //reading in values from text boxes
            string myCards = txtbxPocket.Text;
            string boardCards = txtbxBoard.Text;
            //time to run progam for
            double time = 5.00;
            int players = 0;
            bool trying= int.TryParse(txtbxPlayers.Text, out players);
            //converting string and values
            ulong pocket = Hand.ParseHand(myCards);
            ulong board = Hand.ParseHand(boardCards);
            ulong dead = Hand.ParseHand("");
            //simple loop to stop false data crashing the website
            if (players > 0 && players <= 9 && Hand.BitCount(pocket) == 2 && Hand.BitCount(board) >= 0
                && Hand.BitCount(board) <= 5)
            {
                try
                {
                    //sets a to the return of the win odds method which calulates win percentage.
                    double a = (WinOdds(pocket, board, dead, players, time) * 100.0);
                    a = Math.Round(a, 2);
                    string percent = a.ToString();
                    txtHandOdds.InnerText = (percent + "%");
                    Session[sessionHandOdds] = percent;
                }
                catch (Exception)
                {
                    txtHandOdds.InnerText = "Invalid Data entered, ty again";
                }

            }
        }
        /*runs a simulation for the amount of time set. i chose to use a set time rather than a number of loops, because I didnt
        want the program to take forever to run on a slow computer*/
        static double WinOdds(ulong pocket, ulong board, ulong dead, int playerCount, double runTime)
        {
            // bools for use in for loop to determine who won, no need to use a counter because it is comparing the one hand against each player individually
                bool win = true;
                bool draw = true;
            // Keep track of stats, using doubles instead of ints for the counter so i dont need to convert to double in order to have decimal places in the percentage
            double winCount = 0;
            double count = 0;

            // Keep track of time
            double start = Hand.CurrentTime;

            /* loops the hand for a set amount of time. I chose time rather than a set amount of loops in order to prevent 
            the program running for an indefinate amount of time*/
            while ((Hand.CurrentTime - start) < runTime)
            {
                //sets both to true for start of each loop
                win = true;
                draw = true;

                /* assigns random cards to the board in order to have five cards on the table, reads in play cards existing board cards and known dead cards
                to prevent a card being assigned twice*/
                ulong boardCards = Hand.RandomHand(board, dead | pocket, 5);

                //uses the evaluator to determine the value of the hand the player has, from the pocket cards and the 5 cards that are now on the board
                uint pocketHandVal = Hand.Evaluate(pocket | boardCards);

                //this prevents player or board cards being available for selection when assigning random cards for amount of other players
                //in the hand with unknown cards
                //setting this variable inside the whle loop so the random generated board cards are not stored through each itteration of the while loop
                ulong deadCards = dead | boardCards | pocket;

                
                // Get random opponent hand values
                //loop for the amount of players so each player against you is assigned a hand
                for (int i = 0; i < playerCount; i++)
                {
                    // generates random Opponent hand from any cards that are not in the deadcards ulong  info and calculate the value of the opponents hand
                    ulong oppmask = Hand.RandomHand(deadCards, 2);
                    uint oppHandVal = Hand.Evaluate(oppmask | boardCards);

                    // Remove these opponent cards from future opponents in the loop 
                    deadCards |= oppmask;

                    //could use an int here but a bool makes more sense, each loop it determines who won the hand,
                    //if player wins each loop he has won that hand over all
                    if (pocketHandVal < oppHandVal)
                    {
                        //breaks if the opponent wins, (no need to complete loop once one opponent wins)
                        win = false;
                        draw = false;
                        break;
                    }
                    //if player ties a hand it sets greater to false and greaterEqual to true
                    else if (pocketHandVal == oppHandVal)
                    {
                        win = false;
                    }
                }

                // Calculates the amount of hands won adding 1 to counter
                if (win)
                    winCount += 1.0;
                //if its a tie it adds .5
                else if (draw)
                    winCount += 0.5;
            //adds one to the count and restarts loop time permitting 
                count += 1.0;
            }

            // Return the win amount as a decimal which is then *100 to give the percentage wins
            //using the conditional operator to prevent an error been thrown if there is an attempt to divide 0 by 0
            return (count == 0.0 ? 0.0 : winCount / count);
        }
        //calculates your 'pot odds' as a percentage
        protected void CalculatePotOdds()
        {
            //read in values as doubles
            double pot = double.Parse(txtbxPot.Text);
            double callAmount = double.Parse(txtboxCall.Text);
            //expresses value as a percentage
            double toPercent = (callAmount / pot)*100;
            toPercent = Math.Round(toPercent, 2);
            string percent = toPercent.ToString();
            txtPotOdds.InnerText = percent + "%";
            Session[sessionPotOdds] = percent;
        }

        //calculates whether it is mathamatically profitable to call or fold
        protected void CallFold()
        {
            double handOdds = 0;
            double potOdds = 0;
            //read data from session once both sessions have a value
            if (Session[sessionPotOdds] != null && Session[sessionHandOdds] != null)
            {
                string pot = Session[sessionPotOdds].ToString();
                bool a = double.TryParse(pot, out potOdds);

                string hand = Session[sessionHandOdds].ToString();
                bool b = double.TryParse(hand, out handOdds);

                /*less than or equal to for folding, if pot odds and hand odds are equal you will mathamathically 
break even and it is not profitable to call*/

                if (handOdds <= potOdds)
                {
                    txtFold.Attributes["class"] = "text-danger text-center";
                    txtFold.InnerHtml = "Fold";
                    
    }
                if (handOdds > potOdds)
                {
                    txtFold.Attributes["class"] = "text-success text-center";
                    txtFold.InnerHtml = "call";

                }
            }

        }
        
    }
}

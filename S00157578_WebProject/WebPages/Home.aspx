﻿<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="S00157578_WebProject.WebPages.Home" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="theCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#theCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#theCarousel" data-slide-to="1"></li>
            <li data-target="#theCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="item active">
                <img class="img-responsive" src="data:image/jpeg;base64,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" 
                    alt="Image result for poker image 900x250" />
                <div class="slide1"></div>
                <div class="carousel-caption">
                    <h1 class=" text text-capitalize">Odds Calculator helper</h1>
                    <h4>Learn how to use our odds calculators!</h4>
                    <button class="btn btn-group-lg btn-info" onclick="OpenHelp()">Open</button>
                </div>
            </div>
            <div class="item">
                <img class="img-responsive" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBJ9Rq3JTvul8QwioIpAPZAnH5gtMBPnmZirv1UNURaAdhx_6R" alt="WSOP" />
                <div class="slide2"></div>
                <div class="carousel-caption">
                    <h1>Poker Terminology</h1>
                    <h4>refresh your knowledge of poker terms</h4>
                    <a href="http://www.wsop.com/poker-terms/" target="_blank" class="btn btn-group-lg btn-info" role="button">Open
                    </a>
                </div>
            </div>

            <div class="item">
                <img class="img-responsive" src="data:image/jpeg;base64,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" alt="chips" />
                <div class="slide3"></div>
                <div class="carousel-caption">
                    <h1>News</h1>
                    <h4>Oleg Vasylchenko Wins 2016 WPT Prague Main Event</h4>
                    <a href="http://www.pokernewsdaily.com/oleg-vasylchenko-wins-2016-wpt-prague-main-event-29168/" target="_blank" class="btn btn-group-lg btn-info" role="button">Open
                    </a>
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#theCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#theCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <br /> <br />

    <div class="container">
        <div class="row">
            <div class="col-lg-7 col-md-7 col-sm-12">
                <div class="jumbotron">
                    <h1 class="text text-capitalize text-center">Poker Stats</h1>
                    <p>Welcome to Poker Stats. We are dedicated to providing accurate calculations to improve your poker game.
                        While also providing a store of tutorials and news stories tailored to your needs!
                        Enjoy your stay at out site.
                    </p>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12  pull-right">
                <h2 class="text text-center">News</h2>
                <div class="media">
                    <div class="media-left">
                        <a href="https://www.pokernews.com/news/2016/12/2016-wpt-five-diamond-day-2-ryan-hughes-26532.htm" target="_blank">
                            <img class="media-object mySize" src="https://pnimg.net/w/articles/4/584/7ec86c79f9.jpg" alt="" />
                        </a>
                    </div>
                    <div class="media-body">
                        <h4 class="media heading">Ryan Hughes Leads</h4>
                        Ryan Hughes leads the record-setting field after Day 2 in the WPT Five Diamond World Poker Classic...
                        <a href="https://www.pokernews.com/news/2016/12/2016-wpt-five-diamond-day-2-ryan-hughes-26532.htm" class="text text-info" target="_blank">read more</a>
                    </div>

                </div>

                <div class="media">
                    <div class="media-left">
                        <a href="https://www.pokernews.com/news/2016/12/uk-gambling-commission-issues-warning-over-underage-gambling-26531.htm" target="_blank">
                            <img class="media-object mySize" src="https://pnimg.net/w/articles/4/584/829c3d8c1c.jpg" alt="Gambling chart" />
                        </a>
                    </div>
                    <div class="media-body">
                        <h4 class="media heading">UK Gambling Commission Warning Over Underage Gambling</h4>
                        study reveals 450,000 11-to-15-year-old children gamble each week...
                        <a href="https://www.pokernews.com/news/2016/12/uk-gambling-commission-issues-warning-over-underage-gambling-26531.htm" class="text text-info" target="_blank">read more</a>
                    </div>
                </div>

                <div class="media">
                    <div class="media-left">
                        <a href="https://www.pokernews.com/strategy/suspect-cheating-in-a-poker-game-heres-what-to-do-about-it-26458.htm" target="_blank">
                            <img class="media-object mySize" src="https://pnimg.net/w/articles/4/583/c49eb8e41d.jpg" alt="cards img" />
                        </a>
                    </div>
                    <div class="media-body">
                        <h4 class="media heading">Suspect Cheating in a Poker Game?</h4>
                        Most poker games are played fairly, but if you suspect something, what's the best course of action?...
                        <a href="https://www.pokernews.com/strategy/suspect-cheating-in-a-poker-game-heres-what-to-do-about-it-26458.htm" class="text text-info" target="_blank">read more</a>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="container"> 
        <div class="row">
            <h2 id="twitterHeader" class="text text-capitalize text-center">Twitter feed</h2>
        </div>
    </div>
    <div class="container"> 
        <div class="row">
            <div class=" col-sm-12 col-md-4 col-md-offset-1">
                <a class="twitter-timeline" data-height="800" href="https://twitter.com/PokerNews_live">Tweets by PokerNews_live</a> 
                <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
            </div>
            <div class="col-sm-12 col-md-4 col-md-offset-2">
                <a class="twitter-timeline" data-height="800" href="https://twitter.com/ItsJustWool/lists/poker-players">Tweets by top Poker Players</a> 
                <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
            </div>
        </div>
    </div>
</asp:Content>
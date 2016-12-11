$('#handGlyphicon').mouseover(function () {
    $('#handInfo').attr('class', 'jumbotron visible');
});
$('#handGlyphicon').mouseout(function () {
    $('#handInfo').attr('class', 'jumbotron hidden');
});
$('#potGlyphicon').mouseover(function () {
    $('#potInfo').attr('class', 'jumbotron visible');
});
$('#potGlyphicon').mouseout(function () {
    $('#potInfo').attr('class', 'jumbotron hidden');
});
function OpenHelp()
{
    window.open("../WebPages/HelpMe.aspx");
}

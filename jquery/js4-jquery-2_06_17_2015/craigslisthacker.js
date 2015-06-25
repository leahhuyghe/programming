// Craigslist Hacker

// Get the HREF attribute of the first link on the page

$('a').first

//Get the number of links on this page

$('a')

//Change the text for all links to be [Your Name]

$('a').text('Leah');


//Make Craigslist's logo link to http://www.google.com

$("a").attr("href", "http://www.google.com/")



$("a[href='http://www.craigslist.org/about/sites']").attr('href',
'http://google.com/');


$('a.craigslist').attr("href", "http://google.com");

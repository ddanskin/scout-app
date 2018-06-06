// const image_urls = ["/bamboo.jpg", "/beach2.jpg", "/beach1.jpg", "/canada.jpg", "/china.jpg", "/croatia.jpg", "/paris.jpg", "/forest.jpg", "/rome.jpg"];
let image_urls = [
    "https://images.pexels.com/photos/189349/pexels-photo-189349.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/457882/pexels-photo-457882.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/449627/pexels-photo-449627.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/88212/pexels-photo-88212.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/158607/cairn-fog-mystical-background-158607.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/415708/pexels-photo-415708.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/248771/pexels-photo-248771.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/532263/pexels-photo-532263.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/235648/pexels-photo-235648.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/259447/pexels-photo-259447.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/533759/pexels-photo-533759.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/784707/pexels-photo-784707.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
];

$(document).ready(function() {
    let random_background = image_urls[Math.floor(Math.random() * image_urls.length)];
random_background =

    // sets background image to a random photo each time the page loads
    $('body').css('background-image', 'url(' + random_background + ')');
});

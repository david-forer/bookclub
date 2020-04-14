// this gets books for the frontend

function getBooks() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            // Add the json stuff
            let container = document.getElementById("container");
            let responses = JSON.parse(this.responseText);

            for (var i = 0; i < responses.length; i++) {
                container.insertAdjacentHTML(
                    "beforeend",
                    "[" + responses[i].id + "]: " + responses[i].title + " , " + responses[i].author + "  , " + responses[i].genre + "  , " + responses[i].description + "  , " + responses[i].image + "<br />"
                );
            }
        }
    };
    xhttp.open("GET", "http://localhost:3000/books", true);
    xhttp.send();
}
getBooks();

// This gets users for the frontend

function getUsers() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            // Add the json stuff
            let container = document.getElementById("users-container");
            let responses = JSON.parse(this.responseText);

            for (var i = 0; i < responses.length; i++) {
                container.insertAdjacentHTML(
                    "beforeend",
                    "[" + responses[i].id + "]: " + responses[i].first_name + " " + responses[i].last_name + "<br />"
                );
            }
        }
    };
    xhttp.open("GET", "http://localhost:3000/users", true);
    xhttp.send();
}

getUsers();

// this gets new books that are wanted

function wantBooks() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            // Add the json stuff
            let container = document.getElementById("wanted-container");
            let responses = JSON.parse(this.responseText);

            for (var i = 0; i < responses.length; i++) {
                container.insertAdjacentHTML(
                    "beforeend",
                    "[" + responses[i].id + "]: " + responses[i].title + " , " + responses[i].genre + " , " + responses[i].author + "  , " + responses[i].link + "<br />"
                );
            }
        }
    };
    xhttp.open("GET", "http://localhost:3000/new_books", true);
    xhttp.send();
}

wantBooks();

function sendBooksForm() {
    
}
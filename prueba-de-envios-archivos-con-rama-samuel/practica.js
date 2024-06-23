// script.ts
function add_(a, b) {
    return a + b;
}
function fetchData_(url, callback) {
    fetch(url)
        .then(function (response) { return response.json(); })
        .then(function (data) { return callback(null, data); })
        .catch(function (error) { return callback(error); });
}
var url_ = "https://api.example.com/data";
fetchData_(url, function (error, data) {
    if (error) {
        console.error("Error fetching data:", error);
    }
    else {
        console.log("Fetched data:", data);
    }
});

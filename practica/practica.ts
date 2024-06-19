// script.ts
function add(a: number, b: number): number {
  return a + b;
}

type Callback = (error: Error | null, data?: any) => void;

function fetchData(url: string, callback: Callback): void {
  fetch(url)
    .then(response => response.json())
    .then(data => callback(null, data))
    .catch(error => callback(error));
}

const url: string = "https://api.example.com/data";
fetchData(url, (error, data) => {
  if (error) {
    console.error("Error fetching data:", error);
  } else {
    console.log("Fetched data:", data);
  }
});

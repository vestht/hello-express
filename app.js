const express = require("express");

const app = express();

app.use(express.json()); 

// Route: /
app.get("/", (request, response) => {
    response.send("hello")
})

app.listen(8080, () => console.log(`Express server currently running on port 8080`));
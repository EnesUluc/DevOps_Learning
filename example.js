const express=require('express');
const app = express()
const port = 8081;

app.get('/',(req,res) =>{
    res.send('Dockerfile Node js calisti!');
});

app.listen(port,()=>{
    console.log('My app listening Server http://localhost:${port} portunda etkin.');
});
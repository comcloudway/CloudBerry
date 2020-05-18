const express = require('express');
const serveStatic = require('serve-static');
const path = require('path');
const fs = require("fs")
const app = express();
//app.use('/',express.static(path.join(__dirname,'build','web')))
app.use('/',serveStatic(path.join(__dirname,'build','web')));

app.listen(3000)

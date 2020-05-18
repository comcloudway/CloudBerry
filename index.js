const express = require('express');
const serveStatic = require('serve-static');
const path = require('path');
const app = express();

app.use(serveStatic(path.join(__dirname,'build','web')));
app.listen(3000)

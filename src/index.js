import express from 'express';
import morgan from 'morgan';
import os from 'os';

const app = express();

const { PORT } = process.env;

app.use(morgan('tiny'));

app.get('/api', (req, res) => res.json({ hostname: os.hostname() }));

app.use(express.static('public'));

app.listen(PORT, () => console.log(`listening on port ${PORT}`));

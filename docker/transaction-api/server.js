
import express from 'express';
import client from 'prom-client';

const app = express();
const register = new client.Registry();
client.collectDefaultMetrics({ register });

app.use(express.json());

app.get('/health', (req, res) => res.status(200).json({ status: 'ok' }));
app.get('/metrics', async (req, res) => {
  res.set('Content-Type', register.contentType);
  res.end(await register.metrics());
});

app.post('/transactions', (req, res) => {
  const { amount, currency } = req.body || {};
  res.status(201).json({ id: 'tx-0001', amount: amount || 0, currency: currency || 'BRL' });
});

const port = process.env.PORT || 8080;
app.listen(port, () => console.log(`transaction-api listening on ${port}`));

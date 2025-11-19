const { Pool } = require("pg");

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: { rejectUnauthorized: false }, // required for Neon database
});

module.exports = {
  query: (text, params) => pool.query(text, params),
  pool,
};

CREATE TABLE IF NOT EXISTS links (
  id SERIAL PRIMARY KEY,
  code VARCHAR(8) NOT NULL UNIQUE,
  target_url TEXT NOT NULL,
  clicks BIGINT DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT now(),
  last_clicked TIMESTAMPTZ,
  deleted BOOLEAN DEFAULT false
);

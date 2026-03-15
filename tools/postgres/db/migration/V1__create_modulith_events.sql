CREATE TABLE IF NOT EXISTS event_publication (
  id UUID NOT NULL,
  completion_date TIMESTAMP WITH TIME ZONE,
  event_type TEXT NOT NULL,
  listener_id TEXT NOT NULL,
  publication_date TIMESTAMP WITH TIME ZONE NOT NULL,
  serialized_event TEXT NOT NULL,
  PRIMARY KEY (id)
);

-- Index para o Modulith encontrar eventos pendentes rapidamente
CREATE INDEX IF NOT EXISTS idx_event_pub_completion ON event_publication (completion_date);

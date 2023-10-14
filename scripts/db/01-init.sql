CREATE TABLE events_copy(
  id uuid primary key,
  payload integer,
  event_timestamp timestamp not null default now()
); 

CREATE INDEX on events_copy (payload);

CREATE INDEX on events_copy (event_timestamp);

CREATE TABLE events_insert(
  id uuid primary key,
  payload integer,
  event_timestamp timestamp not null default now()
); 

CREATE INDEX on events_insert (payload);

CREATE INDEX on events_insert (event_timestamp);

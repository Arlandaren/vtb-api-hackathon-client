CREATE TABLE apartment (
   id BIGSERIAL PRIMARY KEY,
   title VARCHAR NOT NULL,
   expenses INTEGER NOT NULL ,
   status VARCHAR(20) DEFAULT 'inactive',
   created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

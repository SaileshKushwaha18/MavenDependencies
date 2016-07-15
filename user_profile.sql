-- Table: user_profile

-- DROP TABLE user_profile;

CREATE TABLE user_profile
(
  id serial NOT NULL,
  type character varying(30) NOT NULL,
  CONSTRAINT user_profile_pkey PRIMARY KEY (id),
  CONSTRAINT user_profile_type_key UNIQUE (type)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE user_profile
  OWNER TO postgres;

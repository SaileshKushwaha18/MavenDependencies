-- Table: app_user

-- DROP TABLE app_user;

CREATE TABLE app_user
(
  id serial NOT NULL,
  sso_id character varying(30) NOT NULL,
  password character varying(100) NOT NULL,
  first_name character varying(30) NOT NULL,
  last_name character varying(30) NOT NULL,
  email character varying(50) NOT NULL,
  CONSTRAINT app_user_pkey PRIMARY KEY (id),
  CONSTRAINT app_user_sso_id_key UNIQUE (sso_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE app_user
  OWNER TO postgres;

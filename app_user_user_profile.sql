-- Table: app_user_user_profile

-- DROP TABLE app_user_user_profile;

CREATE TABLE app_user_user_profile
(
  user_id bigint NOT NULL,
  user_profile_id bigint NOT NULL,
  CONSTRAINT app_user_user_profile_pkey PRIMARY KEY (user_id, user_profile_id),
  CONSTRAINT fk_app_user FOREIGN KEY (user_id)
      REFERENCES app_user (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_user_profile FOREIGN KEY (user_profile_id)
      REFERENCES user_profile (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE app_user_user_profile
  OWNER TO postgres;

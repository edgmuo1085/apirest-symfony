CREATE DATABASE IF NOT EXISTS api_rest_symfony;

USE api_rest_symfony;

CREATE TABLE users (
  id int(255) NOT NULL AUTO_INCREMENT,
  name varchar(50) CHARACTER SET utf8 NOT NULL,
  surname varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  email varchar(255) CHARACTER SET utf8 NOT NULL,
  password varchar(255) CHARACTER SET utf8 NOT NULL,
  role varchar(20) CHARACTER SET utf8 NOT NULL,
  created_at datetime DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT pk_users PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE users DROP created_at;
ALTER TABLE users ADD COLUMN created_at datetime DEFAULT CURRENT_TIMESTAMP;


CREATE TABLE videos (
  id int(255) NOT NULL AUTO_INCREMENT,
  user_id int(255) NOT NULL,
  title varchar(255) CHARACTER SET utf8 NOT NULL,
  description text CHARACTER SET utf8 DEFAULT NULL,
  url varchar(255) CHARACTER SET utf8 NOT NULL,
  status varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  created_at datetime DEFAULT CURRENT_TIMESTAMP,
  updated_at datetime DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT pk_videos PRIMARY KEY (id),
  CONSTRAINT fk_video_user FOREIGN KEY (user_id) REFERENCES users(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE videos DROP created_at;
ALTER TABLE videos DROP updated_at;
ALTER TABLE videos ADD COLUMN created_at datetime DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE videos ADD COLUMN updated_at datetime DEFAULT CURRENT_TIMESTAMP;



ALTER TABLE estudiantes AUTO_INCREMENT =1;
ALTER TABLE estudiantes CHANGE foto_fondo_azul foto_fondo_azul VARCHAR( 250 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;
ALTER TABLE estudiantes CHANGE foto_fondo_blanco foto_fondo_blanco VARCHAR( 250 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;
SELECT COUNT( * ) FROM estudiantes;
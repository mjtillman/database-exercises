USE adlister;

DROP TABLE IF EXISTS albums;

create table Users (
  id    int unsigned not null auto_increment,
  name  varchar(255) not null,
  pass  varchar(255) not null,
  email varchar(255) not null
  PRIMARY KEY (id)
);

create table Ads (
  id      int unsigned not null auto_increment,
  title   varchar(255) not null,
  descr   text         null,
  price   decimal(10, 2) null,
  user_id int            null,
  constraint Ads_fk
  foreign key (user_id) references Users (id)
  PRIMARY KEY (id)
);

create table Categories (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name varchar(255) not null,
  constraint Categories_cat_id_uindex
  PRIMARY KEY (id)
);

create table ad_cat (
  ad_id  int null,
  cat_id int null,
  constraint fk_ad
  foreign key (ad_id) references Ads (id),
  constraint fk_cat
  foreign key (cat_id) references Categories (id)
);
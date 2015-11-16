insert into `human`
  (`id`, `name`, `age`)
values
  (1,'Vasya',12),
  (2,'Maria',25),
  (3,'George',45),
  (4,'Clark Kent',77),
  (5,'Bob',18),
  (6,'Traveler',99);

insert into `vacation_dest`
  (`id`, `name`)
values
  (1,'Cuba'),
  (2,'Aruba'),
  (3,'Sochi'),
  (4,'Krypton');

insert into `human_vacation_dest`
  (`human_id`, `destination_id`)
values
  (1,1),
  (3,1),
  (4,1),
  (6,1),
  (2,2),
  (6,2),
  (1,3),
  (3,3),
  (6,3),
  (4,4),
  (6,4);
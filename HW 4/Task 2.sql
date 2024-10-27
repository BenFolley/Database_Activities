-- Inserting Event for Fluffy
INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Fluffy', '2020-10-15', 'vet', 'antibiotics');

-- Inserting Event for Hammy
INSERT INTO petPet (petname, owner, species, gender, birth, death)
VALUES ('Hammy', 'Diane', 'hamster', 'M', '2010-10-30', NULL);

INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Hammy', '2020-10-15', 'vet', 'antibiotics');

-- Adding Kittens for Fluffy
INSERT INTO petPet (petname, owner, species, gender, birth, death)
VALUES 
  ('Kitten1', 'Fluffy\'s Owner', 'cat', 'M', '2020-10-15', NULL),
  ('Kitten2', 'Fluffy\'s Owner', 'cat', 'M', '2020-10-15', NULL),
  ('Kitten3', 'Fluffy\'s Owner', 'cat', 'F', '2020-10-15', NULL),
  ('Kitten4', 'Fluffy\'s Owner', 'cat', 'F', '2020-10-15', NULL),
  ('Kitten5', 'Fluffy\'s Owner', 'cat', 'F', '2020-10-15', NULL);

-- Adding Event for Claws
INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Claws', '1997-08-03', 'injury', 'broke rib');

-- Updating Puffball's Death Date
UPDATE petPet
SET death = '2020-09-01'
WHERE petname = 'Puffball';

-- Deleting Harold's Dog
DELETE FROM petPet
WHERE owner = 'Harold';
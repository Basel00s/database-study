-- Database 



-- Database lifecycle management

-- 1 Analysis : system analysis => requirements documentation
-- 2 Design : database designer => ERD(Entity Relationship Diagram)
-- 3 databse mapping : database designer => relational schema
-- 4 database implementation : database developer
-- 5 application : application developer
-- 6 client : End user
-- __________________________________________________________

-- the ER Model

-- Entity : a thing or object in the real world that is distinguishable from other objects
-- Attribute : a property or characteristic of an entity
-- Relationship : an association among two or more entities


-- Entity types 
-- strogn entity : an entity that exists independently of other entities || strong entity has a primary key that uniquely identifies each entity instance(has a rectangle in the ERD)
-- weak entity : an entity that depends on a strong entity for its existence || weak entity has a partial key that uniquely identifies weak entities that are related to the same strong entity(has a vertical line in the ERD)

-- __________________________________________________________


-- attribute types
-- simple attribute : an attribute that cannot be divided into smaller components
-- composite attribute : an attribute that can be divided into smaller components
-- derived attribute : an attribute whose value can be derived from other attributes in the database
-- multivalued attribute : an attribute that can have multiple values for a single entity instance
-- complex attribute : an attribute that is a combination of simple, composite, derived, and multivalued attributes


-- __________________________________________________________


-- relationship 

-- relationship has three properties : degree, cardinality, and participation
-- degree : the number of entity types that participate in a relationship
-- cardinality : the number of entity instances that can be associated with another entity instance
-- participation : the extent to which an entity participates in a relationship

-- degree types : unary, binary, ternary
-- unary relationship : a relationship that involves only one entity type
-- binary relationship : a relationship that involves two entity types
-- ternary relationship : a relationship that involves three entity types


-- cardinalites : one-to-one, one-to-many, many-to-many
-- one-to-one relationship : a relationship in which one entity instance of an entity type is associated with at most one entity instance of another entity type
-- one-to-many relationship : a relationship in which one entity instance of an entity type can be associated with many entity instances of another entity type
-- many-to-many relationship : a relationship in which many entity instances of an entity type can be associated with many entity instances of another entity type


-- participation : total(mandatory), partial(optional)   
-- total participation : a situation in which every entity instance of an entity type must be associated with at least one entity instance of another entity type
-- partial participation : a situation in which some entity instances of an entity type may not be associated with any entity instance of another entity type


-- __________________________________________________________


-- Key constraints : primary key, foreign key, unique key, candidate key, alternate key, composite key, super key, partial key.

-- candidate key : a minimal super key; it contains no unnecessary attributes
-- primary key : the candidate key chosen to uniquely identify each row in a table
-- partial key : a set of attributes that can uniquely identify a row in a table, but is not a candidate key
-- composite key : a key made of two or more attributes together
-- foreign key : an attribute or set of attributes in one table that references the primary key of another table
-- super key : a set of one or more attributes that can uniquely identify a row in a table
-- alternate key : a candidate key that is not selected as the primary key
-- referential integrity : a rule that ensures a foreign key value either matches an existing primary key value or is NULL 

-- __________________________________________________________


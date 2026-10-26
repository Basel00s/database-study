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

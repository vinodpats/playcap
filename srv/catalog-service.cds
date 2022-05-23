using com.accenture as my from '../db/schema';

service CatalogService @(requires: 'authenticated-user') {
  entity Books @readonly as projection on my.Books;
  entity Authors @readonly as projection on my.Authors;
  entity Orders @insertonly as projection on my.Orders;
}
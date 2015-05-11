# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Voter.create([
  {
    szNameFirst: 'Michael',
    szNameLast: 'Scott',
    sGender: 'M',
    szSitusAddress: '1725 Slough Ave',
    szSitusCity: 'Scranton',
    sSitusState: 'PA',
    sSitusZip: '18501',
  },
  {
    szNameFirst: 'Walter',
    szNameLast: 'White',
    sGender: 'M',
    szSitusAddress: '308 Negra Arroyo Lane',
    szSitusCity: 'Albuquerque',
    sSitusState: 'NM',
    sSitusZip: '87101',
  },
  {
    szNameFirst: 'Sheldon',
    szNameLast: 'Cooper',
    sGender: 'M',
    szSitusAddress: '2311 North Los Robles Ave',
    szSitusCity: 'Pasadena',
    sSitusState: 'CA',
    sSitusZip: '91101',
  },
  {
    szNameFirst: 'Jack',
    szNameLast: 'Bauer',
    sGender: 'M',
    szSitusAddress: '1925 S Bundy Dr',
    szSitusCity: 'Los Angeles',
    sSitusState: 'CA',
    sSitusZip: '90025',
  },
  {
    szNameFirst: 'Ted',
    szNameLast: 'Mosby',
    sGender: 'M',
    szSitusAddress: '150 W. 85th Street',
    szSitusCity: 'New York',
    sSitusState: 'NY',
    sSitusZip: '10024',
  },
])

Admin.create([
  {
    full_name: 'Admin',
    email: 'admin@admin.com',
    password: 'admin',
  },
])
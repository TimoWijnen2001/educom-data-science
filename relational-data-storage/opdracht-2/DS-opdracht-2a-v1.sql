Ref communes: mhl_cities.commune_ID - mhl_communes.id
Ref supp: mhl_contacts.supplier_ID - mhl_suppliers.id
Ref district: mhl_communes.district_ID - mhl_district.id
Ref prop_sup: mhl_properties.supplier_ID - mhl_suppliers.id
Ref proptype: mhl_propertytypes.id - mhl_properties.propertytype_ID
Ref supp2: mhl_suppliers_mhl_rubriek_view.mhl_suppliers_ID - mhl_suppliers.id
Ref supp3: mhl_suppliers_mhl_rubriek_view.mhl_rubriek_view_ID - mhl_rubrieken.id
Ref city: mhl_suppliers.city_ID - mhl_cities.id
Ref city2: mhl_suppliers.p_city_ID - mhl_cities.id
Ref supp4: mhl_yn_properties.supplier_ID - mhl_suppliers.id
Ref proptype2: mhl_yn_properties.propertytype_ID - mhl_propertytypes.id
Ref group: mhl_detaildefs.group_ID - mhl_detailgroups.id
Ref dep: mhl_contacts.department - mhl_departments.id
Ref comp: mhl_suppliers.company - mhl_companies.id
Ref mem: mhl_suppliers.membertype - mhl_members.id
Ref supp5: mhl_hitcount.supplier_ID - mhl_suppliers.id
Ref country: mhl_district.country_ID - mhl_countries.id

ALTER TABLE mhl_detaildefs
ADD CONSTRAINT fk_detaildef_groupid
FOREIGN KEY (Group_ID)
REFERENCES mhl_detailgroups(id);


ALTER TABLE mhl_district
ADD CONSTRAINT fk_district_country
FOREIGN KEY (country_ID)
REFERENCES mhl_countries(id);


ALTER TABLE mhl_communes
ADD CONSTRAINT fk_communes_district
FOREIGN KEY (district_ID)
REFERENCES mhl_district(id);


ALTER TABLE mhl_cities
ADD CONSTRAINT fk_cities_commune
FOREIGN KEY (commune_ID)
REFERENCES mhl_communes(id);


ALTER TABLE mhl_suppliers
ADD CONSTRAINT fk_suppliers_pcityid
FOREIGN KEY (p_city_ID)
REFERENCES mhl_cities(id);


ALTER TABLE mhl_suppliers
ADD CONSTRAINT fk_suppliers_cityid
FOREIGN KEY (city_ID)
REFERENCES mhl_cities(id);


ALTER TABLE mhl_suppliers
ADD CONSTRAINT fk_suppliers_company
FOREIGN KEY (company)
REFERENCES mhl_companies(id);


ALTER TABLE mhl_suppliers
ADD CONSTRAINT fk_suppliers_membertype
FOREIGN KEY (membertype)
REFERENCES mhl_membertypes(id);


ALTER TABLE mhl_properties
ADD CONSTRAINT fk_properties_supplier
FOREIGN KEY (supplier_ID)
REFERENCES mhl_suppliers(id);


ALTER TABLE mhl_properties
ADD CONSTRAINT fk_properties_propertytype
FOREIGN KEY (propertytype_ID)
REFERENCES mhl_propertytypes(id);


ALTER TABLE mhl_yn_properties
ADD CONSTRAINT fk_ynproperties_supplier
FOREIGN KEY (supplier_ID)
REFERENCES mhl_suppliers(id);


ALTER TABLE mhl_yn_properties
ADD CONSTRAINT fk_ynproperties_propertytype
FOREIGN KEY (propertytype_ID)
REFERENCES mhl_propertytypes(id);


ALTER TABLE mhl_contacts
ADD CONSTRAINT fk_contacts_supplier
FOREIGN KEY (supplier_ID)
REFERENCES mhl_suppliers(id);


ALTER TABLE mhl_contacts
ADD CONSTRAINT fk_contacts_department
FOREIGN KEY (department)
REFERENCES mhl_departments(id);


ALTER TABLE mhl_hitcount
ADD CONSTRAINT fk_hitcount_supplier
FOREIGN KEY (supplier_ID)
REFERENCES mhl_suppliers(id);


ALTER TABLE mhl_suppliers_mhl_rubriek_view
ADD CONSTRAINT fk_suppliers_mhl_rubriek_view_supplier
FOREIGN KEY (mhl_supplier_ID)
REFERENCES mhl_suppliers(id);


ALTER TABLE mhl_suppliers_mhl_rubriek_view
ADD CONSTRAINT fk_suppliers_mhl_rubriek_view_rubriek
FOREIGN KEY (mhl_rubriek_view_ID)
REFERENCES mhl_rubrieken(id);
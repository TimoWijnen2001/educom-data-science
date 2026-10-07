1. in mhl_contacts mist er veel data in contacttype, email, tel. 
2. mhl_hitcount heeft geen functional primary key. 
3. in mhl_detaildefs heeft de properties kolom meerdere property ids. Hiervoor moeten we een nieuwe tabel aanmaken (mhl_detaildefs_properties) die herhaalde properties toestaat. Dit doen we door deze tabel de volgende kolommen te geven: id, detaildefs.id, property_id. 
4. In mhl_detaildefs is de propertytype_ID kolom niet correct voor een lijst met properties. Dit moet gekoppeld worden aan de nieuwe tabel die in [3.] gemaakt wordt dmv mhl_detaildefs_properties.id
5. in mhl_propertytypes heeft display soms geen waarde.
6. pc_lat_long heeft een andere naam conventie dan de andere tabellen. Maak hier mhl_postcode van.
--
-- File generated with SQLiteStudio v3.1.1 on Sat Sep 26 11:40:29 2020
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: housing_relief_resources
CREATE TABLE housing_relief_resources (housing_rp_id INTEGER PRIMARY KEY AUTOINCREMENT, affordable_housing TEXT, homeless_service_providers TEXT, emergency_housing TEXT, financial_resources TEXT, food_bank_pantries TEXT, comm_dev_resources TEXT, hrr_jur_id INTEGER REFERENCES jurisdiction (juris_id));

-- Table: jurisdiction
CREATE TABLE jurisdiction (juris_id INTEGER PRIMARY KEY AUTOINCREMENT, city TEXT NOT NULL, zip_code NUMERIC NOT NULL, county TEXT NOT NULL, state TEXT (2) NOT NULL, audience_group TEXT);

-- Table: rights_protect
CREATE TABLE rights_protect (rights_protect_id INTEGER PRIMARY KEY AUTOINCREMENT, tenants_rights TEXT, mortgage_rights TEXT, covid19_protections TEXT, rp_juri_id INTEGER REFERENCES jurisdiction (juris_id), rp_hrr_id INTEGER REFERENCES housing_relief_resources (housing_rp_id));

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;

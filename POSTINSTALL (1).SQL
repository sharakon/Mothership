-- To support the new heat fields in furniture items, we must patch old active items so that their heat is 22 for all heat fields. --
-- This is required for sorting furniture items by heat value. --
CREATE TEMPORARY TABLE TempActives
(
	ObjectIndex		INTEGER
);
INSERT INTO TempActives SELECT ObjectIndex FROM Metadata WHERE KeyName == 'ACTIVE' EXCEPT SELECT ObjectIndex FROM Metadata WHERE KeyName == 'MAIN_HEAT';
INSERT INTO Metadata SELECT ObjectIndex, "MAIN_HEAT", 22 FROM TempActives;
INSERT INTO Metadata SELECT ObjectIndex, "HOST_HEAT", 22 FROM TempActives;
INSERT INTO Metadata SELECT ObjectIndex, "VRAM_HEAT", 22 FROM TempActives;
INSERT INTO Metadata SELECT ObjectIndex, "PPU_HEAT", 22 FROM TempActives;
INSERT INTO Metadata SELECT ObjectIndex, "NET_HEAT", 22 FROM TempActives;
DROP TABLE TempActives;
-- DO NOT EDIT ANYTHING ABOVE THIS LINE --
-- ALL ITEMS GO INTO STORAGE. YOU CAN TAKE THEM OUT OF STORAGE IN-GAME AND WILL REMAIN LIKE THAT. --
-- PREMIUM TABLE --
UPDATE Objects SET EntitlementIndex = (SELECT MAX(EntitlementIndex) FROM Entitlements) + 1, InventoryEntryType = '2', UserLocation = '1' WHERE ObjectId = 'CB8D5101-067E40B5-AB85B182-515713B0';
UPDATE Objects SET EntitlementIndex = (SELECT MAX(EntitlementIndex) FROM Entitlements) + 2, InventoryEntryType = '2', UserLocation = '1' WHERE ObjectId = 'D41CA322-A2C14D46-95C9620F-A5A1E874';
UPDATE Objects SET EntitlementIndex = (SELECT MAX(EntitlementIndex) FROM Entitlements) + 3, InventoryEntryType = '2', UserLocation = '1' WHERE ObjectId = '71EBE07E-E8624ADB-9BE49FE6-25FA1606';
UPDATE Objects SET EntitlementIndex = (SELECT MAX(EntitlementIndex) FROM Entitlements) + 4, InventoryEntryType = '2', UserLocation = '1' WHERE ObjectId = 'F3BA0474-E9294766-96F6445D-F9485ABF';
UPDATE Objects SET EntitlementIndex = (SELECT MAX(EntitlementIndex) FROM Entitlements) + 5, InventoryEntryType = '2', UserLocation = '1' WHERE ObjectId = 'D9B1F481-E24143E3-901B74F5-BC1C30BB';
UPDATE Objects SET EntitlementIndex = (SELECT MAX(EntitlementIndex) FROM Entitlements) + 6, InventoryEntryType = '2', UserLocation = '1' WHERE ObjectId = 'ABDED858-8E3B49BC-BAA4392D-9FDB5A63';
UPDATE Objects SET EntitlementIndex = (SELECT MAX(EntitlementIndex) FROM Entitlements) + 7, InventoryEntryType = '2', UserLocation = '1' WHERE ObjectId = '28ADC591-B63448AC-B326E5DF-FC17A223';
UPDATE Objects SET EntitlementIndex = (SELECT MAX(EntitlementIndex) FROM Entitlements) + 8, InventoryEntryType = '2', UserLocation = '1' WHERE ObjectId = '6C0884FA-6926419B-ABD4F676-9B4BBEF8';
UPDATE Objects SET EntitlementIndex = (SELECT MAX(EntitlementIndex) FROM Entitlements) + 9, InventoryEntryType = '2', UserLocation = '1' WHERE ObjectId = 'A61C6C54-D6544E90-9F5B66EA-7247A79D';
UPDATE Objects SET EntitlementIndex = (SELECT MAX(EntitlementIndex) FROM Entitlements) + 10, InventoryEntryType = '2', UserLocation = '1' WHERE ObjectId = '9E680C54-57E64C05-824C5D9E-85192126';
UPDATE Objects SET EntitlementIndex = (SELECT MAX(EntitlementIndex) FROM Entitlements) + 11, InventoryEntryType = '2', UserLocation = '1' WHERE ObjectId = '55169D94-F6A64E46-8BCF29EA-8E54F8DC';
UPDATE Objects SET EntitlementIndex = (SELECT MAX(EntitlementIndex) FROM Entitlements) + 12, InventoryEntryType = '2', UserLocation = '1' WHERE ObjectId = 'DE4512B7-AAF14EB8-B9147F1E-12CC4152';
UPDATE Objects SET EntitlementIndex = (SELECT MAX(EntitlementIndex) FROM Entitlements) + 13, InventoryEntryType = '2', UserLocation = '1' WHERE ObjectId = '81C35CCF-B4294565-A79E5DAE-2DC1C574';
UPDATE Objects SET EntitlementIndex = (SELECT MAX(EntitlementIndex) FROM Entitlements) + 14, InventoryEntryType = '2', UserLocation = '1' WHERE ObjectId = '1F06C254-A7E64A30-B6D21BDC-AA465F64';
UPDATE Objects SET EntitlementIndex = (SELECT MAX(EntitlementIndex) FROM Entitlements) + 15, InventoryEntryType = '2', UserLocation = '1' WHERE ObjectId = '905EC5DC-E699444D-B9610103-680F1020';
UPDATE Objects SET EntitlementIndex = (SELECT MAX(EntitlementIndex) FROM Entitlements) + 16, InventoryEntryType = '2', UserLocation = '1' WHERE ObjectId = 'BD8D559F-9E554E7E-9D51A766-62E08C91';
UPDATE Objects SET EntitlementIndex = (SELECT MAX(EntitlementIndex) FROM Entitlements) + 17, InventoryEntryType = '2', UserLocation = '1' WHERE ObjectId = '5BB02C61-61E4416D-80139E4E-CC304332';
UPDATE Objects SET EntitlementIndex = (SELECT MAX(EntitlementIndex) FROM Entitlements) + 18, InventoryEntryType = '2', UserLocation = '1' WHERE ObjectId = '237914DD-BF554245-8EDEOBEF-EB9F7F70';
UPDATE Objects SET EntitlementIndex = (SELECT MAX(EntitlementIndex) FROM Entitlements) + 19, InventoryEntryType = '2', UserLocation = '1' WHERE ObjectId = '2AFEE01D-F78E40CD-99D27A29-4AD8E028';
UPDATE Objects SET EntitlementIndex = (SELECT MAX(EntitlementIndex) FROM Entitlements) + 21, InventoryEntryType = '2', UserLocation = '1' WHERE ObjectId = 'D5E0E085-1EC349D5-BBF269E1-8637733C';
UPDATE Objects SET EntitlementIndex = (SELECT MAX(EntitlementIndex) FROM Entitlements) + 22, InventoryEntryType = '2', UserLocation = '1' WHERE ObjectId = '86ED56D2-2011449A-8317D387-E098C273';
UPDATE Objects SET EntitlementIndex = (SELECT MAX(EntitlementIndex) FROM Entitlements) + 23, InventoryEntryType = '2', UserLocation = '1' WHERE ObjectId = '77ADEBAA-EFE448CE-BCE06A9F-BEB8272F';
UPDATE Objects SET EntitlementIndex = (SELECT MAX(EntitlementIndex) FROM Entitlements) + 24, InventoryEntryType = '2', UserLocation = '1' WHERE ObjectId = '31648560-281642D6-B084CC24-CC3E1AF4';
UPDATE Objects SET EntitlementIndex = (SELECT MAX(EntitlementIndex) FROM Entitlements) + 25, InventoryEntryType = '2', UserLocation = '1' WHERE ObjectId = '11837619-BBE14BA4-9511F580-379727E3';
UPDATE Objects SET EntitlementIndex = (SELECT MAX(EntitlementIndex) FROM Entitlements) + 26, InventoryEntryType = '2', UserLocation = '1' WHERE ObjectId = '65FD7D8F-2E34450D-9FCC311D-55CAE107';
-- REWARD TABLE --

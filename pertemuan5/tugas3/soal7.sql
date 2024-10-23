
---Jika kita di awal belum setting on delete cascade maka harus diubah ter;ebih dahulu-
ALTER TABLE Mahasiswa
ADD CONSTRAINT fk_dosen_wali
FOREIGN KEY (dosen_wali_id) REFERENCES Dosen_Wali(id) ON DELETE CASCADE;


--Baru dilakukan penghapusan--
DELETE FROM mahasiswa
WHERE NPM IN (20061001, 20061002, 20061003, 20061004, 20061005);

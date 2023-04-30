CREATE TABLE users (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nama VARCHAR(255) NOT NULL,
    Alamat VARCHAR(255) NOT NULL,
    Jabatan VARCHAR(255) NOT NULL
);

INSERT INTO users (Nama, Alamat, Jabatan) VALUES ('Jason', 'Jakarta', 'Manager');
INSERT INTO users (Nama, Alamat, Jabatan) VALUES ('Vincent', 'Surabaya', 'CEO');
INSERT INTO users (Nama, Alamat, Jabatan) VALUES ('Sarah', 'Bandung', 'Staff');

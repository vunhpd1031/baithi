-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-08-22 00:51:59.919




-- tables
-- Table: TNhanvien
CREATE TABLE TNhanvien (
    MaNV int  NOT NULL,
    TenNV varchar(255)  NOT NULL,
    NgaySinh date  NOT NULL,
    GioiTinh varchar(10)  NOT NULL,
    Email varchar(50)  NOT NULL,
    MucLuong money  NOT NULL,
    TPhongban_MaPhong int  NOT NULL,
    CONSTRAINT TNhanvien_pk PRIMARY KEY (MaNV)
);



-- Table: TPhongban
CREATE TABLE TPhongban (
    MaPhong int  NOT NULL,
    TenPhong varchar(100)  NOT NULL,
    CONSTRAINT TPhongban_pk PRIMARY KEY (MaPhong)
);







-- foreign keys
-- Reference:  TNhanvien_TPhongban (table: TNhanvien)


ALTER TABLE TNhanvien ADD CONSTRAINT TNhanvien_TPhongban 
    FOREIGN KEY (TPhongban_MaPhong)
    REFERENCES TPhongban (MaPhong)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;






-- End of file.


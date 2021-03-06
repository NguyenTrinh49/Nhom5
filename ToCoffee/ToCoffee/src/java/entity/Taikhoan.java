package entity;
// Generated Oct 16, 2016 11:58:40 AM by Hibernate Tools 4.3.1


import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Taikhoan generated by hbm2java
 */
public class Taikhoan  implements java.io.Serializable {


     private int id;
     private String sdt;
     private String matkhau;
     private String ten;
     private String diachi;
     private String email;
     private Date ngaytao;
     private String loaitk;
     private String hinhanh;
     private Set<Hoadon> hoadons = new HashSet<Hoadon>(0);

    public Taikhoan() {
    }
    
    public Taikhoan(String sdt) {
        this.sdt = sdt;
    }
    
    public Taikhoan(String sdt, String matkhau) {
        this.sdt = sdt;
        this.matkhau = matkhau;
    }

    public Taikhoan(String sdt, String matkhau, String ten, String diachi, String email, Date ngaytao, String loaitk) {
        this.sdt = sdt;
        this.matkhau = matkhau;
        this.ten = ten;
        this.diachi = diachi;
        this.email = email;
        this.ngaytao = ngaytao;
        this.loaitk = loaitk;
    }
        
    public Taikhoan(int id, String sdt, String matkhau, String ten, String diachi, String email, String loaitk) {
        this.id = id;
        this.sdt = sdt;
        this.matkhau = matkhau;
        this.ten = ten;
        this.diachi = diachi;
        this.email = email;
        this.loaitk = loaitk;
    }
    public Taikhoan(int id, String sdt, String matkhau, String ten, String diachi, String email, Date ngaytao, String loaitk, String hinhanh, Set<Hoadon> hoadons) {
       this.id = id;
       this.sdt = sdt;
       this.matkhau = matkhau;
       this.ten = ten;
       this.diachi = diachi;
       this.email = email;
       this.ngaytao = ngaytao;
       this.loaitk = loaitk;
       this.hinhanh = hinhanh;
       this.hoadons = hoadons;
    }
   
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    public String getSdt() {
        return this.sdt;
    }
    
    public void setSdt(String sdt) {
        this.sdt = sdt;
    }
    public String getMatkhau() {
        return this.matkhau;
    }
    
    public void setMatkhau(String matkhau) {
        this.matkhau = matkhau;
    }
    public String getTen() {
        return this.ten;
    }
    
    public void setTen(String ten) {
        this.ten = ten;
    }
    public String getDiachi() {
        return this.diachi;
    }
    
    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public Date getNgaytao() {
        return this.ngaytao;
    }
    
    public void setNgaytao(Date ngaytao) {
        this.ngaytao = ngaytao;
    }
    public String getLoaitk() {
        return this.loaitk;
    }
    
    public void setLoaitk(String loaitk) {
        this.loaitk = loaitk;
    }
    public String getHinhanh() {
        return this.hinhanh;
    }
    
    public void setHinhanh(String hinhanh) {
        this.hinhanh = hinhanh;
    }
    public Set<Hoadon> getHoadons() {
        return this.hoadons;
    }
    
    public void setHoadons(Set<Hoadon> hoadons) {
        this.hoadons = hoadons;
    }




}



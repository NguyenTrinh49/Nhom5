package entity;
// Generated Oct 16, 2016 11:58:40 AM by Hibernate Tools 4.3.1


import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Sanpham generated by hbm2java
 */
public class Sanpham  implements java.io.Serializable {


     private int ma;
     private Loaisanpham loaisanpham;
     private String ten;
     private String mota;
     private int gia;
     private String hinhanh;
     private Set<Chitiethoadon> chitiethoadons = new HashSet<Chitiethoadon>(0);

    public Sanpham() {
    }

	
    public Sanpham(int ma, Loaisanpham loaisanpham, String ten, int gia) {
        this.ma = ma;
        this.loaisanpham = loaisanpham;
        this.ten = ten;
        this.gia = gia;
    }
    public Sanpham(int ma, Loaisanpham loaisanpham, String ten, String mota, int gia, String hinhanh, Set<Chitiethoadon> chitiethoadons) {
       this.ma = ma;
       this.loaisanpham = loaisanpham;
       this.ten = ten;
       this.mota = mota;
       this.gia = gia;
       this.hinhanh = hinhanh;
       this.chitiethoadons = chitiethoadons;
    }
   
    public int getMa() {
        return this.ma;
    }
    
    public void setMa(int ma) {
        this.ma = ma;
    }
    public Loaisanpham getLoaisanpham() {
        return this.loaisanpham;
    }
    
    public void setLoaisanpham(Loaisanpham loaisanpham) {
        this.loaisanpham = loaisanpham;
    }
    public String getTen() {
        return this.ten;
    }
    
    public void setTen(String ten) {
        this.ten = ten;
    }
    public String getMota() {
        return this.mota;
    }
    
    public void setMota(String mota) {
        this.mota = mota;
    }
    public int getGia() {
        return this.gia;
    }
    
    public void setGia(int gia) {
        this.gia = gia;
    }
    public String getHinhanh() {
        return this.hinhanh;
    }
    
    public void setHinhanh(String hinhanh) {
        this.hinhanh = hinhanh;
    }
    public Set<Chitiethoadon> getChitiethoadons() {
        return this.chitiethoadons;
    }
    
    public void setChitiethoadons(Set<Chitiethoadon> chitiethoadons) {
        this.chitiethoadons = chitiethoadons;
    }




}



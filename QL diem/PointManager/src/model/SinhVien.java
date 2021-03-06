/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author vanph
 */
public class SinhVien {
     private int id;
    private String tenSV;
    private Date ngaySinh;
    private String mota;
    private NienKhoa nienKhoa;
    private String queQuan;
    private List<SVLopMonHoc> svLopMonHocs = new ArrayList<>();
    private boolean checked;

    public void setChecked(boolean checked) {
        this.checked = checked;
    }

    public boolean isChecked() {
        return checked;
    }
    public SinhVien() {
    }

    public SinhVien(int id, String tenSV, Date ngaySinh, String mota,
            NienKhoa nienKhoa, String queQuan) {
        this.id = id;
        this.tenSV = tenSV;
        this.ngaySinh = ngaySinh;
        this.mota = mota;
        this.nienKhoa = nienKhoa;
        this.queQuan = queQuan;
    }

    public String getQueQuan() {
        return queQuan;
    }

    public void setQueQuan(String queQuan) {
        this.queQuan = queQuan;
    }
    
    public List<SVLopMonHoc> getSvLopMonHocs() {
        return svLopMonHocs;
    }

    public void setSvLopMonHocs(List<SVLopMonHoc> svLopMonHocs) {
        this.svLopMonHocs = svLopMonHocs;
    }

    public int getId() {
        return id;
    }

    public String getTenSV() {
        return tenSV;
    }

    public Date getNgaySinh() {
        return ngaySinh;
    }

    public String getMota() {
        return mota;
    }

    public NienKhoa getNienKhoa() {
        return nienKhoa;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setTenSV(String tenSV) {
        this.tenSV = tenSV;
    }

    public void setNgaySinh(Date ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public void setNienKhoa(NienKhoa nienKhoa) {
        this.nienKhoa = nienKhoa;
    }
    public String getNgaySinhString(){
        DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
        String strDate = dateFormat.format(ngaySinh);
        return strDate;
    }
    
}

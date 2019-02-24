/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository;

import irepository.IChuyenNganh;
import irepository.INienKhoa;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import model.ChuyenNganh;
import model.NienKhoa;
import util.ConnectDB;

/**
 *
 * @author vanph
 */
public class NienKhoaRepository implements INienKhoa {
 IChuyenNganh chuyenNganhRepo = new ChuyenNganhRepository();
    @Override
    public NienKhoa getByID(int idNienKhoa) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<NienKhoa> getNienKhoas(int idChuyenNganh) {
        List<NienKhoa> nienKhoas = new ArrayList<>();
        try {
            String sql = "SELECT * FROM tblNienKhoa WHERE idChuyenNganh = ?";
            Connection connect = ConnectDB.getConnect();
            PreparedStatement stmt = connect.prepareStatement(sql);
            stmt.setInt(1, idChuyenNganh);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String ten = rs.getString("nienKhoa");
                System.out.println(ten);
                String mota = rs.getString("moTa");
                ChuyenNganh chuyenNganh = chuyenNganhRepo.getByID(idChuyenNganh);
                NienKhoa nienKhoa = new NienKhoa(id, chuyenNganh, ten, mota);
                nienKhoas.add(nienKhoa);
            }
            
            return nienKhoas;
        } catch (SQLException ex) {
            
        }

        return nienKhoas;
    }

    @Override
    public List<NienKhoa> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}

using QuanLyBanSach.DAL;
using QuanLyBanSach.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace QuanLyBanSach.BLL
{
    class KhachHangBus
    {
        KhachHangTable objKhachHang = new KhachHangTable();
        public DataTable GetKhachHang()
        {
            return objKhachHang.GetAllRows();
        }
        public KhachHangDTO GetKhachHangByMaKH(string makh)
        {
            return objKhachHang.GetRow(makh);
        }
        public DataTable GetKhachHangTheoTop(int topnumber)
        {
            return objKhachHang.GetRows(topnumber);
        }
        public bool AddKhachHang(KhachHangDTO kh)
        {
            if (!objKhachHang.IsRowExists(kh.MaKhachHang))
                return objKhachHang.AddRow(kh);
            else
                return false;
        }
        public bool DeleteKhachHang(string makh)
        {
            return objKhachHang.DeleteRow(makh);
        }
        public bool UpdateKhachHang(KhachHangDTO kh)
        {
            if (objKhachHang.IsRowExists(kh.MaKhachHang))
                return objKhachHang.UpdateRow(kh);
            else
                return false;
        }
    }
}

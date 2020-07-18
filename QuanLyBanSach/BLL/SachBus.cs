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
    class SachBus
    {
        SachTable objSach = new SachTable();
        TheLoaiSachTable objTheLoai = new TheLoaiSachTable();
        public DataTable GetSach()
        {
            return objSach.GetAllRows();
        }
        public bool DeleteSach(string masach)
        {
            if (objSach.IsRowExists(masach))
                return objSach.DeleteRow(masach);
            else
                return false;
        }
        public DataTable GetSachByTheLoai(string matheloai)
        {
            return objSach.GetRowsByTheLoaiSach(matheloai);
        }
        public SachDTO GetSachByMaSach(string masach)
        {
            return objSach.GetRow(masach);
        }
        public DataTable GetSachTheoTop(int topnumber)
        {
            return objSach.GetRows(topnumber);
        }
        public bool AddSach(SachDTO s)
        {
            if (!objSach.IsRowExists(s.MaSach) && objTheLoai.IsRowExists(s.MaTheLoai))
                return objSach.AddRow(s);
            else
                return false;
        }
        public bool UpdateSach(SachDTO s)
        {
            if (objSach.IsRowExists(s.MaSach) && objTheLoai.IsRowExists(s.MaTheLoai))
                return objSach.UpdateRow(s);
            else
                return false;
        }

    }
}

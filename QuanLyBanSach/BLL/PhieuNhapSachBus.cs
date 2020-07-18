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
    class PhieuNhapSachBus
    {
        PhieuNhapSachTable objPhieuNhap = new PhieuNhapSachTable();
        NhanVienTable objNV = new NhanVienTable();
        public bool AddPhieuNhap(PhieuNhapSachDTO pn)
        {
            if (!objPhieuNhap.IsRowExists(pn.MaPhieuNhapSach))
                return objPhieuNhap.AddRow(pn);
            else
                return UpdatePhieuNhap(pn);
        }
        public bool DeletePhieuNhap(string maphieunhap)
        {
            ChiTietPhieuNhapSachBus ctb = new ChiTietPhieuNhapSachBus();
            foreach (string ct in ctb.GetMaCTPNList(maphieunhap))
            {
                if (ctb.DeleteChiTietPN(ct))
                    Console.WriteLine("Delete: {0}", ct);
            }
            return objPhieuNhap.DeleteRow(maphieunhap);
        }
        public bool UpdatePhieuNhap(PhieuNhapSachDTO pn)
        {
            if (objPhieuNhap.IsRowExists(pn.MaPhieuNhapSach))
            {
                ChiTietPhieuNhapSachBus ctb = new ChiTietPhieuNhapSachBus();
                foreach (string ct in ctb.GetMaCTPNList(pn.MaPhieuNhapSach))
                {
                    if (ctb.DeleteChiTietPN(ct))
                        Console.WriteLine("Delete: {0}", ct);
                }
                return objPhieuNhap.UpdateRow(pn);
            }
            else
                return false;
        }
        public DataTable GetPhieuNhap()
        {
            return objPhieuNhap.GetAllRows();
        }
        public PhieuNhapSachDTO GetPhieuNhapByMa(string mapn)
        {
            return objPhieuNhap.GetRow(mapn);
        }
        public DataTable GetPhieuNhapByTop(int number)
        {
            return objPhieuNhap.GetRows(number);
        }
        public DataTable GetDisplayTable()
        {
            return objPhieuNhap.GetDisplayTable();
        }
    }
}

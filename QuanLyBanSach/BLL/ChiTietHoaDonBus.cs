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
    class ChiTietHoaDonBus
    {
        ChiTietHoaDonTable objCTHD = new ChiTietHoaDonTable();
        HoaDonTable objHD = new HoaDonTable();
        public bool AddChiTietHD(ChiTietHoaDonDTO cthd)
        {
            if (objHD.IsRowExists(cthd.MaHoaDon) && !objCTHD.IsRowExists(cthd.MaChiTietHoaDon))
            {
                return objCTHD.AddRow(cthd);
            }
            else
                return false;
        }
        public List<string> GetMaCTHoaDonList(string maHoaDon)
        {
            return objCTHD.GetMaCTHoaDonList(maHoaDon);
        }
        public bool DeleteChiTietHD(string macthd)
        {
            return objCTHD.DeleteRow(macthd);
        }
        public bool UpdateChiTietHD(ChiTietHoaDonDTO cthd)
        {
            if (objCTHD.IsRowExists(cthd.MaChiTietHoaDon) && objHD.IsRowExists(cthd.MaHoaDon))
                return objCTHD.UpdateRow(cthd);
            else
                return false;
        }
        public DataTable GetChiTietHD()
        {
            return objCTHD.GetAllRows();
        }
        public ChiTietHoaDonDTO GetChiTietHDByMa(string macthd)
        {
            return objCTHD.GetRow(macthd);
        }
        public DataTable GetChiTietHDByTop(int number)
        {
            return objCTHD.GetRows(number);
        }
    }
}

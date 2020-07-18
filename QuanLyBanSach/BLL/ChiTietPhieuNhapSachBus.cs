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
    class ChiTietPhieuNhapSachBus
    {
        ChiTietPhieuNhapSachTable objCTPN = new ChiTietPhieuNhapSachTable();
        PhieuNhapSachTable objPN = new PhieuNhapSachTable();
        public bool AddChiTietPN(ChiTietPhieuNhapSachDTO ctpn)
        {
            if (!objCTPN.IsRowExists(ctpn.MaChiTietPhieuNhapSach) && objPN.IsRowExists(ctpn.MaPhieuNhapSach))
                return objCTPN.AddRow(ctpn);
            else
                return false;
        }
        public bool DeleteChiTietPN(string mactpn)
        {
            return objCTPN.DeleteRow(mactpn);
        }
        public bool UpdateChiTietPN(ChiTietPhieuNhapSachDTO ctpn)
        {
            if (objCTPN.IsRowExists(ctpn.MaChiTietPhieuNhapSach))
                return objCTPN.UpdateRow(ctpn);
            else
                return false;

        }
        public List<string> GetMaCTPNList(string maPN)
        {
            return objCTPN.GetMaCTPNList(maPN);
        }
        public DataTable GetChiTietPN()
        {
            return objCTPN.GetAllRows();
        }
        public ChiTietPhieuNhapSachDTO GetChiTietPNByMa(string mactpn)
        {
            return objCTPN.GetRow(mactpn);
        }
        public DataTable GetChiTietPNByTop(int number)
        {
            return objCTPN.GetRows(number);
        }
    }
}

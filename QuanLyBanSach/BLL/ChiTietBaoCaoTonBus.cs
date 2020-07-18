using QuanLyBanSach.DAL;
using QuanLyBanSach.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyBanSach.BLL
{
    class ChiTietBaoCaoTonBus
    {
        ChiTietBaoCaoTonTable objCTBCT = new ChiTietBaoCaoTonTable();
        public bool AddChiTietBaoCao(ChiTietBaoCaoTonDTO ctbct)
        {
            return objCTBCT.AddChiTiet(ctbct);
        }
        public bool DeleteAll(string MaBaoCaoTon)
        {
            return objCTBCT.RemoveAll(MaBaoCaoTon);
        }
    }
}

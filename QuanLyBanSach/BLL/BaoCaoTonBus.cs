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
    class BaoCaoTonBus
    {
        BaoCaoTonTable objBCCT = new BaoCaoTonTable();

        public bool AddBaoCao(BaoCaoTonDTO bct)
        {
            return objBCCT.AddBaoCaoTon(bct);
        }
        public DataTable GetBaoCaoChiTiet(int thang, int nam)
        {
            return objBCCT.ThongKeBaoCaoTon(thang, nam);
        }
        public DataTable GetAllRows()
        {
            return objBCCT.GetAllRows();
        }

        public bool IsRowExists(int thang, int nam)
        {
            return objBCCT.IsRowExists(thang, nam);
        }

        public bool UpdateBaoCao(BaoCaoTonDTO bct)
        {
            return objBCCT.UpdateBaoCao(bct);
        }

        public BaoCaoTonDTO GetBaoCaoFromThangNam(int thang, int nam)
        {
            return objBCCT.GetBaoCaoFromThangNam(thang, nam);
        }
    }
}

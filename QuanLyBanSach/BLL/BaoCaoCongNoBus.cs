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
    class BaoCaoCongNoBus
    {
        BaoCaoCongNoTable objBCCN = new BaoCaoCongNoTable();

        public bool AddBaoCao(BaoCaoCongNoDTO bccn)
        {
            return objBCCN.AddBaoCaoCongNo(bccn);
        }
        public DataTable GetBaoCaoChiTiet(int thang, int nam)
        {
            return objBCCN.ThongKeBaoCaoCongNo(thang, nam);
        }
        public DataTable GetAllRows()
        {
            return objBCCN.GetAllRows();
        }

        public bool IsRowExists(int thang, int nam)
        {
            return objBCCN.IsRowExists(thang, nam);
        }

        public bool UpdateBaoCao(BaoCaoCongNoDTO bccn)
        {
            return objBCCN.UpdateBaoCao(bccn);
        }

        public BaoCaoCongNoDTO GetBaoCaoFromThangNam(int thang, int nam)
        {
            return objBCCN.GetBaoCaoFromThangNam(thang, nam);
        }
    }
}

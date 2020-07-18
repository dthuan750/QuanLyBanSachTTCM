using QuanLyBanSach.DAL;
using QuanLyBanSach.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyBanSach.BLL
{
    class ChiTietBaoCaoCongNoBus
    {
        ChiTietBaoCaoCongNoTable objCTBCCN = new ChiTietBaoCaoCongNoTable();
        public bool AddChiTietBaoCao(ChiTietBaoCaoCongNoDTO ctbccn)
        {
            return objCTBCCN.AddChiTiet(ctbccn);
        }
        public bool DeleteAll(string MaBaoCaoCongNo)
        {
            return objCTBCCN.RemoveAll(MaBaoCaoCongNo);
        }
    }
}

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
    class ThamSoBus
    {
        ThamSoTable objThamSo = new ThamSoTable();
        public bool UpdateThamSo(ThamSoDTO ts)
        {
            if (objThamSo.IsRowExists(ts.MaThamSo))
                return objThamSo.UpdateRow(ts);
            else
                return false;
        }
        public ThamSoDTO GetThamSoByMa(string mats)
        {
            return objThamSo.GetRow(mats);
        }
        public DataTable GetThamSo()
        {
            return objThamSo.GetAllRows();
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyBanSach.DTO
{
    class BaoCaoCongNoDTO
    {
        public string MaBaoCaoCongNo { get; set; }
        public int Thang { get; set; }
        public int Nam { get; set; }
        public BaoCaoCongNoDTO() { }
        public BaoCaoCongNoDTO(string maCongNo, int thang, int nam)
        {
            MaBaoCaoCongNo = maCongNo;
            Thang = thang;
            Nam = nam;
        }
    }
}

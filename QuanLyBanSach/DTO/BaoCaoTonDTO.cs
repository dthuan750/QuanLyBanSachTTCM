using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyBanSach.DTO
{
    class BaoCaoTonDTO
    {
        public string MaBaoCaoTon { get; set; }
        public int Thang { get; set; }
        public int Nam { get; set; }
        public BaoCaoTonDTO() { }
        public BaoCaoTonDTO(string maBCTon, int thang, int nam)
        {
            MaBaoCaoTon = maBCTon;
            Thang = thang;
            Nam = nam;
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyBanSach.DTO
{
    class ThamSoDTO
    {
        public string MaThamSo { get; set; }
        public string TenThamSo { get; set; }
        public int GiaTri { get; set; }
        public ThamSoDTO() { }
        public ThamSoDTO(string maTS, string tenTS, int giaTri)
        {
            MaThamSo = maTS;
            TenThamSo = tenTS;
            GiaTri = giaTri;
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyBanSach.DTO
{
    class ChiTietBaoCaoTonDTO
    {
        public string MaChiTietBaoCaoTon { set; get; }
        public string MaBaoCaoTon { set; get; }
        public string MaSach { set; get; }
        public int TonDau { set; get; }
        public int TonCuoi { set; get; }
        public int PhatSinh { set; get; }
        public ChiTietBaoCaoTonDTO() { }
        public ChiTietBaoCaoTonDTO(string mactbct, string mabct, string masach, int tondau, int toncuoi, int phatsinh)
        {
            MaChiTietBaoCaoTon = mactbct;
            MaBaoCaoTon = mabct;
            MaSach = masach;
            TonDau = tondau;
            TonCuoi = toncuoi;
            PhatSinh = phatsinh;
        }
    }
}

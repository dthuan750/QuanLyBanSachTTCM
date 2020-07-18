using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyBanSach.DTO
{
    class PhieuNhapSachDTO
    {
        public string MaPhieuNhapSach { get; set; }
        public DateTime NgayNhap { get; set; }
        public string MaNhanVien { get; set; }
        public PhieuNhapSachDTO() { }
        public PhieuNhapSachDTO(string maPNS, DateTime ngayNhap, string maNV)
        {
            MaPhieuNhapSach = maPNS;
            NgayNhap = ngayNhap;
            MaNhanVien = maNV;
        }
    }
}

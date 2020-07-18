using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyBanSach.DTO
{
    class ChiTietPhieuNhapSachDTO
    {
        public string MaChiTietPhieuNhapSach { get; set; }
        public string MaPhieuNhapSach { get; set; }
        public string MaSach { get; set; }
        public int SoLuongNhap { get; set; }
        public decimal DonGiaNhap { get; set; }
        public ChiTietPhieuNhapSachDTO() { }
        public ChiTietPhieuNhapSachDTO(string maCTPNS, string maPhieuNhapSach, string maSach, int slNhap, decimal donGiaNhap)
        {
            MaChiTietPhieuNhapSach = maCTPNS;
            MaPhieuNhapSach = maPhieuNhapSach;
            MaSach = maSach;
            SoLuongNhap = slNhap;
            DonGiaNhap = donGiaNhap;
        }
    }
}

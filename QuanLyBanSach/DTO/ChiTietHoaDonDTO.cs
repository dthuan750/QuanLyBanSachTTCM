using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyBanSach.DTO
{
    class ChiTietHoaDonDTO
    {
        public string MaChiTietHoaDon { get; set; }
        public string MaHoaDon { get; set; }
        public string MaSach { get; set; }
        public int SoLuongBan { get; set; }
        public decimal DonGiaBan { get; set; }
        public ChiTietHoaDonDTO() { }
        public ChiTietHoaDonDTO(string maCTHoaDon, string maHD, string maSach, int slBan, decimal donGia)
        {
            MaChiTietHoaDon = maCTHoaDon;
            MaHoaDon = maHD;
            MaSach = maSach;
            SoLuongBan = slBan;
            DonGiaBan = donGia;
        }
    }
}

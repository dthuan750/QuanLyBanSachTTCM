﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyBanSach.DTO
{
    class HoaDonDTO
    {
        public string MaHoaDon { get; set; }
        public string MaKhachHang { get; set; }
        public string MaNhanVien { get; set; }
        public DateTime NgayHoaDon { get; set; }
        public decimal GiamGia { get; set; }
        public decimal TienKhachDaTra { get; set; }
        public decimal TienKhachDua { get; set; }
        public HoaDonDTO() { }
        public HoaDonDTO(string maHD, string maKH, string maNV, DateTime ngayHD, decimal giamGia, decimal tienKhachDaTra, decimal tienKhachDua)
        {
            MaHoaDon = maHD;
            MaKhachHang = maKH;
            MaNhanVien = maNV;
            NgayHoaDon = ngayHD;
            GiamGia = giamGia;
            TienKhachDaTra = tienKhachDaTra;
            TienKhachDua = tienKhachDua;
        }
    }
}

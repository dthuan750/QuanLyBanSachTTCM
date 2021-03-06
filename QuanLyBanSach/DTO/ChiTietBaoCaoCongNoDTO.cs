﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyBanSach.DTO
{
    class ChiTietBaoCaoCongNoDTO
    {
        public string MaChiTietBaoCaoCongNo { set; get; }
        public string MaBaoCaoCongNo { set; get; }
        public string MaKhachHang { set; get; }
        public decimal NoDau { set; get; }
        public decimal NoCuoi { set; get; }
        public decimal PhatSinh { set; get; }
        public ChiTietBaoCaoCongNoDTO() { }
        public ChiTietBaoCaoCongNoDTO(string mactbccn, string mabccn, string maKh, decimal nodau, decimal nocuoi, decimal phatsinh)
        {
            MaChiTietBaoCaoCongNo = mactbccn;
            MaBaoCaoCongNo = mabccn;
            MaKhachHang = maKh;
            NoDau = nodau;
            NoCuoi = nocuoi;
            PhatSinh = phatsinh;
        }
    }
}

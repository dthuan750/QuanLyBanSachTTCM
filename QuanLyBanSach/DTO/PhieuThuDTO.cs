using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyBanSach.DTO
{
    class PhieuThuDTO
    {
        public string MaPhieuThu { get; set; }
        public string MaKhachHang { get; set; }
        public string MaNhanVien { get; set; }
        public DateTime NgayThu { get; set; }
        public decimal SoTienThu { get; set; }
        public string LyDoThu { get; set; }
        public PhieuThuDTO() { }
        public PhieuThuDTO(string maPT, string maKH, string maNV, DateTime ngayThu, decimal soTien, string lyDo)
        {
            MaPhieuThu = maPT;
            MaKhachHang = maKH;
            MaNhanVien = maNV;
            NgayThu = ngayThu;
            SoTienThu = soTien;
            LyDoThu = lyDo;
        }
    }
}

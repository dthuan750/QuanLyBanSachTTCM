using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyBanSach.DTO
{
    class TheLoaiSachDTO
    {
        public string MaTheLoai { get; set; }
        public string TenTheLoai { get; set; }
        public TheLoaiSachDTO() { }
        public TheLoaiSachDTO(string maTL, string tenTL)
        {
            MaTheLoai = maTL;
            TenTheLoai = tenTL;
        }
    }
}

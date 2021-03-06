﻿using QuanLyBanSach.DAL;
using QuanLyBanSach.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyBanSach.BLL
{
    class TheLoaiSachBus
    {
        TheLoaiSachTable objTheLoai = new TheLoaiSachTable();
        public bool AddTheLoai(TheLoaiSachDTO tl)
        {
            if (!objTheLoai.IsRowExists(tl.MaTheLoai))
                return objTheLoai.AddRow(tl);
            else
                return false;
        }
        public bool DeleteTheLoai(string matheloai)
        {
            return objTheLoai.DeleteRow(matheloai);
        }
        public bool UpdateTheLoai(TheLoaiSachDTO tl)
        {
            if (objTheLoai.IsRowExists(tl.MaTheLoai))
                return objTheLoai.UpdateRow(tl);
            else
                return false;
        }
        public DataTable GetTheLoai()
        {
            return objTheLoai.GetAllRows();
        }
        public DataTable GetTheLoaiTheoTop(int topnumber)
        {
            return objTheLoai.GetRows(topnumber);
        }
        public TheLoaiSachDTO GetByMaTheLoai(string matheloai)
        {
            return objTheLoai.GetRow(matheloai);
        }
    }
}

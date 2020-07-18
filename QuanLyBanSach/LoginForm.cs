using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Security.Cryptography;
using QuanLyBanSach.BLL;

namespace QuanLyBanSach
{
    public partial class LoginForm : Form
    {
        public LoginForm()
        {
            InitializeComponent();
        }

        private void BT_Login_Click(object sender, EventArgs e)
        {
            var manv = TB_TenDangNhap.Text;
            var mk = CalculateMD5Hash(TB_MatKhau.Text);
            NhanVienBus nvbus = new NhanVienBus();
            if (nvbus.KiemTraTaiKhoan(manv, mk))
            {
                MessageBox.Show("Đã đăng nhập thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                MainForm main = new MainForm();
                main.Show();
                this.Hide();
              
            }
            else
                MessageBox.Show("Vui lòng kiểm tra lại mã nhân viên và mật khẩu", "Không thể đăng nhập được", MessageBoxButtons.OK, MessageBoxIcon.Error);
        }
        public static string CalculateMD5Hash(string input)
        {
            MD5 md5 = MD5.Create();
            byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(input);
            byte[] hash = md5.ComputeHash(inputBytes);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < hash.Length; i++)
            {
                sb.Append(hash[i].ToString("X2"));
            }
            return sb.ToString();
        }

        private void LoginForm_Load(object sender, EventArgs e)
        {

        }
    }
}

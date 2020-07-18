using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyBanSach
{
    public partial class KhachHang : Form
    {
        public KhachHang()
        {
            InitializeComponent();
        }

        private void BT_Luu_Click(object sender, EventArgs e)
        {
            DialogResult = DialogResult.OK;
        }

        private void BT_Huy_Click(object sender, EventArgs e)
        {
            DialogResult = DialogResult.Cancel;
        }

        private void TB_SDT_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void KhachHang_Load(object sender, EventArgs e)
        {

        }
    }
}

namespace QuanLyBanSach
{
    partial class LoginForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.panel1 = new System.Windows.Forms.Panel();
            this.BookstoreName = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.TB_MatKhau = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.TB_TenDangNhap = new System.Windows.Forms.TextBox();
            this.BT_Login = new System.Windows.Forms.Button();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(1)))), ((int)(((byte)(202)))), ((int)(((byte)(254)))));
            this.panel1.Controls.Add(this.BookstoreName);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(435, 62);
            this.panel1.TabIndex = 8;
            // 
            // BookstoreName
            // 
            this.BookstoreName.AutoSize = true;
            this.BookstoreName.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.BookstoreName.ForeColor = System.Drawing.Color.White;
            this.BookstoreName.Location = new System.Drawing.Point(137, 18);
            this.BookstoreName.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.BookstoreName.Name = "BookstoreName";
            this.BookstoreName.Size = new System.Drawing.Size(132, 29);
            this.BookstoreName.TabIndex = 0;
            this.BookstoreName.Text = "Bookstore";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Segoe UI", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.White;
            this.label2.Location = new System.Drawing.Point(25, 269);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(91, 23);
            this.label2.TabIndex = 13;
            this.label2.Text = "Mật khẩu:";
            // 
            // TB_MatKhau
            // 
            this.TB_MatKhau.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.TB_MatKhau.Location = new System.Drawing.Point(29, 308);
            this.TB_MatKhau.Margin = new System.Windows.Forms.Padding(2);
            this.TB_MatKhau.Name = "TB_MatKhau";
            this.TB_MatKhau.PasswordChar = '●';
            this.TB_MatKhau.Size = new System.Drawing.Size(336, 34);
            this.TB_MatKhau.TabIndex = 12;
            this.TB_MatKhau.Text = "abc123";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Segoe UI", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.White;
            this.label1.Location = new System.Drawing.Point(25, 169);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(122, 23);
            this.label1.TabIndex = 11;
            this.label1.Text = "Mã nhân viên:";
            // 
            // TB_TenDangNhap
            // 
            this.TB_TenDangNhap.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.TB_TenDangNhap.Location = new System.Drawing.Point(29, 206);
            this.TB_TenDangNhap.Margin = new System.Windows.Forms.Padding(2);
            this.TB_TenDangNhap.Name = "TB_TenDangNhap";
            this.TB_TenDangNhap.Size = new System.Drawing.Size(336, 34);
            this.TB_TenDangNhap.TabIndex = 10;
            this.TB_TenDangNhap.Text = "000001";
            // 
            // BT_Login
            // 
            this.BT_Login.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(1)))), ((int)(((byte)(202)))), ((int)(((byte)(254)))));
            this.BT_Login.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(1)))), ((int)(((byte)(202)))), ((int)(((byte)(254)))));
            this.BT_Login.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BT_Login.ForeColor = System.Drawing.Color.White;
            this.BT_Login.Location = new System.Drawing.Point(142, 385);
            this.BT_Login.Margin = new System.Windows.Forms.Padding(2);
            this.BT_Login.Name = "BT_Login";
            this.BT_Login.Size = new System.Drawing.Size(120, 44);
            this.BT_Login.TabIndex = 9;
            this.BT_Login.Text = "Đăng nhập";
            this.BT_Login.UseVisualStyleBackColor = false;
            this.BT_Login.Click += new System.EventHandler(this.BT_Login_Click);
            // 
            // LoginForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.HotTrack;
            this.ClientSize = new System.Drawing.Size(435, 585);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.TB_MatKhau);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.TB_TenDangNhap);
            this.Controls.Add(this.BT_Login);
            this.Name = "LoginForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Login";
            this.Load += new System.EventHandler(this.LoginForm_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label BookstoreName;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox TB_MatKhau;
        private System.Windows.Forms.Label label1;
        public System.Windows.Forms.TextBox TB_TenDangNhap;
        private System.Windows.Forms.Button BT_Login;
    }
}


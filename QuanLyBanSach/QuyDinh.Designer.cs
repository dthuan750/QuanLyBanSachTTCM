namespace QuanLyBanSach
{
    partial class QuyDinh
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
            this.QD_BTN_Luu = new System.Windows.Forms.Button();
            this.QD_BTN_ChinhSua = new System.Windows.Forms.Button();
            this.groupBox6 = new System.Windows.Forms.GroupBox();
            this.QD_TB_ToiThieu = new System.Windows.Forms.TextBox();
            this.QD_TB_TienNo = new System.Windows.Forms.TextBox();
            this.label33 = new System.Windows.Forms.Label();
            this.label28 = new System.Windows.Forms.Label();
            this.groupBox7 = new System.Windows.Forms.GroupBox();
            this.QD_CKB = new System.Windows.Forms.CheckBox();
            this.groupBox5 = new System.Windows.Forms.GroupBox();
            this.QD_TB_Ton = new System.Windows.Forms.TextBox();
            this.QD_TB_Nhap = new System.Windows.Forms.TextBox();
            this.label21 = new System.Windows.Forms.Label();
            this.label20 = new System.Windows.Forms.Label();
            this.groupBox6.SuspendLayout();
            this.groupBox7.SuspendLayout();
            this.groupBox5.SuspendLayout();
            this.SuspendLayout();
            // 
            // QD_BTN_Luu
            // 
            this.QD_BTN_Luu.Enabled = false;
            this.QD_BTN_Luu.Location = new System.Drawing.Point(381, 418);
            this.QD_BTN_Luu.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.QD_BTN_Luu.Name = "QD_BTN_Luu";
            this.QD_BTN_Luu.Size = new System.Drawing.Size(92, 32);
            this.QD_BTN_Luu.TabIndex = 18;
            this.QD_BTN_Luu.Text = "Lưu";
            this.QD_BTN_Luu.UseVisualStyleBackColor = true;
            this.QD_BTN_Luu.Click += new System.EventHandler(this.QD_BTN_Luu_Click);
            // 
            // QD_BTN_ChinhSua
            // 
            this.QD_BTN_ChinhSua.Location = new System.Drawing.Point(277, 418);
            this.QD_BTN_ChinhSua.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.QD_BTN_ChinhSua.Name = "QD_BTN_ChinhSua";
            this.QD_BTN_ChinhSua.Size = new System.Drawing.Size(99, 32);
            this.QD_BTN_ChinhSua.TabIndex = 17;
            this.QD_BTN_ChinhSua.Text = "Chỉnh sửa";
            this.QD_BTN_ChinhSua.UseVisualStyleBackColor = true;
            this.QD_BTN_ChinhSua.Click += new System.EventHandler(this.QD_BTN_ChinhSua_Click);
            // 
            // groupBox6
            // 
            this.groupBox6.Controls.Add(this.QD_TB_ToiThieu);
            this.groupBox6.Controls.Add(this.QD_TB_TienNo);
            this.groupBox6.Controls.Add(this.label33);
            this.groupBox6.Controls.Add(this.label28);
            this.groupBox6.Location = new System.Drawing.Point(12, 148);
            this.groupBox6.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.groupBox6.Name = "groupBox6";
            this.groupBox6.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.groupBox6.Size = new System.Drawing.Size(461, 114);
            this.groupBox6.TabIndex = 15;
            this.groupBox6.TabStop = false;
            this.groupBox6.Text = "Quy định 2";
            // 
            // QD_TB_ToiThieu
            // 
            this.QD_TB_ToiThieu.Enabled = false;
            this.QD_TB_ToiThieu.Location = new System.Drawing.Point(300, 62);
            this.QD_TB_ToiThieu.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.QD_TB_ToiThieu.Name = "QD_TB_ToiThieu";
            this.QD_TB_ToiThieu.Size = new System.Drawing.Size(107, 22);
            this.QD_TB_ToiThieu.TabIndex = 4;
            this.QD_TB_ToiThieu.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // QD_TB_TienNo
            // 
            this.QD_TB_TienNo.Enabled = false;
            this.QD_TB_TienNo.Location = new System.Drawing.Point(300, 22);
            this.QD_TB_TienNo.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.QD_TB_TienNo.Name = "QD_TB_TienNo";
            this.QD_TB_TienNo.Size = new System.Drawing.Size(107, 22);
            this.QD_TB_TienNo.TabIndex = 3;
            this.QD_TB_TienNo.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label33
            // 
            this.label33.AutoSize = true;
            this.label33.Location = new System.Drawing.Point(17, 69);
            this.label33.Name = "label33";
            this.label33.Size = new System.Drawing.Size(197, 17);
            this.label33.TabIndex = 2;
            this.label33.Text = "Số lượng tồn tối thiểu sau bán";
            // 
            // label28
            // 
            this.label28.AutoSize = true;
            this.label28.Location = new System.Drawing.Point(17, 32);
            this.label28.Name = "label28";
            this.label28.Size = new System.Drawing.Size(174, 17);
            this.label28.TabIndex = 1;
            this.label28.Text = "Số tiền nợ cho phép tối đa";
            // 
            // groupBox7
            // 
            this.groupBox7.Controls.Add(this.QD_CKB);
            this.groupBox7.Location = new System.Drawing.Point(12, 301);
            this.groupBox7.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.groupBox7.Name = "groupBox7";
            this.groupBox7.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.groupBox7.Size = new System.Drawing.Size(461, 103);
            this.groupBox7.TabIndex = 16;
            this.groupBox7.TabStop = false;
            this.groupBox7.Text = "Quy định 3";
            // 
            // QD_CKB
            // 
            this.QD_CKB.AutoSize = true;
            this.QD_CKB.Enabled = false;
            this.QD_CKB.Location = new System.Drawing.Point(76, 53);
            this.QD_CKB.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.QD_CKB.Name = "QD_CKB";
            this.QD_CKB.Size = new System.Drawing.Size(337, 21);
            this.QD_CKB.TabIndex = 0;
            this.QD_CKB.Text = "Số tiền thu không được phép vượt quá số tiền nợ";
            this.QD_CKB.UseVisualStyleBackColor = true;
            // 
            // groupBox5
            // 
            this.groupBox5.Controls.Add(this.QD_TB_Ton);
            this.groupBox5.Controls.Add(this.QD_TB_Nhap);
            this.groupBox5.Controls.Add(this.label21);
            this.groupBox5.Controls.Add(this.label20);
            this.groupBox5.Location = new System.Drawing.Point(12, 11);
            this.groupBox5.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.groupBox5.Name = "groupBox5";
            this.groupBox5.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.groupBox5.Size = new System.Drawing.Size(461, 111);
            this.groupBox5.TabIndex = 14;
            this.groupBox5.TabStop = false;
            this.groupBox5.Text = "Quy định 1";
            // 
            // QD_TB_Ton
            // 
            this.QD_TB_Ton.Enabled = false;
            this.QD_TB_Ton.Location = new System.Drawing.Point(300, 73);
            this.QD_TB_Ton.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.QD_TB_Ton.Name = "QD_TB_Ton";
            this.QD_TB_Ton.Size = new System.Drawing.Size(107, 22);
            this.QD_TB_Ton.TabIndex = 3;
            this.QD_TB_Ton.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // QD_TB_Nhap
            // 
            this.QD_TB_Nhap.Enabled = false;
            this.QD_TB_Nhap.Location = new System.Drawing.Point(300, 26);
            this.QD_TB_Nhap.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.QD_TB_Nhap.Name = "QD_TB_Nhap";
            this.QD_TB_Nhap.Size = new System.Drawing.Size(107, 22);
            this.QD_TB_Nhap.TabIndex = 2;
            this.QD_TB_Nhap.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label21
            // 
            this.label21.AutoSize = true;
            this.label21.Location = new System.Drawing.Point(17, 80);
            this.label21.Name = "label21";
            this.label21.Size = new System.Drawing.Size(226, 17);
            this.label21.TabIndex = 1;
            this.label21.Text = "Số lượng tồn tối đa cho phép nhập";
            // 
            // label20
            // 
            this.label20.AutoSize = true;
            this.label20.Location = new System.Drawing.Point(17, 32);
            this.label20.Name = "label20";
            this.label20.Size = new System.Drawing.Size(154, 17);
            this.label20.TabIndex = 0;
            this.label20.Text = "Số lượng nhập tối thiểu";
            // 
            // QuyDinh
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(484, 462);
            this.Controls.Add(this.QD_BTN_Luu);
            this.Controls.Add(this.QD_BTN_ChinhSua);
            this.Controls.Add(this.groupBox6);
            this.Controls.Add(this.groupBox7);
            this.Controls.Add(this.groupBox5);
            this.Name = "QuyDinh";
            this.Text = "QuyDinh";
            this.Load += new System.EventHandler(this.QuyDinh_Load);
            this.groupBox6.ResumeLayout(false);
            this.groupBox6.PerformLayout();
            this.groupBox7.ResumeLayout(false);
            this.groupBox7.PerformLayout();
            this.groupBox5.ResumeLayout(false);
            this.groupBox5.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        public System.Windows.Forms.Button QD_BTN_Luu;
        public System.Windows.Forms.Button QD_BTN_ChinhSua;
        private System.Windows.Forms.GroupBox groupBox6;
        public System.Windows.Forms.TextBox QD_TB_ToiThieu;
        public System.Windows.Forms.TextBox QD_TB_TienNo;
        private System.Windows.Forms.Label label33;
        private System.Windows.Forms.Label label28;
        private System.Windows.Forms.GroupBox groupBox7;
        public System.Windows.Forms.CheckBox QD_CKB;
        private System.Windows.Forms.GroupBox groupBox5;
        public System.Windows.Forms.TextBox QD_TB_Ton;
        public System.Windows.Forms.TextBox QD_TB_Nhap;
        private System.Windows.Forms.Label label21;
        private System.Windows.Forms.Label label20;
    }
}
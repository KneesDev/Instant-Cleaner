using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MaterialSkin;
using MaterialSkin.Controls;
using System.IO;
using System.Diagnostics;

namespace Instant_Cleaner
{
    public partial class frmControl : MaterialForm
    {
        public frmControl()
        {
            InitializeComponent();

            // Create a material theme manager and add the form to manage (this)
            MaterialSkinManager materialSkinManager = MaterialSkinManager.Instance;
            materialSkinManager.AddFormToManage(this);
            materialSkinManager.Theme = MaterialSkinManager.Themes.LIGHT;

            // Configure color schema
            materialSkinManager.ColorScheme = new ColorScheme(
                Primary.Red400, Primary.Red500,
                Primary.Red500, Accent.Pink200,
                TextShade.WHITE
            );
        }

        private void frmControl_Load(object sender, EventArgs e)
        {
            materialLabel3.Visible = false;
            materialLabel4.Visible = false;
            materialButton5.Visible = false;
        }

        private void materialButton1_Click(object sender, EventArgs e)
        {
            materialButton1.Visible = false;
            materialButton2.Visible = false;
            materialButton3.Visible = false;
            materialButton4.Visible = false;
            materialLabel1.Visible = false;
            materialLabel3.Visible = true;
            materialLabel4.Visible = true;
            materialButton5.Visible = true;
            System.Diagnostics.Process.Start(@"c:\instantcleaner\normal.bat").WaitForExit();
            materialButton1.Visible = true;
            materialButton2.Visible = true;
            materialButton3.Visible = true;
            materialButton4.Visible = true;
            materialLabel1.Visible = true;
            materialLabel3.Visible = false;
            materialLabel4.Visible = false;
            materialButton5.Visible = false;
        }

        private void materialButton2_Click(object sender, EventArgs e)
        {
            materialButton1.Visible = false;
            materialButton2.Visible = false;
            materialButton3.Visible = false;
            materialButton4.Visible = false;
            materialLabel1.Visible = false;
            materialLabel3.Visible = true;
            materialLabel4.Visible = true;
            materialButton5.Visible = true;
            System.Diagnostics.Process.Start(@"c:\instantcleaner\fast.bat").WaitForExit();
            materialButton1.Visible = true;
            materialButton2.Visible = true;
            materialButton3.Visible = true;
            materialButton4.Visible = true;
            materialLabel1.Visible = true;
            materialLabel3.Visible = false;
            materialLabel4.Visible = false;
            materialButton5.Visible = false;
        }

        private void materialButton3_Click(object sender, EventArgs e)
        {
            materialButton1.Visible = false;
            materialButton2.Visible = false;
            materialButton3.Visible = false;
            materialButton4.Visible = false;
            materialLabel1.Visible = false;
            materialLabel3.Visible = true;
            materialLabel4.Visible = true;
            materialButton5.Visible = true;
            System.Diagnostics.Process.Start(@"c:\instantcleaner\exp.bat").WaitForExit();
            materialButton1.Visible = true;
            materialButton2.Visible = true;
            materialButton3.Visible = true;
            materialButton4.Visible = true;
            materialLabel1.Visible = true;
            materialLabel3.Visible = false;
            materialLabel4.Visible = false;
            materialButton5.Visible = false;
        }

        private void materialButton4_Click(object sender, EventArgs e)
        {
            materialButton1.Visible = false;
            materialButton2.Visible = false;
            materialButton3.Visible = false;
            materialButton4.Visible = false;
            materialLabel1.Visible = false;
            materialLabel3.Visible = true;
            materialLabel4.Visible = true;
            materialButton5.Visible = true;
            System.Diagnostics.Process.Start(@"c:\instantcleaner\min.bat").WaitForExit();
            materialButton1.Visible = true;
            materialButton2.Visible = true;
            materialButton3.Visible = true;
            materialButton4.Visible = true;
            materialLabel1.Visible = true;
            materialLabel3.Visible = false;
            materialLabel4.Visible = false;
            materialButton5.Visible = false;
        }

        private void materialButton5_Click(object sender, EventArgs e)
        {
            foreach (Process p in Process.GetProcesses())
            {
                if (p.ProcessName == "cmd")
                {
                    p.Kill();
                }
            }
            materialButton1.Visible = true;
            materialButton2.Visible = true;
            materialButton3.Visible = true;
            materialButton4.Visible = true;
            materialLabel1.Visible = true;
            materialLabel3.Visible = false;
            materialLabel4.Visible = false;
            materialButton5.Visible = false;
        }
    }
}

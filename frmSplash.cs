using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Instant_Cleaner
{
    public partial class frmSplash : Form
    {
        public frmSplash()
        {
            InitializeComponent();
        }

        private void frmSplash_Load(object sender, EventArgs e)
        {

        }

        private void spl_Tick(object sender, EventArgs e)
        {
            Form frmControl = new frmControl();
            frmControl.Show();
            this.Hide();
            spl.Stop();
        }
    }
}

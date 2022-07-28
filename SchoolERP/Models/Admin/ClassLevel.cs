using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SchoolERP.Models.Admin
{
    public class ClassLevel
    {
        public int LevelID { get; set; }
        public string Levelname { get; set; }
        public int SectionID { get; set; }
        public string Section { get; set; }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SchoolERP.Models.Admin
{
    public class Subject
    {
        public int SubjectID { get; set; }
        public string Subjectname { get; set; }
        public int SectionID { get; set; }
        public string SectionName { get; set; }
    }
}
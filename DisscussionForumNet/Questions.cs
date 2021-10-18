using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace DisscussionForumNet
{
    public class Questions
    {
        [Key]
        public int QId { get; set; }
        public string QTitle { get; set; }
        public string QDescr { get; set; }
        public string ImagePath { get; set; }
        [NotMapped]
        public HttpPostedFile ImageFile { get; set; }
    }
}
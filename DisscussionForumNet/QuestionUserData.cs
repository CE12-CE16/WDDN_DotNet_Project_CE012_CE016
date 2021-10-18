using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace DisscussionForumNet
{
    public class QuestionUserData
    {
        [Key]
        public int QUId { get; set; }
        public virtual int CreaterUserId { get; set; }
        [ForeignKey("CreaterUserId")]
        public virtual Users CreaterUsser { get; set; }
        public virtual int QuestionId { get; set; }
        [ForeignKey("QuestionId")]
        public virtual Questions Question { get; set; }
    }
}
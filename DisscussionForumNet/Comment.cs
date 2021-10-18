using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace DisscussionForumNet
{
    public class Comment
    {
        [Key]
        public int CommentId { get; set; }
        public string CommentDescr { get; set; }
        public DateTime CommentedTime { get; set; }
        public virtual int CommentUserId { get; set; }
        [ForeignKey("CommentUserId")]
        public virtual Users CommentUserDatas { get; set; }

    }
}
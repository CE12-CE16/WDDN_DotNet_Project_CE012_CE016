using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.Linq;

namespace DisscussionForumNet
{
    public class DisscussionForumDb : DbContext
    {
        // Your context has been configured to use a 'DisscussionForumDb' connection string from your application's 
        // configuration file (App.config or Web.config). By default, this connection string targets the 
        // 'DisscussionForumNet.DisscussionForumDb' database on your LocalDb instance. 
        // 
        // If you wish to target a different database and/or database provider, modify the 'DisscussionForumDb' 
        // connection string in the application configuration file.
        public DisscussionForumDb()
            : base("name=DisscussionForumDb")
        {
        }

       
        public virtual DbSet<Users> UsersData { get; set; }
        public virtual DbSet<Questions> QuestionsData { get; set; }
        public virtual DbSet<QuestionUserData> QuestionUserDatas { get; set; }
        public virtual DbSet<Comment> CommentData { get; set; }
        public virtual DbSet<CommentQuestion> CommentQuestionData { get; set; }
    }
   
}
namespace DisscussionForumNet.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class QuestionCOmment : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.CommentUserDatas", "CommentId", "dbo.Comments");
            DropForeignKey("dbo.CommentUserDatas", "CommentUserId", "dbo.CommentUserDatas");
            DropIndex("dbo.CommentUserDatas", new[] { "CommentId" });
            DropIndex("dbo.CommentUserDatas", new[] { "CommentUserId" });
            CreateTable(
                "dbo.CommentQuestions",
                c => new
                    {
                        CUId = c.Int(nullable: false, identity: true),
                        CommentId = c.Int(nullable: false),
                        QuestionId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.CUId)
                .ForeignKey("dbo.Comments", t => t.CommentId, cascadeDelete: true)
                .ForeignKey("dbo.Questions", t => t.QuestionId, cascadeDelete: true)
                .Index(t => t.CommentId)
                .Index(t => t.QuestionId);
            
            AddColumn("dbo.Comments", "CommentUserId", c => c.Int(nullable: false));
            CreateIndex("dbo.Comments", "CommentUserId");
            AddForeignKey("dbo.Comments", "CommentUserId", "dbo.Users", "Id", cascadeDelete: true);
            DropTable("dbo.CommentUserDatas");
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.CommentUserDatas",
                c => new
                    {
                        CUId = c.Int(nullable: false, identity: true),
                        CommentId = c.Int(nullable: false),
                        CommentUserId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.CUId);
            
            DropForeignKey("dbo.CommentQuestions", "QuestionId", "dbo.Questions");
            DropForeignKey("dbo.CommentQuestions", "CommentId", "dbo.Comments");
            DropForeignKey("dbo.Comments", "CommentUserId", "dbo.Users");
            DropIndex("dbo.CommentQuestions", new[] { "QuestionId" });
            DropIndex("dbo.CommentQuestions", new[] { "CommentId" });
            DropIndex("dbo.Comments", new[] { "CommentUserId" });
            DropColumn("dbo.Comments", "CommentUserId");
            DropTable("dbo.CommentQuestions");
            CreateIndex("dbo.CommentUserDatas", "CommentUserId");
            CreateIndex("dbo.CommentUserDatas", "CommentId");
            AddForeignKey("dbo.CommentUserDatas", "CommentUserId", "dbo.CommentUserDatas", "CUId");
            AddForeignKey("dbo.CommentUserDatas", "CommentId", "dbo.Comments", "CommentId", cascadeDelete: true);
        }
    }
}

namespace DisscussionForumNet.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AllDatas : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Questions", "UserId", "dbo.Users");
            DropIndex("dbo.Questions", new[] { "UserId" });
            CreateTable(
                "dbo.Comments",
                c => new
                    {
                        CommentId = c.Int(nullable: false, identity: true),
                        CommentDescr = c.String(),
                        CommentedTime = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.CommentId);
            
            CreateTable(
                "dbo.CommentUserDatas",
                c => new
                    {
                        CUId = c.Int(nullable: false, identity: true),
                        CommentId = c.Int(nullable: false),
                        CommentUserId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.CUId)
                .ForeignKey("dbo.Comments", t => t.CommentId, cascadeDelete: true)
                .ForeignKey("dbo.CommentUserDatas", t => t.CommentUserId)
                .Index(t => t.CommentId)
                .Index(t => t.CommentUserId);
            
            CreateTable(
                "dbo.QuestionUserDatas",
                c => new
                    {
                        QUId = c.Int(nullable: false, identity: true),
                        CreaterUserId = c.Int(nullable: false),
                        QuestionId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.QUId)
                .ForeignKey("dbo.Users", t => t.CreaterUserId, cascadeDelete: true)
                .ForeignKey("dbo.Questions", t => t.QuestionId, cascadeDelete: true)
                .Index(t => t.CreaterUserId)
                .Index(t => t.QuestionId);
            
            DropColumn("dbo.Questions", "UserId");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Questions", "UserId", c => c.Int(nullable: false));
            DropForeignKey("dbo.QuestionUserDatas", "QuestionId", "dbo.Questions");
            DropForeignKey("dbo.QuestionUserDatas", "CreaterUserId", "dbo.Users");
            DropForeignKey("dbo.CommentUserDatas", "CommentUserId", "dbo.CommentUserDatas");
            DropForeignKey("dbo.CommentUserDatas", "CommentId", "dbo.Comments");
            DropIndex("dbo.QuestionUserDatas", new[] { "QuestionId" });
            DropIndex("dbo.QuestionUserDatas", new[] { "CreaterUserId" });
            DropIndex("dbo.CommentUserDatas", new[] { "CommentUserId" });
            DropIndex("dbo.CommentUserDatas", new[] { "CommentId" });
            DropTable("dbo.QuestionUserDatas");
            DropTable("dbo.CommentUserDatas");
            DropTable("dbo.Comments");
            CreateIndex("dbo.Questions", "UserId");
            AddForeignKey("dbo.Questions", "UserId", "dbo.Users", "Id", cascadeDelete: true);
        }
    }
}

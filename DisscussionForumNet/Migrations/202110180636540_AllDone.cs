namespace DisscussionForumNet.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AllDone : DbMigration
    {
        public override void Up()
        {
            DropColumn("dbo.Questions", "Likes");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Questions", "Likes", c => c.Int(nullable: false));
        }
    }
}

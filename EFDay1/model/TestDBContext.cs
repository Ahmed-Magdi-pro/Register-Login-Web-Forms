namespace EFDay1.model
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class TestDBContext : DbContext
    {
        public TestDBContext()
            : base("name=TestDBContext")
        {
        }

        public virtual DbSet<department> departments { get; set; }
        public virtual DbSet<instractor> instractors { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<department>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<department>()
                .Property(e => e.loc)
                .IsUnicode(false);

            modelBuilder.Entity<department>()
                .HasMany(e => e.instractors)
                .WithRequired(e => e.department)
                .HasForeignKey(e => e.did)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<instractor>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<instractor>()
                .Property(e => e.emali)
                .IsUnicode(false);

            modelBuilder.Entity<instractor>()
                .Property(e => e.password)
                .IsUnicode(false);

            modelBuilder.Entity<instractor>()
                .Property(e => e.cvFile)
                .IsUnicode(false);

            modelBuilder.Entity<instractor>()
                .Property(e => e.photo)
                .IsUnicode(false);
        }
    }
}

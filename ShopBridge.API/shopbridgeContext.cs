using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace ShopBridge.API
{
    public partial class shopbridgeContext : DbContext
    {
        public shopbridgeContext()
        {
        }

        public shopbridgeContext(DbContextOptions<shopbridgeContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Category> Category { get; set; }
        public virtual DbSet<Items> Items { get; set; }
        public virtual DbSet<Stock> Stock { get; set; }

        //protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        //{
        //    if (!optionsBuilder.IsConfigured)
        //    {

        //        optionsBuilder.UseSqlServer("Data Source=LAPTOP-RAHUL-PR\\NEWSQL2014;Initial Catalog=shopbridge;Persist Security Info=True;User ID=sa;password=score@123;MultipleActiveResultSets=True;Encrypt=False;");
        //    }
        //}

        //protected override void OnModelCreating(ModelBuilder modelBuilder)
        //{
        //    modelBuilder.Entity<Category>(entity =>
        //    {
        //        entity.Property(e => e.CategoryName)
        //            .HasMaxLength(30)
        //            .IsUnicode(false);

        //        entity.Property(e => e.CreatedOn)
        //            .HasColumnType("datetime")
        //            .HasDefaultValueSql("(getdate())");

        //        entity.Property(e => e.IsActive).HasDefaultValueSql("((0))");

        //        entity.Property(e => e.UpdatedOn).HasColumnType("datetime");
        //    });

        //    modelBuilder.Entity<Items>(entity =>
        //    {
        //        entity.Property(e => e.CreatedOn).HasColumnType("datetime");

        //        entity.Property(e => e.ItemCode)
        //            .HasMaxLength(30)
        //            .IsUnicode(false);

        //        entity.Property(e => e.ItemName)
        //            .HasMaxLength(30)
        //            .IsUnicode(false);

        //        entity.Property(e => e.Price).HasColumnType("decimal(18, 2)");

        //        entity.Property(e => e.UpdatedOn).HasColumnType("datetime");
        //    });

        //    modelBuilder.Entity<Stock>(entity =>
        //    {
        //        entity.Property(e => e.CreatedOn)
        //            .HasColumnType("datetime")
        //            .HasDefaultValueSql("(getdate())");

        //        entity.Property(e => e.UpdatedOn).HasColumnType("datetime");
        //    });

        //    OnModelCreatingPartial(modelBuilder);
        //}

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}

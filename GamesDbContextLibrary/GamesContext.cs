using Microsoft.EntityFrameworkCore;
using GameLibrary;
using System.Collections.Generic;

namespace GamesDbContextLibrary
{
    public class GamesContext : DbContext
    {
        public DbSet<Game> Games { get; set; }
        public GamesContext() 
        {}

        public GamesContext(DbContextOptions<GamesContext> options): base(options){}

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured){
                optionsBuilder.UseSqlServer(@"Server=LAPTOP-PL7SGEB9\SQLEXPRESS;Database=MigrationsDb;Integrated Security=SSPI;TrustServerCertificate=True");
            }
            base.OnConfiguring(optionsBuilder); 
        }
    }
}
using Microsoft.EntityFrameworkCore;
using Montessori.Api.Models;

namespace Montessori.Api.Data;

public class MontessoriContext : DbContext
{
    public MontessoriContext(DbContextOptions<MontessoriContext> options) : base(options) { }

    public DbSet<ContactSubmission> ContactSubmissions { get; set; }
    public DbSet<Parent> Parents { get; set; }
}
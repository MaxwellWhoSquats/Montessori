using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Montessori.Api.Data;
using Montessori.Api.Dtos;
using Montessori.Api.Models;

namespace Montessori.Api.Controllers;

[Route("api/[controller]")]
[ApiController]
public class ParentController : ControllerBase
{
    private readonly MontessoriContext _context;

    public ParentController(MontessoriContext context)
    {
        _context = context;
    }

    [Authorize]
    [HttpGet]
    public async Task<IActionResult> GetParents()
    {
        var parents = await _context.Parents.ToListAsync();
        
        return Ok(parents);
    }

    [Authorize]
    [HttpPost]
    public async Task<IActionResult> CreateParent([FromBody] ParentDto parentDto)
    {
        var parent = new Parent
        {
            Name = parentDto.Name,
            Email = parentDto.Email,
            Phone = parentDto.Phone,
            Notes = parentDto.Notes,
            CreatedAt = DateTime.UtcNow,
            UpdatedAt = DateTime.UtcNow
        };

        _context.Parents.Add(parent);
        await _context.SaveChangesAsync();

        return Ok(parent);
    }
}
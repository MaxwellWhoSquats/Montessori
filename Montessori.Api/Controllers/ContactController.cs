using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Montessori.Api.Data;
using Montessori.Api.Dtos;
using Montessori.Api.Models;

namespace Montessori.Api.Controllers;

[Route("api/[controller]")]
[ApiController]
public class ContactController : ControllerBase
{
    private readonly MontessoriContext _context;

    public ContactController(MontessoriContext context)
    {
        _context = context;
    }

    [HttpPost]
    public async Task<IActionResult> SubmitContactForm([FromBody] ContactDto contactDto)
    {
        ContactSubmission submission = new ContactSubmission
        {
            Name = contactDto.Name,
            Email = contactDto.Email,
            Phone = contactDto.Phone,
            Message = contactDto.Message,
            SubmittedAt = DateTime.UtcNow
        };
        _context.ContactSubmissions.Add(submission);
        await _context.SaveChangesAsync();
        
        return Ok();
    }

    [Authorize]
    [HttpGet]
    public async Task<IActionResult> GetContactSubmissions()
    {
        var submissions = await _context.ContactSubmissions.ToListAsync();
        return Ok(submissions);
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ShopBridge.API;
using System.Linq.Dynamic.Core;


namespace ShopBridge.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ItemsController : ControllerBase
    {
        private readonly shopbridgeContext _context;

        public ItemsController(shopbridgeContext context)
        {
            _context = context;
        }

        #region Items

        [HttpPost]
        [Route("GetAllItems")]
        public async Task<ActionResult<IEnumerable<Items>>> GetAllItems()
        {
            try
            {
                var draw = Request.Form["draw"].FirstOrDefault();
                var start = Request.Form["start"].FirstOrDefault();
                var length = Request.Form["length"].FirstOrDefault();
                var sortColumn = Request.Form["columns[" + Request.Form["order[0][column]"].FirstOrDefault() + "][name]"].FirstOrDefault();
                var sortColumnDirection = Request.Form["order[0][dir]"].FirstOrDefault();
                var searchValue = Request.Form["search[value]"].FirstOrDefault();
                int pageSize = length != null ? Convert.ToInt32(length) : 0;
                int skip = start != null ? Convert.ToInt32(start) : 0;
                int recordsTotal = 0;
                var itemData = (from tempItem in _context.Items select tempItem);
                if (!string.IsNullOrEmpty(sortColumn) && !string.IsNullOrEmpty(sortColumnDirection))
                {
                    itemData = itemData.OrderBy(sortColumn + " " + sortColumnDirection);
                }
                if (!string.IsNullOrEmpty(searchValue))
                {
                    itemData = itemData.Where(m => m.ItemCode.Contains(searchValue)
                                                || m.ItemName.Contains(searchValue));
                }
                recordsTotal = itemData.Count();
                var data = itemData.Skip(skip).Take(pageSize).ToList();
                var jsonData = new { draw = draw, recordsFiltered = recordsTotal, recordsTotal = recordsTotal, data = data };
                return Ok(jsonData);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.InnerException.Message);
            }
            //return NotFound(new Items());
        }

        [HttpGet]
        [Route("GetItemById/{id}")]
        public async Task<ActionResult<Items>> GetItemById(int id)
        {
            var item = await _context.Items.FindAsync(id);

            if (item == null)
            {
                return NotFound();
            }

            return item;
        }

        [HttpPut]
        [Route("UpdateItem")]
        public async Task<IActionResult> UpdateItem(int id, [FromBody] Items item)
        {
            if (id != item.Id)
            {
                return BadRequest();
            }

            _context.Entry(item).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
                return Ok("Data Updated Succesfully");

            }
            catch (DbUpdateConcurrencyException ex)
            {
                if (!ItemExists(id))
                {
                    return NotFound();
                }
                else
                {
                    return BadRequest(ex.InnerException.Message);
                }
            }

        }

        [HttpPost]
        [Route("AddItem")]
        //[ValidateAntiForgeryToken]
        public async Task<ActionResult<Items>> AddItem([FromBody] Items item)
        {

            try
            {
                if (ModelState.IsValid)
                {
                    _context.Items.Add(item);
                    var a = await _context.SaveChangesAsync();

                    return Ok("Data Saved Succesfully");
                }
                else
                {
                    return Conflict(ModelState);
                }
            }
            catch (Exception ex)
            {
                return BadRequest(ex.InnerException.Message);
            }

        }

        [HttpDelete]
        [Route("RemoveItem/{id}")]
        public async Task<ActionResult<Items>> RemoveItem(int id)
        {
            try
            {
                var item = await _context.Items.FindAsync(id);
                if (item == null)
                {
                    return NotFound();
                }

                _context.Items.Remove(item);
                await _context.SaveChangesAsync();
                return Ok("Data Deleted Succesfully");

            }
            catch (Exception ex)
            {
                return BadRequest(ex.InnerException.Message);
            }
        }

        private bool ItemExists(int id)
        {
            return _context.Items.Any(e => e.Id == id);
        }
        #endregion
    }
}

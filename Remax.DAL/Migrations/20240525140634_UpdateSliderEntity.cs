using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Remax.DAL.Migrations
{
    /// <inheritdoc />
    public partial class UpdateSliderEntity : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Page",
                table: "Sliders",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Page",
                table: "Sliders");
        }
    }
}

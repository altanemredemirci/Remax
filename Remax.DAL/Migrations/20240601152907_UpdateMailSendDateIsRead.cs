using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Remax.DAL.Migrations
{
    /// <inheritdoc />
    public partial class UpdateMailSendDateIsRead : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<bool>(
                name: "IsRead",
                table: "Mails",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<DateTime>(
                name: "SendDate",
                table: "Mails",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "IsRead",
                table: "Mails");

            migrationBuilder.DropColumn(
                name: "SendDate",
                table: "Mails");
        }
    }
}

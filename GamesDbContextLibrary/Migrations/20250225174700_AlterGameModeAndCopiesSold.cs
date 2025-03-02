using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace GamesDbContextLibrary.Migrations
{
    /// <inheritdoc />
    public partial class AlterGameModeAndCopiesSold : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.Sql("UPDATE Games SET GameMode = 'Singleplayer' WHERE GameMode IS NULL;");
            migrationBuilder.Sql("UPDATE Games SET CopiesSold = 0 WHERE CopiesSold IS NULL;");

            migrationBuilder.AlterColumn<string>(
                name: "GameMode",
                table: "Games",
                nullable: false,
                defaultValue: "Singleplayer");

            migrationBuilder.AlterColumn<int>(
                name: "CopiesSold",
                table: "Games",
                nullable: false,
                defaultValue: 0);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(name: "GameMode", table: "Games");
            migrationBuilder.DropColumn(name: "CopiesSold", table: "Games");
        }
    }
}

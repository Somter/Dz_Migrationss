using System;
using System.Linq;
using GamesDbContextLibrary;
using GameLibrary;

namespace Dz_Migrations
{
    internal class Program
    {
        static void Main()
        {
            try
            {
                using (var db = new GamesContext())
                {
                    if (!db.Games.Any())
                    {
                        var firstG = new Game
                        {
                            Title = "Elden Ring",
                            Publisher = "FromSoftware",
                            Genre = "RPG",
                            ReleaseDate = new DateTime(2022, 2, 25),
                            GameMode = "Singleplayer",
                            CopiesSold = 20000000
                        };
                        var secondG = new Game
                        {
                            Title = "Call of Duty: Warzone",
                            Publisher = "Activision",
                            Genre = "Shooter",
                            ReleaseDate = new DateTime(2020, 3, 10),
                            GameMode = "Multiplayer",
                            CopiesSold = 125000000
                        };
                        var third3 = new Game
                        {
                            Title = "Terraria",
                            Publisher = "Re-Logic",
                            Genre = "Sandbox",
                            ReleaseDate = new DateTime(2011, 5, 16),
                            GameMode = "Singleplayer",
                            CopiesSold = 44000000
                        };

                        db.Games.AddRange(firstG, secondG, third3);
                        db.SaveChanges();
                        Console.WriteLine("Данные добавленны в базу данных!");
                    }
                    else
                    {
                        Console.WriteLine("В базе уже есть жанные.");
                    }
                    var ListG = db.Games.ToList();
                    Console.WriteLine("\nИгры в базе данных:");
                    foreach (var g in ListG)
                    {
                        Console.WriteLine($"Id={g.Id}; Genre={g.Genre}; Title={g.Title}; Publisher={g.Publisher}; ReleaseDate={g.ReleaseDate.ToShortDateString()}");
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Ошибка: {ex.Message}"); 
            }
            Console.WriteLine("\nЕажмите любую клавишу чтобы выйти");
            Console.ReadKey();
        }
    }
}

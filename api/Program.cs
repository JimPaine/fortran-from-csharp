var builder = WebApplication.CreateBuilder(args);

var app = builder.Build();

app.MapGet("addone/{n}", (int n) => Interop.Interop.Add_One(n));

app.Run();

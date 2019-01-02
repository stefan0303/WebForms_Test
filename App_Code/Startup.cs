using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TestForTbi.Startup))]
namespace TestForTbi
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

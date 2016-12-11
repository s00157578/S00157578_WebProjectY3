using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(S00157578_WebProject.Startup))]
namespace S00157578_WebProject
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

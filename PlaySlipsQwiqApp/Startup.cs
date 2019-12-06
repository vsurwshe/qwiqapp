using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PlaySlipsQwiqApp.Startup))]
namespace PlaySlipsQwiqApp
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

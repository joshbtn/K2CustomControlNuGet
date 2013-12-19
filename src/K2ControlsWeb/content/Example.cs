using System.Collections.Generic;
using System.Linq;
using System.Text;
using SourceCode.Forms.Controls.Web.SDK;
using SourceCode.Forms.Controls.Web.SDK.Attributes;

[assembly: WebResource("my.k2.controls.main.js", "text/javascript", PerformSubstitution=true)]
[assembly: WebResource("my.k2.controls.main.css", "text/css", PerformSubstitution = true)]
namespace my.k2.controls
{
	[ControlTypeDefinition("my.k2.controls.ExampleControl.xml")]
	[ClientScript("my.k2.controls.main.js")]
    public class Control : BaseControl
    {
        protected override void CreateChildControls()
        {
            Label label = new Label();
            label.Text = "Hello";
            this.Controls.Add(label);
        }

        protected override void RenderContents(System.Web.UI.HtmlTextWriter writer)
        {
            writer.Write(" <b> World</b>");
        }
    }
}

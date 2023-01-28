using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;
using System.ComponentModel;

namespace RexGlobe
{
    public enum ExportFormat { Pdf, Xls, Xlsx, Rtf, Csv }

    public partial class ToolBarExport1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        Dictionary<ExportFormat, string> itemIcons;
        ExportFormat[] exportItemTypes;
        static readonly object EventItemClick = new object();
        public delegate void ExportItemClickEventHandler(object source, ExportItemClickEventArgs e);

        [TypeConverter(typeof(EnumConverter))]
        public ExportFormat[] ExportItemTypes
        {
            get
            {
                if (exportItemTypes == null)
                    exportItemTypes = Enum.GetValues(typeof(ExportFormat)).Cast<ExportFormat>().ToArray();
                return exportItemTypes;
            }
            set { exportItemTypes = value; }
        }
        public bool IsDataAwareXls { get; set; }
        public bool IsDataAwareXlsx { get; set; }
        public event ExportItemClickEventHandler ItemClick
        {
            add { Events.AddHandler(EventItemClick, value); }
            remove { Events.RemoveHandler(EventItemClick, value); }
        }
        Dictionary<ExportFormat, string> ItemIcons
        {
            get
            {
                if (itemIcons == null)
                {
                    itemIcons = new Dictionary<ExportFormat, string>();
                    FillItemIcons();
                }
                return itemIcons;
            }
        }
        protected void Page_Init(object sender, EventArgs e)
        {
            foreach (var type in ExportItemTypes)
                CreateMenuItem(type);
        }
        void CreateMenuItem(ExportFormat type)
        {
            var item = new DevExpress.Web.MenuItem(string.Empty, type.ToString());
            MenuExportButtons.Items.Add(item);
            if (ItemIcons.ContainsKey(type))
                item.Image.IconID = ItemIcons[type];
            item.ToolTip = GetItemToolTip(type);
        }
        string GetItemToolTip(ExportFormat type)
        {
            var result = "Export to " + type.ToString();
            if ((IsDataAwareXls && type == ExportFormat.Xls) || (IsDataAwareXlsx && type == ExportFormat.Xlsx))
                result += " (DataAware)";
            return result;
        }
        void FillItemIcons()
        {
            ItemIcons[ExportFormat.Pdf] = "export_exporttopdf_32x32";
            ItemIcons[ExportFormat.Xls] = "export_exporttoxls_32x32";
            ItemIcons[ExportFormat.Xlsx] = "export_exporttoxlsx_32x32";
            ItemIcons[ExportFormat.Rtf] = "export_exporttortf_32x32";
            ItemIcons[ExportFormat.Csv] = "export_exporttocsv_32x32";
        }

        protected void MenuExportButtons_ItemClick(object source, MenuItemEventArgs e)
        {
            var handler = (ExportItemClickEventHandler)Events[EventItemClick];
            if (handler != null)
                handler(this, new ExportItemClickEventArgs((ExportFormat)Enum.Parse(typeof(ExportFormat), e.Item.Name)));
        }
    }

    public class ItemTooltips : Collection<ItemTooltip>
    {
        public ItemTooltips()
            : base()
        {
        }
    }
    public class ItemTooltip : CollectionItem
    {
        public ItemTooltip()
        {
        }
        public ItemTooltip(ExportFormat type, string toolTip)
        {
            Type = type;
            ToolTip = toolTip;
        }
        public ExportFormat Type { get; set; }
        public string ToolTip { get; set; }
    }

    public class ExportItemClickEventArgs : EventArgs
    {
        public ExportItemClickEventArgs(ExportFormat type)
        {
            ExportType = type;
        }
        public ExportFormat ExportType { get; set; }
    }
    public class EnumConverter : StringToObjectTypeConverter
    {
        public override object ConvertFrom(ITypeDescriptorContext context, System.Globalization.CultureInfo culture, object value)
        {
            var items = value.ToString().Split(',');
            var result = new ExportFormat[items.Length];
            for (var i = 0; i < items.Length; ++i)
                Enum.TryParse(items[i], out result[i]);
            return result;
        }
    }
}
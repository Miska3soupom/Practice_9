using Spire.Doc;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Documents;
using System.Xml.Linq;

namespace Email
{
    class ConverterRTF
    {
        public static void ToRtf(string html)
        {
            File.WriteAllText("msg.html", html);
            var d = new Document("msg.html", FileFormat.Html);
            d.SaveToFile("msg.rtf", FileFormat.Rtf);
            d.Close();
        }

        public static void ToHtml(TextRange rtf)
        {
            var fs = new FileStream("send.rtf", FileMode.Create);
            rtf.Save(fs, DataFormats.Rtf);
            fs.Close();
            var d = new Document("send.rtf", FileFormat.Rtf);
            d.SaveToFile("send.html", FileFormat.Html);
            d.Close();
        }
    }
}
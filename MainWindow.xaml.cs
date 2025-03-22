using System.Diagnostics;
using System.Diagnostics.Eventing.Reader;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;

namespace WordCounter
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void btnFileDialog_Click(object sender, RoutedEventArgs e)
        {
            Microsoft.Win32.OpenFileDialog fileDialog = new Microsoft.Win32.OpenFileDialog();
            fileDialog.Filter = "txt files (*.txt)|*.txt";
            fileDialog.DefaultExt = ".txt";
           
            if (fileDialog.ShowDialog() == true)
            {
                tbxFileName.Text = fileDialog.FileName;
                Dispatcher.Invoke(() => LoadFileContent(fileDialog.FileName));
            }
        }

        private void LoadFileContent(string FileLocation)
        {
            string allText = File.ReadAllText(FileLocation, Encoding.UTF8);
            tbxDisplay.Text = allText;
            allText = Regex.Replace(allText, @"\s+", " ");
            allText = Regex.Replace(allText, "[^a-zA-Z0-9 -]", "");
            
            string[] words = allText.ToLower().Split(new char[] { ' ' });
            Dictionary<string, int> map = new Dictionary<string, int>();
            for (int i = 0; i < words.Length; i++)
            {
                if (map.ContainsKey(words[i]))
                {
                    map[words[i]]++;
                }
                else
                {
                    map.Add(words[i], 1);
                }
            }
            cbxWordSelect.IsEnabled = true;
            cbxWordSelect.ItemsSource = map;
            cbxWordSelect.DisplayMemberPath = "Key";
            cbxWordSelect.SelectedValuePath = "Value";
        }

        private void cbxWordSelect_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            tbxWordCount.Text = cbxWordSelect.SelectedValue.ToString();
        }
    }
}
using System;
using System.IO;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;
using System.Web.UI;
using System.Windows.Forms;

namespace AsyncAwait_Example
{
    public partial class AsyncExample : Page
    {

        public AsyncExample()
        {
           
        }

        private int CountCharacters()
        {
            int count = 0;
            // Create a StreamReader and point it to the file to read
            using (StreamReader reader = new StreamReader("C:\\Data\\Data.txt"))
            {
                string content = reader.ReadToEnd();
                count = content.Length;
                // Make the program look busy for 5 seconds
                Thread.Sleep(5000);
            }

            return count;
        }

        public async void Button1_Click(object sender, EventArgs e)
        {
            lblCount.Text = "Processing file. Please wait...";
            // Create a task to execute CountCharacters() function
            // CountCharacters() function returns int, so we created Task<int>
            Task<int> task = new Task<int>(CountCharacters);
            task.Start();

            
            // Wait until the long running task completes
            int count = await task;
            lblCount.Text = count.ToString() + " characters in file";
        }
    }
}
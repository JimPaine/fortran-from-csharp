using System;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Host;
using Microsoft.Extensions.Logging;

namespace func
{
    public class function
    {
        [FunctionName("function")]
        public void Run([ServiceBusTrigger("wholenumbers", Connection = "queue")]string n, ILogger log)
        {
            log.LogInformation($"Result of 1 + {n} = {Interop.Interop.Add_One(int.Parse(n))}");
        }
    }
}

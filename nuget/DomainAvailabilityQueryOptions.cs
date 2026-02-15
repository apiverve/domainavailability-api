using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.DomainAvailability
{
    /// <summary>
    /// Query options for the Domain Availability API
    /// </summary>
    public class DomainAvailabilityQueryOptions
    {
        /// <summary>
        /// The domain to check if it is available
        /// </summary>
        [JsonProperty("domain")]
        public string Domain { get; set; }
    }
}

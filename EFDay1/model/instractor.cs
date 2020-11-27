namespace EFDay1.model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("instractor")]
    public partial class instractor
    {
        public int id { get; set; }

        public int did { get; set; }

        [StringLength(50)]
        public string name { get; set; }

        public int? age { get; set; }

        [StringLength(50)]
        public string emali { get; set; }

        [StringLength(50)]
        public string password { get; set; }

        public string cvFile { get; set; }

        public string photo { get; set; }

        public virtual department department { get; set; }
    }
}

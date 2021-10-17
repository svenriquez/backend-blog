using System.Collections.Generic;
using System.Data.Entity;

namespace Model.Model
{
    public partial class DbConnection : DbContext
    {

        private DbConnection(string contextName) : base(contextName)
        {
        }

        public static DbConnection Create()
        {
            return new DbConnection("name=DbConnection");
        }
    }
}

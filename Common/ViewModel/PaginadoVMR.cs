using System.Collections.Generic;

namespace Common.ViewModel
{
    public class PaginadoVMR<T>
    {
        public int total { get; set; }

        public IEnumerable<T> elements { get; set; }

        public PaginadoVMR()
        {
            total = 0;
            elements = new List<T>();
        }
    }
}

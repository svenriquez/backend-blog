using Common.ViewModel;
using Data.Repositories;

namespace Logic
{
    public class PostBLL
    {
        public static PaginadoVMR<PostVMR> GetAll(int page, int itemForPage, string path)
        {
            return PostDAL.GetAll(page, itemForPage, path);
        }
    }
}

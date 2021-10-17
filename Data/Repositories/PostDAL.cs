using Common.ViewModel;
using Model.Model;
using System.Linq;

namespace Data.Repositories
{
    public class PostDAL
    {
        public static PaginadoVMR<PostVMR> GetAll(int page, int itemForPage, string path)
        {
            PaginadoVMR<PostVMR> resp = new PaginadoVMR<PostVMR>();
            using (var db = DbConnection.Create())
            {
                var query = db.Post.Select(p => new PostVMR()
                {
                    id = p.id,
                    titulo = p.titulo,
                    descripcion = p.descripcion,
                    imagen = path + p.imagen
                });

                resp.total = query.Count();
                resp.elements = query
                    .OrderBy(x => x.id)
                    .Skip(page * itemForPage)
                    .Take(itemForPage)
                    .ToList();
            }

            return resp;
        }
    }
}

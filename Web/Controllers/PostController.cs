using Common.ViewModel;
using Logic;
using System;
using System.Net;
using System.Web;
using System.Web.Http;
using System.Web.Http.Cors;
using System.Web.Http.Description;

namespace Web.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class PostController : ApiController
    {
        [ResponseType(typeof(PaginadoVMR<PostVMR>))]
        public IHttpActionResult Get(int page = 0, int itemForPage = 3)
        {
            var respuesta = new PaginadoVMR<PostVMR>();

            try
            {
                var path = new UriBuilder(Request.RequestUri.Scheme, Request.RequestUri.Host, Request.RequestUri.Port) + "api/images/";
                respuesta = PostBLL.GetAll(page, itemForPage, path);          
                return Content(HttpStatusCode.OK, respuesta);
            }
            catch (Exception ex)
            {
                return Content(HttpStatusCode.InternalServerError, respuesta);
            }
        }
    }
}

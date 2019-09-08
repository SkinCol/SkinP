
package Controller;

import Model.Dispositivo;
import ModeloDAO.DispositivoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class DispositivoController extends HttpServlet {

    String listar="WEB-INF/jsp/indexDispositivo.jsp";
    String add="WEB-INF/jsp/agregarDispositivo.jsp";
    String edit="WEB-INF/jsp/editarDispositivo.jsp";
    Dispositivo dis=new Dispositivo();
    DispositivoDAO dao= new DispositivoDAO();
    int IdDispositivo;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DispositivoController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DispositivoController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso="";
        String action=request.getParameter("accion");
        if(action.equalsIgnoreCase("listar")){
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("add")){
            acceso=add;
        }
        else if(action.equalsIgnoreCase("Agregar")){
            String Modelo=request.getParameter("Modelo");
            String Marca=request.getParameter("Marca");
            String Tipo=request.getParameter("Tipo");
            String Imagen=request.getParameter("Imagen");
            dis.setModelo(Modelo);
            dis.setMarca(Marca);
            dis.setTipo(Tipo);
            dis.setImagen(Imagen);
            dao.add(dis);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("Id", request.getParameter("IdDispositivo"));
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){           
            IdDispositivo=Integer.parseInt(request.getParameter("IdDispositivo"));
            String Modelo=request.getParameter("Modelo");
            String Marca=request.getParameter("Marca");
            String Tipo=request.getParameter("Tipo");
            String Imagen=request.getParameter("Imagen");
            dis.setModelo(Modelo);
            dis.setMarca(Marca);
            dis.setTipo(Tipo);
            dis.setImagen(Imagen);
            dao.edit(dis);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("eliminar")){
                IdDispositivo=Integer.parseInt(request.getParameter("IdDispositivo"));
                dis.setIdDispositivo(IdDispositivo);
                dao.eliminar(IdDispositivo);
                acceso=listar;
            }
        RequestDispatcher vista= request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

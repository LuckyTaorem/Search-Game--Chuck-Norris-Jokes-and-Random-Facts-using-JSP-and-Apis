

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class apis
 */
@WebServlet("/apis")
public class apis extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public apis() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "http://localhost:8080";
		String platform = request.getParameter("platform");
		String sort = request.getParameter("sort");
		if(request.getParameter("tag").equals("all")) {
			String tag = "mmorpg.shooter.strategy.racing.sports.social.sandbox.open-world.survival.pvp.pve.pixel.voxel.zombie.turn-based.first-person.third-Person.top-down.tank.space.sailing.side-scroller.superhero.permadeath.card.battle-royale.mmo.mmofps.mmotps.3d.2d.anime.fantasy.sci-fi.fighting.action-rpg.action.military.martial-arts.flight.low-spec.tower-defense.horror.mmorts";
			response.sendRedirect(url+"/restApi/index.jsp?q=filter&tag="+tag+"&platform="+platform+"&sort="+sort);
		}else {
		String[] tags = request.getParameterValues("tag");
		String query="";
		for(int i=0;i<tags.length-1;i++) {
			query+=tags[i]+".";
		}
		query+=tags[tags.length-1];
		response.sendRedirect(url+"/restApi/index.jsp?q=game&tag="+query+"&platform="+platform+"&sort="+sort);
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

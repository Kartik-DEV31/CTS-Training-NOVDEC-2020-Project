package managmentApplication.applicationController;


import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;


public interface RestaurantController {

	ModelAndView getAllRestaurants(Model m);

	ModelAndView addOwner(ModelMap model, HttpServletRequest request);

	ModelAndView addRestaurant(ModelMap model, HttpServletRequest request);

	ModelAndView deleteRestaurant(Model model, HttpServletRequest request);

	ModelAndView updateRestaurantOwnerName(Model model, HttpServletRequest request);

	ModelAndView getRestaurant(Integer ownerId, Model model);

	ModelAndView Authentication(HttpServletRequest request, Model m);

	ModelAndView updateRevenue(Model model, HttpServletRequest request) throws Exception;

	ModelAndView updateEmployeeCount(Model model, HttpServletRequest request) throws Exception;

	ModelAndView findRestaurant(Model model, HttpServletRequest request);

	ModelAndView ownerDashboard(Integer id, Model model, String ownerName, String Exception);

	ModelAndView home();

	ModelAndView redirectToRegisterOwnerJsp();

	ModelAndView redirectToRegisterRestaurantJsp();

}

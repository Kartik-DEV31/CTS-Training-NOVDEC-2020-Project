package managmentApplication.applicationService;

import java.util.List;
import java.util.Optional;

import managmentApplication.applicationModel.RestaurantDetails;
import managmentApplication.applicationModel.SpecificRestaurantDetails;

public interface RestaurantDetailsManagingOperations {

	List<RestaurantDetails> getAllRestaurants() throws Exception;

	void deleteRestaurant(Integer ownerId) throws Exception;

	Optional<RestaurantDetails> getRestaurant(Integer ownerId);

	void addOwner(Integer id, String restaurantOwner, String password) throws Exception;

	void addRestaurant(Integer ownerId, String restaurantName, String foodServed, Integer employeeCount, Double revenue)
			throws Exception;

	void updateRestaurantOwnerName(String newOwnername, String oldOwnerName, Integer ownerId);

	String authenticate(Integer id, String password) throws Exception;

	void updateRevenue(Integer ownerId, String restaurantName, Double updatedRev) throws Exception;

	void updateEmployeeCount(Integer ownerId, String restaurantName, Integer updatedCount) throws Exception;

	Optional<SpecificRestaurantDetails> findRestaurant(Integer ownerId, String restaurantName);

	List<SpecificRestaurantDetails> findAllRestaurantOfOwner(Integer ownerId);

	Integer totalEmployees(Integer ownerId);

}

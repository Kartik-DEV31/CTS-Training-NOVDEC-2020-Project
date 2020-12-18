package managmentApplication.applicationService;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import managmentApplication.RestaurantChainManagmentApplication.RestaurantRepository;
import managmentApplication.RestaurantChainManagmentApplication.SpecificRestaurantRepository;
import managmentApplication.applicationModel.RestaurantDetails;
import managmentApplication.applicationModel.SpecificRestaurantDetails;

@Service
public class RestaurantDetailsManagingOperationsImpl implements RestaurantDetailsManagingOperations {
@Autowired
RestaurantRepository repo;
@Autowired
SpecificRestaurantRepository srepo;	
	
	@Override
	public void addOwner(Integer id,String restaurantOwner,String password) throws Exception {
		RestaurantDetails e = new RestaurantDetails( id,restaurantOwner, password);
		
		List<RestaurantDetails> data = new ArrayList<RestaurantDetails>();
		data.add(e);
	
	
		if (repo.findById(id).isEmpty())repo.saveAll(data);
		else
		{
			throw new Exception("IDALreadyExistException");
		}
		
		
	}

	@Override
	public List<RestaurantDetails> getAllRestaurants() throws Exception {
		
		if(repo.findAll().isEmpty())
			throw new Exception("TableEmptyException");
		
		else
		return repo.findAll() ;
	}

	@Override
	@Transactional
	public void updateRestaurantOwnerName(String NewOwnerName,String OldOwnerName,Integer ownerId) {
		
		repo.updateOwnerName(NewOwnerName,OldOwnerName,ownerId);
		
		
	}

	@Override
	@Transactional
	public void deleteRestaurant(Integer ownerId) throws Exception {
		
		if(repo.findById(ownerId).isEmpty())
			throw new Exception("OwnerNotRegisteredException");
		
		else {
			repo.deleteById(ownerId);
			
			srepo.deleteOwner(ownerId);
		}
		
		
	}

	@Override
	public Optional<RestaurantDetails> getRestaurant(Integer ownerId) {
	
		return repo.findById(ownerId);
		
	}

	@Override
	public void addRestaurant(Integer ownerId, String restaurantName, String foodServed, Integer employeeCount,
			Double revenue) throws Exception {
		SpecificRestaurantDetails se = new SpecificRestaurantDetails(ownerId, restaurantName, foodServed,employeeCount,revenue);
		
		List<SpecificRestaurantDetails> data2 = new ArrayList<SpecificRestaurantDetails>();
		data2.add(se);
	
		if(repo.findById(ownerId).isEmpty())
			throw new Exception("OwnerNotRegisteredException");
		
		else
		srepo.saveAll(data2);
		
		
		
	}

	@Override
	public String authenticate(Integer id, String password) throws Exception {
	
		if(repo.authenticateTheUser(id , password).isEmpty())
			throw new Exception("AuthenticationError");
		else 
			return "Authenticated";
		
	}

	@Override
	@Transactional
	public void updateRevenue(Integer ownerId, String restaurantName, Double updatedRev) throws Exception {
	if(	srepo.updateRevenue(ownerId,restaurantName,updatedRev)==0)
		throw new Exception("BadInformationException");
		
	}

	@Override
	@Transactional
	public void updateEmployeeCount(Integer ownerId, String restaurantName, Integer updatedCount) throws Exception {
	
		if(srepo.updateEmployeeCount(ownerId,restaurantName,updatedCount)==0)
			throw new Exception("BadInformationException");
		
	}

	
	public Optional<SpecificRestaurantDetails> findRestaurant(Integer ownerId, String restaurantName) {
return srepo.findRestaurantByIdandName(ownerId,restaurantName);
	
	}

	@Override
	public List<SpecificRestaurantDetails> findAllRestaurantOfOwner(Integer ownerId) {
		
		
		return srepo.findByOwnerId(ownerId);
	}

	@Override
	public Integer totalEmployees(Integer ownerId) {
		Integer total = 0;
		
	total = srepo.totalEmployees(ownerId);
		
		return total;
	}

}

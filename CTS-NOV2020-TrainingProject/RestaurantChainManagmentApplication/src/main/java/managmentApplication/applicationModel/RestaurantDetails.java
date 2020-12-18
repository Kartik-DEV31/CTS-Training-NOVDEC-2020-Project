package managmentApplication.applicationModel;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "restaurantdetails")
public class RestaurantDetails {

	@Id
	@Column(name = "id")
	private Integer id;

	@Column(name = "username")
	private String restaurantOwner;

	@Column(name = "password")
	private String password;

	public RestaurantDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RestaurantDetails(Integer id, String restaurantOwner, String password) {
		super();
		this.id = id;
		this.restaurantOwner = restaurantOwner;
		this.password = password;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getRestaurantOwner() {
		return restaurantOwner;
	}

	public void setRestaurantOwner(String restaurantOwner) {
		this.restaurantOwner = restaurantOwner;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@OneToMany(targetEntity = SpecificRestaurantDetails.class, mappedBy = "id")
	private List<SpecificRestaurantDetails> specificRestaurantDetails;

	public List<SpecificRestaurantDetails> getSpecificRestaurantDetails() {
		return specificRestaurantDetails;
	}

	public void setSpecificRestaurantDetails(List<SpecificRestaurantDetails> specificRestaurantDetails) {
		this.specificRestaurantDetails = specificRestaurantDetails;
	}

}
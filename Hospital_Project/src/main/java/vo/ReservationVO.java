package vo;

public class ReservationVO {
	private int reservation_id;
	private String customer_name, appointment_datetime, status;
	public int getReservation_id() {
		return reservation_id;
	}
	public void setReservation_id(int reservation_id) {
		this.reservation_id = reservation_id;
	}
	public String getCustomer_name() {
		return customer_name;
	}
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}
	public String getAppointment_datetime() {
		return appointment_datetime;
	}
	public void setAppointment_datetime(String appointment_datetime) {
		this.appointment_datetime = appointment_datetime;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	} 

}

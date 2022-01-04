package hospital.users;

public class Users
{
    private String name;
    private String nic;
    private String tp_no;
    private String address;
    private String age;
    private String gender;
    private String doctor;
    
    public String getDoctor() {
        return this.doctor;
    }
    
    public void setDoctor(final String doctor) {
        this.doctor = doctor;
    }
    
    public String getName() {
        return this.name;
    }
    
    public void setName(final String name) {
        this.name = name;
    }
    
    public String getNic() {
        return this.nic;
    }
    
    public void setNic(final String nic) {
        this.nic = nic;
    }
    
    public String getTp_no() {
        return this.tp_no;
    }
    
    public void setTp_no(final String tp_no) {
        this.tp_no = tp_no;
    }
    
    public String getAddress() {
        return this.address;
    }
    
    public void setAddress(final String address) {
        this.address = address;
    }
    
    public String getAge() {
        return this.age;
    }
    
    public void setAge(final String age) {
        this.age = age;
    }
    
    public String getGender() {
        return this.gender;
    }
    
    public void setGender(final String gender) {
        this.gender = gender;
    }
}
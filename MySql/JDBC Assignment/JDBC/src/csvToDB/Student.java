package csvToDB ;
public class Student {
    private String id ;
    private String name ;
    private String course ;
    private int year ;

    Student(){}
    Student(String id , String name , String course , int year){
        this.id = id ;
        this.name = name;
        this.course = course ;
        this.year = year ;

    }

    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public String getCourse() {
        return course;
    }
    public void setCourse(String course) {
        this.course = course;
    }

    public int getYear() {
        return year;
    }
    public void setYear(int year) {
        this.year = year;
    }

    @Override
    public String toString() {
        return "id='" + id  +
                " name='" + name  +
                "course='" + course  +
                " year=" + year ;
    }
}
package cn.com.siemens.trm.entities;

public class StepMeta {
    private int id_step;
    private int id_transformation;
    private String name;
    private String description;
    private int id_step_type;
    private int distribute;
    private int copies;
    private int gui_location_x;
    private int gui_location_y;
    private int gui_draw;
    private String copies_string;

    public int getId_step() {
        return id_step;
    }

    public void setId_step(int id_step) {
        this.id_step = id_step;
    }

    public int getId_transformation() {
        return id_transformation;
    }

    public void setId_transformation(int id_transformation) {
        this.id_transformation = id_transformation;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getId_step_type() {
        return id_step_type;
    }

    public void setId_step_type(int id_step_type) {
        this.id_step_type = id_step_type;
    }

    public int getDistribute() {
        return distribute;
    }

    public void setDistribute(int distribute) {
        this.distribute = distribute;
    }

    public int getCopies() {
        return copies;
    }

    public void setCopies(int copies) {
        this.copies = copies;
    }

    public int getGui_location_x() {
        return gui_location_x;
    }

    public void setGui_location_x(int gui_location_x) {
        this.gui_location_x = gui_location_x;
    }

    public int getGui_location_y() {
        return gui_location_y;
    }

    public void setGui_location_y(int gui_location_y) {
        this.gui_location_y = gui_location_y;
    }

    public int getGui_draw() {
        return gui_draw;
    }

    public void setGui_draw(int gui_draw) {
        this.gui_draw = gui_draw;
    }

    public String getCopies_string() {
        return copies_string;
    }

    public void setCopies_string(String copies_string) {
        this.copies_string = copies_string;
    }
}

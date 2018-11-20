package cn.com.siemens.trm.entities;

public class JobEntryCopyMeta {
    private int id_jobentry_copy;
    private int id_jobentry;
    private int id_job;
    private int id_jobentry_type;
    private int nr;
    private int gui_location_x;
    private int gui_location_y;
    private int gui_draw;
    private int parallel;

    public int getId_jobentry_copy() {
        return id_jobentry_copy;
    }

    public void setId_jobentry_copy(int id_jobentry_copy) {
        this.id_jobentry_copy = id_jobentry_copy;
    }

    public int getId_jobentry() {
        return id_jobentry;
    }

    public void setId_jobentry(int id_jobentry) {
        this.id_jobentry = id_jobentry;
    }

    public int getId_job() {
        return id_job;
    }

    public void setId_job(int id_job) {
        this.id_job = id_job;
    }

    public int getId_jobentry_type() {
        return id_jobentry_type;
    }

    public void setId_jobentry_type(int id_jobentry_type) {
        this.id_jobentry_type = id_jobentry_type;
    }

    public int getNr() {
        return nr;
    }

    public void setNr(int nr) {
        this.nr = nr;
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

    public int getParallel() {
        return parallel;
    }

    public void setParallel(int parallel) {
        this.parallel = parallel;
    }


}

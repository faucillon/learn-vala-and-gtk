public class Test : Gtk.Application {
    public Test(){
        Object(
            application_id: "com.github.faucillon.test",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate (){
        build_window();
    }
    
    private void build_window(){
        var window = new Gtk.ApplicationWindow (this);
        window.title = "This is my Vala test";
        window.border_width = 10;
        window.window_position = Gtk.WindowPosition.CENTER;
        window.set_default_size (350,80);
        window.show_all();
    }

    public static int main (string[] args){
        var test = new Test();
        return test.run(args);
    }
}

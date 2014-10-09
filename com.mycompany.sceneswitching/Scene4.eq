
/*
 * Scene4
 * Created by Eqela Studio 2.0b7.4
 */

public class Scene4 : SEScene
{

	SESprite text;
	SESprite text1;
	SESprite scene4;

	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
			add_sprite_for_color(Color.instance("red"), get_scene_width(), get_scene_height());

			rsc.prepare_image("3", "3", get_scene_width()*0.5,get_scene_height()*0.65);
			rsc.prepare_font("myfont", "arial  color=black", 80);
			
			text1 = add_sprite_for_text("Home", "myfont");
		    scene4 = add_sprite_for_image(SEImage.for_resource("3"));
			text = add_sprite_for_text("Rengar", "myfont");

			text1.move(100,600);
		    scene4.move(get_scene_width()*0.5,0);
			text.move(100,100);
	}
	
	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
		
		if(pi.is_inside(0,600,0.75*get_scene_width(),0.75*get_scene_height())) {
			switch_scene(new MainScene());
		}
	}

	public void cleanup() {
		base.cleanup();
	}
}
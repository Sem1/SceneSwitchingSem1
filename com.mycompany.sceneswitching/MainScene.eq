
/*
 * MainScene
 * Created by Eqela Studio 2.0b7.4
 */

public class MainScene : SEScene
{


	SESprite Sprite1;
	SESprite Sprite2;
	SESprite Sprite3;
	SESprite Sprite4;
	SESprite text;
	double trans = 0;
	
	public void initialize(SEResourceCache rsc) {
	base.initialize(rsc);
	add_sprite_for_color(Color.instance("white"), get_scene_width(), get_scene_height());
	rsc.prepare_image("1", "1", get_scene_width()*0.5,get_scene_height()*0.5);	
	rsc.prepare_image("2", "2", get_scene_width()*0.5,get_scene_height()*0.5);
	rsc.prepare_image("3", "3", get_scene_width()*0.5,get_scene_height()*0.5);
	rsc.prepare_image("4", "4", get_scene_width()*0.5,get_scene_height()*0.5);
	rsc.prepare_font("myfont", "arial color=black", 40);
	
	Sprite1 = add_sprite_for_image(SEImage.for_resource("1"));
	Sprite2 = add_sprite_for_image(SEImage.for_resource("2"));
	Sprite3 = add_sprite_for_image(SEImage.for_resource("3"));
	Sprite4 = add_sprite_for_image(SEImage.for_resource("4"));
	text = add_sprite_for_text("League of Legends", "myfont");
	
	Sprite1.move(0,0);
	Sprite4.move(0,get_scene_height()*0.5);
	Sprite2.move(get_scene_width()*0.5,0);
	Sprite3.move(get_scene_width()*0.5,get_scene_height()*0.5);
	text.move(0,0);
	}

	public void on_pointer_press(SEPointerInfo pi) {

		base.on_pointer_press(pi);
		
		if(pi.is_inside(0,0,0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new Scene1());
		}
		else if(pi.is_inside(0,0.5*get_scene_height(),0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new Scene3());		
		}
		else if(pi.is_inside(0.5*get_scene_width(),0,0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new Scene2());
		}
		else if(pi.is_inside(0.5*get_scene_width(),0.5*get_scene_height(),0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new Scene4());
		}
	}

	public void cleanup() {
		base.cleanup();
	}
}
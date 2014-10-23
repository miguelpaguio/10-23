/*
 * MonsterEntity
 * Created by Eqela Studio 2.0b7.4
 */
public class MonsterEntity : SEEntity
{
    SESprite monsterr;
	SESprite text;
    int w;
    int h;
    int mx;
    int my;
    int pX;
    int py;
    
    public void initialize(SEResourceCache rsc)
    {
        base.initialize(rsc);
        w = get_scene_width();
        h = get_scene_height();
        rsc.prepare_image("mymonsterr","monsterr",0.1*w);
		rsc.prepare_font("myfont", "trebuchet ms bold color=black",80);
        monsterr = add_sprite_for_image(SEImage.for_resource("mymonsterr"));
        monsterr.move(Math.random(0,w), Math.random(0,h));
		text = add_sprite_for_text(" ", "myfont");
    }
    public void tick(TimeVal now, double delta)
    {
        pX = MainScene.x;
        py = MainScene.y;
        mx = monsterr.get_x();
        my = monsterr.get_y();
        base.tick(now,delta);
        monsterr.move(mx+(pX-mx)/Math.random(100,500),my+(py-my)/Math.random(100,500));
       
		 if((mx/pX)==1 && (my/py)==1)
		 {
            text.set_text("GAME OVER!");
            text.move(0.35*w, 0.45*h);
		 }  
	}	 

    public void cleanup()
    {
        base.cleanup();
    }
    
}
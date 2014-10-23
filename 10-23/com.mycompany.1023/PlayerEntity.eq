/*
 * PlayerEntity
 * Created by Eqela Studio 2.0b7.4
 */
public class PlayerEntity : SEEntity
{    
    SESprite black;
    int w;
    int h;
    
    public void initialize(SEResourceCache rsc)
    {
        base.initialize(rsc);
        w = get_scene_width();
        h = get_scene_height();
        rsc.prepare_image("black","black",0.1*w);
        black = add_sprite_for_image(SEImage.for_resource("black"));
        black.move(0.5*w,0.5*h);
    }
    public void tick(TimeVal now, double delta)
    {
        base.tick(now,delta);
        black.move(MainScene.x,MainScene.y);
    }    
    public void cleanup()
    {
        base.cleanup();
    }
}

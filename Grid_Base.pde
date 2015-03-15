GridMaker grid1;
Squares squares;
boolean debug_mode = false;



PVector grid1_pos = new PVector(10,10);
PVector object_size = new PVector(20,30);

void setup()
{
  size(800,600);
  
  
  
  grid1 = new GridMaker(grid1_pos,10,10,object_size);
  squares = new Squares(grid1);
  squares.getSquare(2,0).setState(1);
  
  

}

void draw()
{
  background(0);
  squares.display();
  
}



void mouseClicked()
  {
    LightSquare tls;
    int state = 0;
    GridMaker selected_grid;
    
    if((mouseX > grid1.getGridPos().x && mouseX < grid1.getBounds().x) && (mouseY > grid1.getGridPos().y && mouseY < grid1.getBounds().y))
    {
      
    }
 
    for(int t_col=0;t_col<grid1.getCols();t_col++)
    {
      for(int t_row=0;t_row<grid1.getRows();t_row++)
      {
        tls = squares.getSquare(t_col,t_row);
        
        if((mouseX > tls.getPos().x && mouseX < tls.getPos().x+tls.getSize().x)&&(mouseY > tls.getPos().y && mouseY <tls.getPos().y+tls.getSize().y))
        {
          state = tls.getState();
          if(mouseButton == LEFT)
          {     
            if(tls.getState() < 2)
            {
              state++;
            }
          }
          else if(mouseButton == RIGHT)
          {
            if(tls.getState() > 0)
            {
              state--;
            }
          }
          tls.setState(state);
        }
      }
    }
    
  }

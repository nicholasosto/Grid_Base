class GridMaker
{


  PVector grid_pos;
  PVector grid_size;
  
  int cols, rows;
  
  PVector obj_size;
  
  PVector[][] obj_pos;
  
  GridMaker(PVector grid_pos, int cols, int rows, PVector obj_size)
  {
    this.cols = cols;
    this.rows = rows;
    this.obj_size = obj_size;
    this.grid_pos = grid_pos;
    obj_pos = new PVector[cols][rows];
    
    grid_size = new PVector(0,0);
    grid_size.x = grid_pos.x+(cols*obj_size.x);
    grid_size.y = grid_pos.y+(rows*obj_size.y);
    println("Grid Size:",grid_size);
    setPos();
  }
  
  PVector getSize()
  {
    return(grid_size);
  }
  PVector getGridPos()
  {
    return(grid_pos);
  }
  PVector getBounds()
  {
    PVector bounds = new PVector(grid_pos.x+getSize().x,grid_pos.y+getSize().y);
    return(bounds);
  }
  int getRows()
  {
    return(this.rows);
  }
  int getCols()
  {
    return(this.cols);
  }
  PVector getPos(int j,int i)
  {
    return(obj_pos[j][i]);
  }
  
  PVector getObjectSize()
  {
    return(obj_size);
  }
  
  void setPos()
  {
    float tmp_x,tmp_y;
    
    for(int i=0;i<rows;i++)
    {
      tmp_y = (i*obj_size.y)+grid_pos.y;
      
      for(int j=0;j<cols;j++)
      {
        tmp_x = (j*obj_size.x)+grid_pos.x;
        
        this.obj_pos[j][i] = new PVector(tmp_x,tmp_y);
        
      }
    }
  }


  
}

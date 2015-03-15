class LightSquare
{
  PVector pos;
  PVector size;
  int current_state; //[ 0: inactive, 1: predict, 2:active]
  
  color current_state_color;
  color active_color;
  color active_p_color;
  color inactive_color;
  
  
  
  LightSquare()
  {
    
    this.active_color = color(255,0,0);
    this.active_p_color = color(100,0,0);
    this.inactive_color = color(150,150,150);
    setState(0);
    
    this.size = new PVector(20,20); //Default
    this.pos = new PVector(0,0);
  }
  
  void setPos(PVector pos)
  {
    this.pos = pos;
  }
  PVector getPos()
  {
    return(this.pos);
  }
  
  void setSize(PVector size)
  {
    this.size = size;
  }
  PVector getSize()
  {
    return(this.size);
  }
  
  void setState(int state)
  {
    
    this.current_state = state;
    
    switch(current_state)
    {
      case 0:
        current_state_color = inactive_color;
        break;
      case 1:
        current_state_color = active_p_color;
        break;
      case 2:
        current_state_color = active_color;
        break;
      default:
    }
      
  }
  int getState()
  {
    return(current_state);
  }
  
  void display()
  {
    fill(current_state_color);
    rect(pos.x,pos.y,size.x,size.y);
  }
   
  
}

class Squares
{
  GridMaker grid;
  LightSquare[][] ls;

  Squares(GridMaker grid)
  {
    this.grid = grid;
    this.ls = new LightSquare[grid.getCols()][grid.getRows()];   
    setSquares();
  }
  
  void setSquares()
  {
    for(int i=0;i<ls.length;i++)
    {
      for(int j=0;j<ls[0].length;j++)
      {
        ls[j][i] = new LightSquare();
        ls[j][i].setPos(grid.getPos(j,i));
        ls[j][i].setSize(grid.getObjectSize());
      }
    }
  }
  
  LightSquare getSquare(int col,int row)
  {
    return(ls[col][row]);
  }
  
  void display()
  {
    for(int i=0;i<grid.getRows();i++)
    {
      for(int j=0;j<grid.getCols();j++)
      {

        ls[j][i].display();
      }
    }
  }
  
}
  


class DataBroker {

  Table data;
  ArrayList<Data> Datalist = new ArrayList<Data>();

  DataBroker(Table data) {
    this.data = data;
  }

  public void loadData() {

    for (int i = 1; i < data.getRowCount(); ++i) {
      for (int j = 2; j < data.getColumnCount(); ++j) {

        Datalist.add(new Data(data.getString( i, 1), data.getInt(1, j), data.getInt(i, j) ));
        println("Land: " + data.getString( i, 1) + " År: " + data.getInt(0, j) + " Antal døde: " + data.getInt(i, j));
      }
    }
  }
  public int getData(String ContryName, int Year) {
    int a = 0;
    for (int i = 0; i < Datalist.size(); ++i) {
      if ( ContryName == Datalist.get(i).Name && Year == Datalist.get(i).Year) { 
        a = Datalist.get(i).Deaths;
      }
    }
    return a;
  }
}

DataBroker data;
Table table;
Table table2;

void setup() {
  table = loadTable("csv-deaths-natural-disasters.csv");
  data = new DataBroker(table);

  data.loadData();

  println(data.getData("ALBANIA", table.getInt(1, (int)random(4, table.getColumnCount()))));
}

void draw() {
  //hullabulla
}

import g4p_controls.* ;
Teacher[] teachers;
String[] lines;

int scroll = 0 ;
void setup () {
  createGUI();
  lines = loadStrings ("Teacher_Data.txt");
  window2.setVisible(false);
}

void draw () {

}

void getTeacherData() {
  String[] value = new String [7];
  int num_teachers = lines.length ;
  //PrintWriter pw = createWriter("Teacher_Data.txt");
  for (int i = 0; i < lines.length; i++) {
    String cur_line = lines [i];
    int a = 0;
    String remain = cur_line;
    while (a <= num_teachers) {
      int star_index = cur_line.indexOf("*");
      value [a] = remain.substring(0, star_index);
      remain = cur_line.substring(star_index);
      a ++ ;
    }
    //String name = cur_line [0];
    teachers = new Teacher [num_teachers];
    teachers [i] = new Teacher (value[0], value[1], value[2], value[3], value[4], value[5], value[6]);
  }
}

void addTeacherData (String data) {
  int a = 0;
  String remain = data;
  String[] value = new String[7];
  while (a <= 7) {
    int star_index = data.indexOf("*");
    value [a] = remain.substring(0, star_index);
    remain = data.substring(star_index);
    a ++ ;
  }
  String new_Teacher = value[0] + "*" + value[1] + "*" + value[2] + "*" + value[3] + "8" + value[4] + "*" + value[5] + "*" + value[6];
  lines = append(lines, new_Teacher);
  saveStrings("Teacher_Data.txt", lines);
  getTeacherData();
}

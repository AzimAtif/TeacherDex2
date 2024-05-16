/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code ins ide the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void Main_win(PApplet appc, GWinData data) { //_CODE_:window1:361951:
    appc.background(20);
    appc.textSize(60); 
    appc.text("TeacherDex", 85, 90); 
    appc.fill(100, 255, 255);
} //_CODE_:window1:361951:

public void Index_button(GButton source, GEvent event) { //_CODE_:button1:233498:
  window1.setVisible(false);
  window2.setVisible(true);
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:button1:233498:

public void Duel_button(GButton source, GEvent event) { //_CODE_:button2:227004:
  println("button2 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:button2:227004:

synchronized public void Index_win(PApplet appc, GWinData data) { //_CODE_:window2:604964:
  appc.background(50);
  appc.fill(30); 
  appc.rect(0,0,500,100); 
  appc.textSize(50); 
  appc.fill(125,75,90); 
  appc.text("Gallery", 150, 90); 
} //_CODE_:window2:604964:

public void Home_button(GButton source, GEvent event) { //_CODE_:button3:786171:
  window1.setVisible(true);
  window2.setVisible(false);
  println("button3 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:button3:786171:

public void Teach_img1(GImageButton source, GEvent event) { //_CODE_:imgButton1:822721:
  println("imgButton1 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:imgButton1:822721:

public void imgButton2_click1(GImageButton source, GEvent event) { //_CODE_:imgButton2:850836:
  println("imgButton2 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:imgButton2:850836:

public void Scroller_1(GSlider source, GEvent event) { //_CODE_:slider1:584371:
   imgButton1.moveTo(0, slider1.getValueF());
   imgButton2.moveTo(0, slider1.getValueF()+270);
   button3.moveTo(9, slider1.getValueF()-92);
   label1.moveTo(133,slider1.getValueF());
   label2.moveTo(133,slider1.getValueF()+37);
   label3.moveTo(133,slider1.getValueF()+74);
   label4.moveTo(133,slider1.getValueF()+113);
   label5.moveTo(133,slider1.getValueF()+152);
   label6.moveTo(133,slider1.getValueF()+274);
   label7.moveTo(133,slider1.getValueF()+311);
   label8.moveTo(133,slider1.getValueF()+351);

  println("slider1 - GSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:slider1:584371:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Main");
  window1 = GWindow.getWindow(this, "Window title", 450, 120, 500, 500, JAVA2D);
  window1.noLoop();
  window1.setActionOnClose(G4P.CLOSE_WINDOW);
  window1.addDrawHandler(this, "Main_win");
  button1 = new GButton(window1, 172, 178, 142, 69);
  button1.setText("Index");
  button1.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  button1.addEventHandler(this, "Index_button");
  button2 = new GButton(window1, 171, 309, 140, 72);
  button2.setText("Duel");
  button2.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  button2.addEventHandler(this, "Duel_button");
  window2 = GWindow.getWindow(this, "Window title", 450, 120, 500, 500, JAVA2D);
  window2.noLoop();
  window2.setActionOnClose(G4P.CLOSE_WINDOW);
  window2.addDrawHandler(this, "Index_win");
  button3 = new GButton(window2, 9, 8, 82, 24);
  button3.setText("Home ");
  button3.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  button3.addEventHandler(this, "Home_button");
  imgButton1 = new GImageButton(window2, 0, 100, 127, 202, new String[] { "teacher.jpg", "teacher.jpg", "teacher.jpg" } );
  imgButton1.addEventHandler(this, "Teach_img1");
  label1 = new GLabel(window2, 133, 100, 160, 33);
  label1.setText("Name: Angela Holten");
  label1.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  label1.setOpaque(false);
  label2 = new GLabel(window2, 133, 137, 160, 33);
  label2.setText("Age: 34");
  label2.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  label2.setOpaque(false);
  label3 = new GLabel(window2, 133, 174, 160, 34);
  label3.setText("Teaching: Math & Calculus");
  label3.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  label3.setOpaque(false);
  label4 = new GLabel(window2, 133, 213, 160, 35);
  label4.setText("Power: High Pitched");
  label4.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  label4.setOpaque(false);
  label5 = new GLabel(window2, 133, 252, 288, 81);
  label5.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label5.setText("Description: Cheerful and full of joy. Nice to all of her students and gives free marks to everyone. Her voice his extremely high pitched which can blow out your ear drums. Despite this she is still one of the best teachers because of how many futures of teenagers she has saved.");
  label5.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  label5.setOpaque(true);
  imgButton2 = new GImageButton(window2, 0, 370, 127, 202, new String[] { "teacher.jpg", "teacher.jpg", "teacher.jpg" } );
  imgButton2.addEventHandler(this, "imgButton2_click1");
  label6 = new GLabel(window2, 133, 374, 160, 33);
  label6.setText("Name: Yeast Beast");
  label6.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  label6.setOpaque(false);
  label7 = new GLabel(window2, 133, 411, 160, 33);
  label7.setText("Age: 56");
  label7.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  label7.setOpaque(false);
  slider1 = new GSlider(window2, 516, 100, 400, 100, 15.0);
  slider1.setRotation(PI/2, GControlMode.CORNER);
  slider1.setLimits(100, 100, -600);
  slider1.setShowTicks(true);
  slider1.setEasing(5.0);
  slider1.setNumberFormat(G4P.INTEGER, 0);
  slider1.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  slider1.setOpaque(false);
  slider1.addEventHandler(this, "Scroller_1");
  label8 = new GLabel(window2, 133, 451, 235, 121);
  label8.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label8.setText("Description: She's horrible. Nobody Likes her. She's mean, she takes off marks for no reason and she's old and cranky. Absolute worst teacher to have. Best advice, drop the course and take it next semester, she only teaches semster 1.");
  label8.setOpaque(true);
  window1.loop();
  window2.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow window1;
GButton button1; 
GButton button2; 
GWindow window2;
GButton button3; 
GImageButton imgButton1; 
GLabel label1; 
GLabel label2; 
GLabel label3; 
GLabel label4; 
GLabel label5; 
GImageButton imgButton2; 
GLabel label6; 
GLabel label7; 
GSlider slider1; 
GLabel label8; 

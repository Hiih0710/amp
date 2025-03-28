<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android" 
    xmlns:app="http://schemas.android.com/apk/res-auto" 
    xmlns:tools="http://schemas.android.com/tools" 
    android:layout_width="match_parent" 
    android:layout_height="match_parent" 
    tools:context=".MainActivity"> 
 
    <TextView 
        android:id="@+id/textview" 
        android:layout_width="wrap_content" 
        android:layout_height="wrap_content" 
        android:layout_alignParentTop="true" 
        android:layout_centerHorizontal="true" 
        android:text="Login Example" 
        android:textSize="35dp" /> 
 
    <EditText 
        android:layout_width = "wrap_content" 
        android:layout_height = "wrap_content" 
        android:id = "@+id/editText" 
        android:hint = "Enter Name" 
        android:focusable = "true" 
        android:textColorHighlight = "#ff7eff15" 
 
        android:layout_marginTop = "46dp" 
 
        android:layout_alignParentLeft = "true" 
        android:layout_alignParentStart = "true" 
        android:layout_alignParentRight = "true" 
        android:layout_alignParentEnd = "true" /> 
 
    <EditText 
        android:layout_width="wrap_content" 
        android:layout_height="wrap_content" 
        android:inputType="textPassword" 
        android:ems="10" 
        android:id="@+id/editText2" 
        android:layout_below="@+id/editText" 
        android:layout_alignParentLeft="true" 
        android:layout_alignParentStart="true" 
        android:layout_alignRight="@+id/editText" 
        android:layout_alignEnd="@+id/editText" 
 
        android:hint="Password" /> 
 
    <TextView 
        android:id="@+id/textView2" 
        android:layout_width="wrap_content" 
        android:layout_height="wrap_content" 
        android:layout_below="@+id/editText2" 
        android:layout_alignParentStart="true" 
        android:layout_alignParentLeft="true" 
        android:text="Attempts Remaining" 
        android:textSize="25dp" /> 
 
    <TextView 
        android:id="@+id/textView3" 
        android:layout_width="wrap_content" 
        android:layout_height="wrap_content" 
        android:layout_alignTop="@+id/textView2" 
        android:layout_alignBottom="@+id/textView2" 
        android:layout_alignParentEnd="true" 
        android:layout_alignParentRight="true" 
        android:layout_toEndOf="@+id/textview" 
        android:layout_toRightOf="@+id/textview" 
        android:text="Text" 
        android:textSize="25dp" /> 
 
    <Button 
        android:layout_width="wrap_content" 
        android:layout_height="wrap_content" 
        android:text="login" 
        android:id="@+id/button" 
        android:layout_alignParentBottom="true" 
        android:layout_toLeftOf="@+id/textview" 
        android:layout_toStartOf="@+id/textview" /> 
 
    
 <Button 
        android:layout_width="wrap_content" 
        android:layout_height="wrap_content" 
        android:text="Cancel" 
        android:id="@+id/button2" 
        android:layout_alignParentBottom="true" 
        android:layout_toRightOf="@+id/textview" 
        android:layout_toEndOf="@+id/textview" /> 
 
</RelativeLayout> 



public class MainActivity extends AppCompatActivity { 
 
    Button b1,b2; 
    EditText ed1,ed2; 
 
    TextView tx1; 
    int counter = 3; 
    @Override 
    protected void onCreate(Bundle savedInstanceState) { 
        super.onCreate(savedInstanceState); 
        setContentView(R.layout.activity_main); 
 
 
 
 
        b1 = (Button)findViewById(R.id.button); 
        ed1 = (EditText)findViewById(R.id.editText); 
        ed2 = (EditText)findViewById(R.id.editText2); 
 
        b2 = (Button)findViewById(R.id.button2); 
        tx1 = (TextView)findViewById(R.id.textView3); 
 
 
        b1.setOnClickListener(new View.OnClickListener() { 
            @Override 
            public void onClick(View v) { 
                if(ed1.getText().toString().equals("admin") && 
                        ed2.getText().toString().equals("admin")) { 
                    Toast.makeText(getApplicationContext(), 
                            "Redirecting...",Toast.LENGTH_SHORT).show(); 
                }else{ 
                    Toast.makeText(getApplicationContext(), "Wrong 
Credentials",Toast.LENGTH_SHORT).show(); 
 
                            tx1.setVisibility(View.VISIBLE); 
                    tx1.setBackgroundColor(Color.RED); 
                    counter--; 
                    tx1.setText(Integer.toString(counter)); 
 
                    if (counter == 0) { 
                        b1.setEnabled(false); 
                    } 
                } 
            } 
        }); 
 
        b2.setOnClickListener(new View.OnClickListener() { 
            @Override 
            public void onClick(View v) { 
                finish(); 
            } 
        }); 
 
    } 
} 

 

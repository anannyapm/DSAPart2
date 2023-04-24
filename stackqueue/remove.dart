class Stack{
  int size=100;
  //List<String> stackarray=List.filled(20,"");
  List stackarray=[];
  int top=-1;
  
  push(val){
    if(top>=size){
      print("overflow");
      return;
      
    }
    stackarray.add(val);
    top++;
  }
  
  String pop(){
    if(top<0){
      print("undeflow");
      return "";
    }
    var v=stackarray[top];
    stackarray.removeLast();
    top--;
    return v;
  }
}

void main(){
  String str="caavsabbba";
  Stack st=Stack();
  
  for(int i=0;i<str.length;i++){
    if(str[i]!='a'){
      st.push(str[i]);
    }
  }
 
  
  String out="";
  
  while(st.top>=0){
    out=st.pop()+out;
  }
 
  print(out);
 
}
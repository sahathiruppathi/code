1)
5
20 30 40 50 60 
30
#include<iostream>
using namespace std;
struct node
{
int data;
node * next;
};
node *head,*tail,*newnode,*front,*back;
void createnode(int num)
{
newnode=new node();
newnode->data=num;
newnode->next=nullptr;
if(head==nullptr)
{
head=newnode;
tail=newnode;
}
else
{
tail->next=newnode;
tail=newnode;
}
}
void print()
{
node *ptr=head;
while(ptr!=nullptr)
{
cout<<ptr->data<<" ";
ptr=ptr->next;
}
}
int count=1;
void find(int findNum){
node * temp=head;
node *temp1=head->next;
if(temp->data==findNum)
{
head=head->next;
return;
}
while(temp1!=nullptr)
{
if(temp1->data==findNum)
{
temp->next=temp1->next;
return;
}
temp=temp->next;
temp1=temp1->next;
}
}
int main()
{
int n,num,findNum;cin>>n;
for(int i=1;i<=n;i++)
{
cin>>num;
createnode(num);
}
print();
cout << endl;
cin >> findNum;
find(findNum);
print();
}

2)
5
1 2 3 4 5
#include<iostream>
using namespace std;
struct node{
 int data;
 node * pre;
 node * next;
};
node *head,*tail,*newNode;
void createNode(int n){
 newNode=new node();
 newNode->data=n;
 if(head==nullptr){
 head=newNode;
 tail=newNode;
 }else{
 newNode->pre=tail;
 tail->next=newNode;
 tail=newNode;
 }
}
void display(){
 node *ptr=head;
 while(ptr!=nullptr){
 cout << ptr->data << " ";
 ptr=ptr->next;
 }
}
int main(){
 int n,num;
 cin >> num;
 for(int i=0;i<num;i++){
 cin >> n;
 createNode(n);
 }
 display();
}

3)
7
1 2 3 4 5 6 7
#include<iostream>
using namespace std;
struct node{
 int data;
 node *next;
};
node *head,*tail,*newNode;
void createNode(int n){
 newNode=new node();
 newNode->data=n;
 if(head==nullptr){
 head=newNode;
 tail=newNode;
 }else{
 tail->next=newNode;
 tail=newNode;
 }
 tail->next=head;
}
void display(){
 node *ptr=head;
 do{
 cout << ptr->data << " ";
 ptr=ptr->next;
 }while(ptr!=head);
}
int main(){
 int n,num;
 cin >> num;
 for(int i=0;i<num;i++){
 cin >> n;
 createNode(n);
 }
 display();
}

4)
3 
1 2 3 
4
#include<iostream>
using namespace std;
int n;
class Stack{
 private:
 int arr[100];
 int top;
 public:
 Stack(int n){
 arr[n];
 top = -1;
 }
 
 bool isFull(){
 return (top == n-1);
 }
 
 void push(int num){
 if(isFull()){
 cout << "The stack is Full, So we can't add the element.";
 return;
 }
 arr[++top] = num;
 cout << arr[top] << " Inserted in stack." << endl;
 }
 
};
int main(){
int num;
 cin >> n;
 Stack stack(n);
 for(int i=0;i<=n;i++){
 cin >> num;
 stack.push(num);
 }
}

5)
5 
1 2 3 4 5 
6
#include<iostream>
using namespace std;
int n;
class Stack{
 private:
 int arr[100];
 int top;
 public:
 Stack(int n){
 arr[n];
 top = -1;
 }
 
 bool isFull(){
 return (top == n-1);
 }
 
 void push(int num){
 if(isFull()){
 cout << "The stack is Full, So we can't add the element.";
 return;
 }
 arr[++top] = num;
 cout << arr[top] << " Inserted in stack." << endl;
 }
 
};
int main(){
 int num;
 cin >> n;
 Stack stack(n);
 for(int i=0;i<=n;i++){
 cin >> num;
 stack.push(num);
 }
}

6)
5 
1 2 3 4 5 
3
#include<iostream>
using namespace std;
class node{
public:
int data;
node * next;
};
node *head,*tail,*newNode,*ptr;
void push(int n){
newNode = new node();
newNode->data = n;
if(tail == nullptr){
head = newNode;
tail = newNode;
}else{
newNode->next = head;
head = newNode;
}
}
bool isEmpty(){
return (head == nullptr);
}
void pop(){
if(isEmpty()){
cout << endl << "The Stack is empty, so we can't pop the element.";
return;
}
cout << endl << head->data << " is removed in the stack.";
head = head->next;
}
void display(){
ptr = head;
while(ptr!=nullptr){
cout << ptr->data << " ";
ptr = ptr->next;
}
}
int main(){
int n,num,popCnt;
cin >> n;
for(int i=0;i<n;i++){
cin >> num;
push(num);
}
cout << "The Stack element's are: ";
display();
cin >> popCnt;
for(int i=0;i<popCnt;i++){
pop();
}
cout << endl << "The final stack element's are: ";
display();
}

7)
5 
11 22 33 44 55 
4
#include<iostream>
using namespace std;
class node{
 public:
 int data;
 node * next;
};
node *head,*tail,*newNode,*ptr;
void push(int n){
 newNode = new node();
 newNode->data = n;
 if(tail == nullptr){
 head = newNode;
 tail = newNode;
 }else{
 newNode->next = head;
 head = newNode;
 }
}
bool isEmpty(){
 return (head == nullptr);
}
void pop(){
 if(isEmpty()){
 cout << endl << "The Stack is empty, so we can't pop the element.";
 return;
 }
 cout << endl << head->data << " is removed in the stack.";
 head = head->next;
}
void display(){
 ptr = head;
 while(ptr!=nullptr){
 cout << ptr->data << " ";
 ptr = ptr->next;
 }
}
int main(){
 int n,num,popCnt;
 cin >> n;
 for(int i=0;i<n;i++){
 cin >> num;
 push(num);
 }
 cout << "The Stack element's are: ";
 display();
 cin >> popCnt;
 for(int i=0;i<popCnt;i++){
 pop();
 }
 cout << endl << "The final stack element's are: ";
 display();
}

8)
#include<iostream>
using namespace std;
int n;
char arr[1000];
int peek;
class Stack{
public:
Stack(int n){
arr[n];
peek = -1;
}
bool isFull(){
return (peek == n-1);
}
bool isEmpty(){
return (peek == -1);
}
void push(char c){
if(isFull()){
cout << "The stack is full.";
return;
}
arr[++peek] = c;
}
void pop(){
if(isEmpty()){
cout << "The stack is empty.";
return;
}
arr[peek--];
}
};
int main(){
string a;
getline(cin,a);
n = a.length();
Stack stack(n);
for(int i=0;i<a.length();i++){
if(a[i] == '(' || a[i] == '[' || a[i] == '{' || a[i] == '<'){
stack.push(a[i]);
}
else{
if((arr[peek]=='(' && a[i] == ')') || (arr[peek]=='{' && a[i] == stack.pop();
}
}
}
if(stack.isEmpty()){
cout << "True";
}
else{
cout << "False";
}
}
(or)
#include<iostream>
using namespace std;
char arr[100];
int peek = -1;
class Stack
{
    public:
    void push(char c)
    {
        peek++;
        arr[peek]=c;
    }
    void pop()
    {
        peek--;
    }
    bool isempty()
    {
        return (peek == -1);
    }
};
int main()
{
    string a;
    getline(cin,a);
    Stack stack;
    for(int i=0;i<a.length();i++)
    {
        if(a[i]== '(' || a[i] == '{' || a[i] == '[' || arr[i] == '<')
        {
            stack.push(a[i]);
        }
        else if(a[i] == ')' || a[i] == '}' || a[i] == ']' || a[i] == '>')
        {
            if(arr[peek] == '(' && a[i] == ')')
            stack.pop();
            
            else if(arr[peek] == '{' && a[i] == '}')
            stack.pop();
            
            else if(arr[peek] == '[' && a[i] == ']')
            stack.pop();
            
            else if(arr[peek] == '<' && a[i] == '>')
            stack.pop();
        }
    }
    if(stack.isempty())
    cout<< "True";
    else
    cout<< "False";
}

9)
2 + 3
#include<iostream>
using namespace std;
int val[100];
int op[100];
int p1=-1,p2=-1;
void push1(int num){
 val[++p1]=num;
}
void push2(char o){
 op[++p2]=o;
}
void pop1(){
 --p1;
}
void pop2(){
 --p2;
}
int operation( int v1,int v2,char o){
 if(o=='+')return v1+v2;
 else if(o=='-')return v1-v2;
 else if(o=='*')return v1*v2;
 else if(o=='/')return v1/v2;
 return 0;
}
int perce(char o){
 if(o=='+'||o=='-')return 1;
 else if(o=='*'||o=='/')return 2;
 else return 0;
}
int main(){
 string a;
 getline(cin,a);
 
 for(int i=0;i<a.length();i++){
 if(a[i]=='('){
 push2(a[i]);
 
 }else if(a[i]==')'){
 while(op[p2]!='('){
 char o=op[p2];
 pop2();
 int v2=val[p1];
 pop1();
 int v1=val[p1];
 pop1();
 
 int v= operation(v1,v2,o);
 push1(v);
 }
 pop2();//pop '('
 }else if(a[i]=='+'||a[i]=='-'||a[i]=='*'||a[i]=='/'){
 while(p2>0&&op[p2]!='('&&perce(a[i])<=perce(op[p2])){
 char o=op[p2];
 pop2();
 int v2=val[p1];
 pop1();
 int v1=val[p1];
 pop1();
 
 int v=operation(v1,v2,o);
 push1(v);
 }
 push2(a[i]);
 }else if(isdigit(a[i])){
 int num=a[i]-'0';
 while(isdigit(a[i+1])){
 num=num*10+(a[++i]-'0');
 }
 push1(num);
 }
 }
 while(p2!=-1){
 char o=op[p2];
 pop2();
 int v2=val[p1];
 pop1();
 int v1=val[p1];
 pop1();
 
 int v=operation(v1,v2,o);
 push1(v);
 }
 cout<<"Result: "<<val[p1];
 return 0;
}

10)
5 
doc1 doc2 doc3 doc4 doc5 
3
#include<iostream>
using namespace std;
int n;
int front;
int back;
string arr[100];
class Queue {
public:
Queue(int n) {
string arr[n];
front = -1;
back = -1;
}
bool isFull() {
return (back == n-1);
}
bool isEmpty() {
return (back == -1) || (front > back);
}
void enqueue(string str) {
if (isFull()) {
cout << "Queue is full. Cannot enqueue." << endl;
return;
}
if (front == -1) {
front = 0;
}
arr[++back] = str;
cout << arr[back] << " is inserted in the Queue." << endl;
}
void dequeue() {
if (isEmpty()) {
cout << "Queue is empty. Cannot dequeue." << endl;
return;
}
cout << arr[front++] << " dequeued from the queue." << endl;
}
};
int main() {
string str;
int dequeCnt;
cin >> n;
Queue queue(n);
for (int i = 0; i < n; i++) {
cin >> str;
queue.enqueue(str);
}
cin >> dequeCnt;
for (int i = 0; i < dequeCnt; i++) {
queue.dequeue();
}
cout << "Final Queue elements are: ";
for (int i = front; i <= back; i++) {
cout << arr[i] << " ";
}
}

11)
5
10 20 30 40 50 
2
#include<iostream>
using namespace std;
int n;
int front;
int back;
int arr[100];
class Queue{
 private:
 public:
 Queue(int n){
 int arr[n];
 front = -1;
 back = -1;
 }
 bool isFull(){
 return (back == n-1);
 }
 bool isEmpty(){
 return (back == -1) || (front > back);
 }
 void enqueue(int num){
 if(isFull()){
 cout << "Queue is full. Cannot enqueue." << endl;
 return;
 }
 if(front == -1){
 front = 0;
 }
 arr[++back] = num;
 cout << arr[back] << " is inserted in the Queue." << endl;
 }
 
 void dequeue(){
 if(isEmpty()){
 cout << "Queue is empty. Cannot dequeue." << endl;
 return;
 }
 cout << arr[front++] << " dequeued from the queue." << endl;
 }
};
int main(){
 int num,dequeCnt;
 cin >> n;
 Queue queue(n);
 for(int i=0;i<n;i++){
 cin >> num;
 queue.enqueue(num);
 }
 cin >> dequeCnt;
 for(int i=0;i<dequeCnt;i++){
 queue.dequeue();
 }
 cout << "Finall Queue elements are: ";
 for(int i=front;i<=back;i++){
 cout << arr[i] << " ";
 }
}

12)
6
15 25 35 45 55 65
#include<iostream>
using namespace std;
class node{
 public:
 int data;
 node * next;
};
node *head,*tail,*newNode;
void enqueue(int n){
 newNode = new node();
 newNode->data = n;
 if(head==nullptr){
 head = newNode;
 tail = newNode;
 }else{
 tail->next = newNode;
 tail = newNode;
 }
 cout << tail->data << " is inserted in the Queue." << endl;
}
int main(){
 int n,num;
 cin >> n;
 for(int i=0;i<n;i++){
 cin >> num;
 enqueue(num);
 }
}

13)
3
Hackers 
Source code
The social networker
#include<iostream>
using namespace std;
class Node {
public:
 string movieName;
 Node* next;
};
Node* head = nullptr;
Node* tail = nullptr;
Node* newNode;
void enqueue(string movie) {
 newNode = new Node();
 newNode->movieName = movie;
 newNode->next = nullptr;
 if (head == nullptr) {
 head = newNode;
 tail = newNode;
 } else {
 tail->next = newNode;
 tail = newNode;
 }
 cout << "Reservation for " << newNode->movieName << " has been added to the Queue." << endl;
}
int main() {
 int total_reservations;
 string movie_name; 
 cin >> total_reservations;
 cin.ignore(); // To consume the newline character after total_reservations
 for (int i = 0; i < total_reservations; i++) {
 getline(cin, movie_name);
 enqueue(movie_name);
 }
 return 0;
}
(or)
#include<iostream>
using namespace std;
class Node
{
    public:
    string data;
    Node *next;
};
Node *head, *tail, *newNode;
void enqueue(string a)
{
    newNode=new Node();
    newNode->data=a;
    if(head==NULL)
    {
        head=newNode;
        tail=newNode;
    }
    else
    {
        tail->next=newNode;
        tail=newNode;
    }
    cout<<"Reservation for "<<newNode->data<<" has been added to the Queue."<<endl;
}
int main()
{
    int n;
    string a;
    cin>>n;
    cin.ignore();
    for(int i=0;i<n;i++)
    {
        getline(cin,a);
        enqueue(a);
    }
}

14)
4
10 1
20 2
30 3
40 4
#include<iostream>
using namespace std;
class node{
 public:
 int data;
 int pri;
 node *next;
};
node *head,*tail,*newNode,*ptr,*temp;
class Queue{
 public:
 void enQueue(int num, int priority)
 {
 newNode = new node();
 newNode->data = num;
 newNode->pri = priority;
 if(head == nullptr || head->pri < newNode->pri){
 newNode->next = head;
 head = newNode;
 }else{
 temp = head;
 while(temp->next != nullptr && temp->next->pri > priority ){
 temp = temp->next;
 }
 newNode->next = temp->next;
 temp->next = newNode;
 }
 }
 
 void display(){
 ptr = head;
 while(ptr != nullptr){
 cout << ptr->data << " ";
 ptr = ptr->next;
 }
 }
};
int main(){
 int n,num,priority;
 cin >> n;
 Queue queue;
 for(int i=0;i<n;i++){
 cin >> num;
 cin >> priority;
 queue.enQueue(num,priority);
 }
 queue.display();
}

15)
2 JobA 1 JobB 2 3
#include<iostream>
using namespace std;
struct node{
 string data;
 int pri;
 node *next;
};
node *head,*tail,*newNode,*ptr;
void enqueue(string a, int num){
 newNode = new node();
 newNode->data = a;
 newNode->pri = num;
 if(head == nullptr || head->pri < newNode->pri){
 newNode->next = head;
 head = newNode;
 }else{
 ptr = head;
 while(ptr->next != nullptr && ptr->next->pri > newNode->pri){
 ptr = ptr->next;
 }
 newNode->next = ptr->next;
 ptr->next = newNode;
 }
}
void display(){
 ptr = head;
 while(ptr!=nullptr){
 cout << "Name: " << ptr->data << ", Priority: " << ptr->pri << endl;
 ptr = ptr->next;
 }
}
bool isEmpty(){
 return (head == nullptr);
}
void dequeue(){
 if(isEmpty()){
 cout << "Queue is empty.";
 }else{
 head = head->next;
 }
}
int main(){
 int n,num,n1;
 string a;
 cin >> n;
 cin.ignore();
 for(int i=0;i<n;i++){
 cin >> a;
 cin >> num;
 cin.ignore();
 enqueue(a,num);
 }
 cin >> n1;
 display();
 for(int i=0;i<n1;i++){
 dequeue();
 }
 cout << "Remaining queue element's are: " << endl;
 display();
}

(or)

#include<iostream>
using namespace std;
struct node
{
    string data;
    int pri;
    node *next;
};
node *newNode, *head, *tail, *ptr;
void enqueue(string num,int pri)
{
    newNode=new node();
    newNode->data=num;
    newNode->pri=pri;
    if(head==NULL || head->pri<newNode->pri)
    {
        newNode->next=head;
        head=newNode;
    }
    else
    {
        ptr=head;
        while(ptr->next!=NULL && ptr->next->pri>newNode->pri)
        {
            ptr=ptr->next;
        }
        newNode->next=ptr->next;
        ptr->next=newNode;
    }
}
void dequeue()
{
    head=head->next;
}
void display()
{
    ptr=head;
    while(ptr!=NULL)
    {
        cout<<"Name: "<<ptr->data<<", Priority: "<<ptr->pri<<endl;
        ptr=ptr->next;
    }
}
int main()
{
    int n;
    int pri,del;
    cin>>n;
    string num;
    for(int i=0;i<n;i++)
    {
        cin>>num;
        cin>>pri;
        enqueue(num,pri);
    }
    display();
    cin>>del;
    for(int i=0;i<del;i++)
    {
        dequeue();
    }
    cout<<"Remaining queue element's are: "<<endl;
    display();
}

16)
3 101 Alice Female 102 Bob Male 103 Charlie Male 102
#include<iostream>
using namespace std;
struct node{
 int key;
 string name;
 string gender;
};
node *data;
node *arr[1000];
int n;
class Student {
 public:
 int indexVal(int key){
 return (key % n);
 }
 
 void insert(int key,string name,string gender){
 data = new node();
 data->key=key;
 data->name=name;
 data->gender=gender;
 int index=indexVal(key);
 arr[index]=data;
 }
 
 void search(int key){
 int check=indexVal(key);
 if(arr[check]->key==key){
 cout<<"Student with roll number "<<key<<" found.";
 }
 else{
 cout<<"No student found with roll number "<<key;
 }
 }
};
int main(){
 int key;
 string name,gender;
 Student s1;
 cin>>n;
 for(int i=0;i<n;i++){
 cin>>key>>name>>gender;
 s1.insert(key,name,gender);
 
 }
 cin>>key;
 s1.search(key);
 
}

17)
3 101 Programming 102 Algorithm 103
DataStructure
#include<iostream>
using namespace std;
struct node {
 int key;
 string book;
 
};
node *data;
node *arr[1000];
int n;
class HashingTable {
 public:
int indexVal(int key){
 return(key % 71);
}
void insert(int key,string book){
 data =new node();
 data->key=key;
 data->book =book;
 int index=indexVal(key);
 if(arr[index]==nullptr)
 arr[index]=data;
}
void display(){
 for(int i=0;i<71;i++){
 if(arr[i]!=nullptr){
 cout<<arr[i]->key<<" "<<arr[i]->book;
 cout<<endl;
 }
 
 }
}
};
int main(){
 int key;
 string value;
 cin>>n;
 HashingTable h1;
 for (int i = 0; i < n; i++) {
 cin>>key>>value;
 h1.insert(key,value);
 
 }
 h1.display();
 
}

18)
5 
20 10 30 5 15 
25
#include<iostream>
using namespace std;
struct node{
int data;
node *left;
node *right;
};
node * root;
bool res;
int findNum;
class tree{
public:
void insert(int num){
root = ins(root,num);
}
node * ins(node *root, int num){
if(root == nullptr){
root = new node();
root->data = num;
return root;
}
if(root->data > num){
root->left = ins(root->left,num);
}
else if(root->data < num){
root->right = ins(root->right,num);
}
return root;
}
bool find(node *root){
if(root != nullptr){
find(root->left);
if(root->data == findNum)
{
res = true;
}
find(root->right);
}
return res;
}
};
int main(){
int n,num;
tree tr;
cin >> n;
for(int i=0;i<n;i++){
cin >> num;
tr.insert(num);
}
cin >> findNum;
res = false;
if(tr.find(root)){
cout << "Found";
}else{
cout << "Not Found";
}
}

19)
5 6 0 1 0 2 1 3 1 4 2 4 3 4 0
#include<iostream>
using namespace std;
int qu[100];
int peek = -1, n;
int arr[100][100];
bool array[100];
class Stack {
public:
 bool isEmpty() {
 return (peek == -1);
 }
 bool isFull() {
 return (peek == n - 1);
 }
 void push(int num) {
 if (isFull()) {
 cout << "Queue is full.";
 } else {
 qu[++peek] = num;
 }
 }
 int pop() {
 int a = qu[peek];
 if(isEmpty())
 {
 cout<< "Stack is empty.";
 }
 else
 {
 peek--;
 }
 return a;
 }
};
void bfsTraversal(int startIndex) {
 Stack qu;
 qu.push(startIndex);
 array[startIndex] = true;
 while (!qu.isEmpty()) {
 int currentVertex = qu.pop();
 cout << currentVertex << " ";
 for (int i = n-1; i > 0; i--) {
 if (arr[currentVertex][i] == 1 && !array[i]) {
 array[i] = true;
 qu.push(i);
 }
 }
 }
}
int main() {
 int from, to, edges, startIndex;
 cin >> n >> edges;
 for (int i = 0; i < n; i++) {
 array[i] = false;
 for (int j = 0; j < n; j++) {
 arr[i][j] = 0;
 }
 }
 for (int i = 0; i < edges; i++) {
 cin >> from >> to;
 arr[from][to] = 1;
 arr[to][from] = 1;
 }
 cin >> startIndex;
 cout<<"DFS Traversal:"<<endl;
 bfsTraversal(startIndex);
 return 0;
}

20)
5 6 0 1 0 2 1 3 1 4 2 4 3 4 0
#include <iostream>
class Queue {
private:
 static const int MAX_SIZE = 100;
 int elements[MAX_SIZE];
 int front, rear;
public:
 Queue() : front(-1), rear(-1) {}
 void enqueue(int item) {
 if (rear == MAX_SIZE - 1) {
 std::cout << "Queue is full" << std::endl;
 } else if (rear == -1) {
 front = 0;
 rear = 0;
 elements[rear] = item;
 } else {
 rear = rear + 1;
 elements[rear] = item;
 }
 }
 int dequeue() {
 int item;
 if (front == -1) {
 std::cout << "Queue is empty" << std::endl;
 return -1;
 } else {
 item = elements[front];
 if (front >= rear) {
 front = -1;
 rear = -1;
 } else {
 front++;
 }
 return item;
 }
 }
 bool isEmpty() {
 return front == -1;
 }
};
class Graph {
private:
 int** adjMatrix;
 int vertices;
public:
 Graph(int v) : vertices(v) {
 adjMatrix = new int*[vertices];
 for (int i = 0; i < vertices; ++i) {
 adjMatrix[i] = new int[vertices];
 for (int j = 0; j < vertices; ++j)
 adjMatrix[i][j] = 0;
 }
 }
 void addEdge(int source, int destination) {
 adjMatrix[source][destination] = 1;
 adjMatrix[destination][source] = 1;
 }
 void bfs(int startVertex) {
 bool* visited = new bool[vertices]();
 Queue queue;
 visited[startVertex] = true;
 queue.enqueue(startVertex);
 while (!queue.isEmpty()) {
 int currentVertex = queue.dequeue();
 std::cout << currentVertex << " ";
 for (int i = 0; i < vertices; i++) {
 if (adjMatrix[currentVertex][i] == 1 && !visited[i]) {
 visited[i] = true;
 queue.enqueue(i);
 }
 }
 }
 delete[] visited;
 }
};
int main() {
 int vertices;
 std::cin >> vertices;
 Graph graph(vertices);
 int edges;
 std::cin >> edges;
 for (int i = 0; i < edges; i++) {
 int source, destination;
 std::cin >> source >> destination;
 graph.addEdge(source, destination);
 }
 int startVertex;
 std::cin >> startVertex;
 std::cout << "BFS Traversal:" << std::endl;
 graph.bfs(startVertex);
 return 0;
}











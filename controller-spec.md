#RSpec Controller Spec Lesson

###GET actions

**we'll do these ones together**

- Index
   - it 'assigns the full set of wizards to @wizards and populates an array' do
	- it 'renders the index template' do 
- Show
   - it 'assigns the requested wizard to @wizard' do
   - it 'renders the show template' do 
  
  
 **your turn! break into teams to research the rest**
 
- New
   - it 'assigns a new wizard to @wizard' do
   - it 'renders the new template' do
- Edit
	- it 'assigns the requested wizard to @wizard' do
	- it 'renders the edit template'  

###POST actions
- Create
	- context 'with valid attributes' do 
		- it 'saves our new wizard to the database' do
		- it 'redirects to the index view upon save' do
	- context 'without valid attributes' do
		- it 'does not save the new wizard to the database' do
		- it 'renders the new template again' do	

###PATCH actions
- Update
	- it 'assigns the requested wizard to @wizard' do 
	- context 'with valid attributes' do 
		- it 'saves our updated wizard to the database' do
		- it 'redirects to the index view upon save' do
	- context 'without valid attributes' do
		- it 'does not save the changes to our wizard to the database' do
		- it 'renders the edit template again' do

###DELETE actions
- Destroy
	- it 'deletes the selected wizard' do
	- it 'redirects to the index view upon destroy' do
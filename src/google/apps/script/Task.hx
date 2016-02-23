package google.apps.script;

//TODO

/*
@:require(google_apps_script)
@:native("TasksCollection")
extern class TasksCollection {
clear	void	Clears all completed tasks from the specified task list. The affected tasks will be marked as 'hidden' and no longer be returned by default when retrieving all tasks for a task list.
get	Task	Returns the specified task.
insert	Task	Creates a new task on the specified task list.
list	Tasks	Returns all tasks in the specified task list.
move	Task	Moves the specified task to another position in the task list. This can include putting it as a child task under a new parent and/or move it to a different position among its sibling tasks.
patch	Task	Updates the specified task. This method supports patch semantics.
remove	void	Deletes the specified task from the task list.
update	Task	Updates the specified task.
}

@:require(google_apps_script)
@:native("Tasks")
extern class Tasks {
newTask	Task	Create a new instance of Task
newTaskLinks	TaskLinks	Create a new instance of TaskLinks
newTaskList	TaskList	Create a new instance of TaskList
Tasklists	TasklistsCollection
Tasks	TasksCollection
}

@:require(google_apps_script)
@:native("TasklistsCollection")
extern class TasklistsCollection {
get	TaskList	Returns the authenticated user's specified task list.
insert	TaskList	Creates a new task list and adds it to the authenticated user's task lists.
list	TaskLists	Returns all the authenticated user's task lists.
patch	TaskList	Updates the authenticated user's specified task list. This method supports patch semantics.
remove	void	Deletes the authenticated user's specified task list.
update	TaskList	Updates the authenticated user's specified task list.
}

@:require(google_apps_script)
@:native("TaskLists")
extern class TaskLists {
getEtag	String	ETag of the resource.
getItems	TaskList[]	Collection of task lists.
getKind	String	Type of the resource. This is always "tasks#taskLists".
getNextPageToken	String	Token that can be used to request the next page of this result.
setEtag	TaskLists	Set the value for the field: etag
setItems	TaskLists	Set the value for the field: items
setKind	TaskLists	Set the value for the field: kind
setNextPageToken	TaskLists	Set the value for the field: nextPageToken
}

@:require(google_apps_script)
@:native("TaskList")
extern class TaskList {
	function getEtag() : String;
	function getId() : String;
	function getKind() : String;
	function getSelfLink() : String;
	function getTitle() : String;
	function getUpdated() : String;
	function setEtag( etag : String ) : TaskList;
	function setId( id : String ) : TaskList;
	function setKind( kind : String ) : TaskList;
	function setSelfLink( selfLink : String ) : TaskList;
	function setTitle( title : String ) : TaskList;
	function setUpdated( updated : String ) : TaskList;
}

@:require(google_apps_script)
@:native("TaskLinks")
extern class TaskLinks {
	function getDescription() : String;
	function getLink() : String;
	function getType() : 	String;
	function setDescription( description : String ) : TaskLinks;
	function setLink( link : String ) : TaskLinks;
	function setType( type : String ) : TaskLinks;
}

@:require(google_apps_script)
@:native("Task")
extern class Task {
	function getCompleted() : String;
	function getDeleted() : Bool;
	function getDue() : String;
	function getEtag() : String;
	function getHidden() : Bool;
	function getId() : String;
	function getKind() : String;
	function getLinks() : Array<TaskLinks>;
	function getNotes() : String;
	function getParent() : String;
	function getPosition() : String;
	function getStatus() : String;
	function getSelfLink() : String;
	function getTitle() : String;
	function getUpdated() : String;
	function setCompleted( completed : Bool ) : Task;
	function setDeleted( deleted : Bool ) : Task;
	function setDue( due : String ) : Task;
	function setEtag( etag : String ) : Task;
	function setHidden( hidden : Bool ) : Task;
	function setId( hidden : Bool ) : Task;
	function setKind( kind : String ) : Task;
	function setLinks( links : Array<TaskLinks> ) : Task;
	function setNotes( notes : String ) : Task;
	function setParent( parent : String ) : Task;
	function setPosition( position : String ) : Task;
	function setSelfLink( selfLink : String ) : Task;
	function setStatus( status : String ) : Task;
	function setTitle( title : String ) : Task;
	function setUpdated( updated : String ) : Task;
}
*/

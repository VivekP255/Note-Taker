<nav class="navbar navbar-expand-lg navbar-dark purple">
  <a class="navbar-brand" href="index.jsp">Note Taker</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Add_notes.jsp">Add Note</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link " href="All_Notes.jsp">Show Notes</a>
      </li>
    </ul>
    <form action="Search.jsp" method="post" class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="search">
      <button class=" btn btn-success" type="submit" name="search" >Search</button>
    </form>
  </div>
</nav>
<!-- btn btn-outline-success my-2 my-sm-0 -->
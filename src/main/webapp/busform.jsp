<div class="container-bs p-0">
    <img alt="" src="img/iimm.jpg" style="">
    <div class="search-form">
        <form class="row g-3" action="bsearch" method="post">
            <div class="col-md-4">
                <label for="from" class="form-label">Source:</label> <input
                    type="text" class="form-control" id="from" name="from"
                    placeholder="From" required>
            </div>
            <div class="col-md-4">
                <label for="to" class="form-label">Destination:</label> <input
                    type="text" class="form-control" id="to" name="to" placeholder="To"
                    required>
            </div>

            <div class="col-md-3">
                <label for="date" class="form-label">Date:</label> <input
                    type="date" class="form-control" id="date" name="date" required>
            </div>
            <div class="col-md-1">
                <button type="submit" class="btn btn-primary">Search Buses</button>
            </div>
        </form>
    </div>
</div>

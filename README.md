# Chemistry Is Fun

Chemistry Is Fun is an api that calculates stoichiometric data. It was fun
to make and even more fun to use.

##Molecular Mass Endpoint
```
/api/v1/molecular_mass?molecule=C20H25N3O

renders

{
molecule: "C20H25N3O",
molecular_mass: "323.44"
}
```
* In order for this endpoint to work you have to follow the conventions of writing a chemical formula, i.e. C6H12O6.
Carbon is C not c, Silicon is Si not si or sI or Si. This endpoint also doesn't calculate formulas that contain
parentheses so Al2(SO4)3 would have to be written Al2S3O12 (I am working on fixing this!).



Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

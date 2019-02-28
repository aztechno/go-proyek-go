package main

import (
	"database/sql"
	"log"
	"net/http"
	"text/template"

	_ "github.com/go-sql-driver/mysql"
)

type newsbank struct {
	Id    int
	Author  string
	Body string
	Created string
}

func dbConn() (db *sql.DB) {
	dbDriver := "mysql"
	dbUser := "root"
	dbPass := ""
	dbName := "dbnews"
	db, err := sql.Open(dbDriver, dbUser+":"+dbPass+"@/"+dbName)
	if err != nil {
		panic(err.Error())
	}
	return db
}

var tmpl = template.Must(template.ParseGlob("form/*"))

func Index(w http.ResponseWriter, r *http.Request) {
	db := dbConn()
	selDB, err := db.Query("SELECT * FROM newsbank ORDER BY Id DESC")
	if err != nil {
		panic(err.Error())
	}
	emp := newsbank{}
	res := []newsbank{}
	for selDB.Next() {
		var id int
		var author, body, created string
		err = selDB.Scan(&id, &author, &body, &created)
		if err != nil {
			panic(err.Error())
		}
		emp.Id = id
		emp.Author = author
		emp.Body = body
		emp.Created = created
		res = append(res, emp)
	}
	tmpl.ExecuteTemplate(w, "Index", res)
	defer db.Close()
}

func Show(w http.ResponseWriter, r *http.Request) {
	db := dbConn()
	nId := r.URL.Query().Get("id")
	selDB, err := db.Query("SELECT * FROM newsbank WHERE Id=?", nId)
	if err != nil {
		panic(err.Error())
	}
	emp := newsbank{}
	for selDB.Next() {
		var id int
		var author, body, created string
		err = selDB.Scan(&id, &author, &body, &created)
		if err != nil {
			panic(err.Error())
		}
		emp.Id = id
		emp.Author = author
		emp.Body = body
		emp.Created = created
	}
	tmpl.ExecuteTemplate(w, "Show", emp)
	defer db.Close()
}

func New(w http.ResponseWriter, r *http.Request) {
	tmpl.ExecuteTemplate(w, "New", nil)
}

func Insert(w http.ResponseWriter, r *http.Request) {
	db := dbConn()
	if r.Method == "POST" {
		Author := r.FormValue("Author")
		Body := r.FormValue("Body")
		Created := r.FormValue("Created")
		insForm, err := db.Prepare("INSERT INTO newsbank(author, body, created) VALUES(?,?,?)")
		if err != nil {
			panic(err.Error())
		}
		insForm.Exec(Author, Body, Created)
		log.Println("INSERT: author: " + Author + " | body: " + Body + " | created: " + Created)
	}
	defer db.Close()
	http.Redirect(w, r, "/", 301)
}


func Delete(w http.ResponseWriter, r *http.Request) {
	db := dbConn()
	emp := r.URL.Query().Get("id")
	delForm, err := db.Prepare("DELETE FROM newsbank WHERE Id=?")
	if err != nil {
		panic(err.Error())
	}
	delForm.Exec(emp)
	log.Println("DELETE")
	defer db.Close()
	http.Redirect(w, r, "/", 301)
}

func main() {
	log.Println("Server started on: http://localhost:8080")
	http.HandleFunc("/", Index)
	http.HandleFunc("/show", Show)
	http.HandleFunc("/new", New)
	http.HandleFunc("/insert", Insert)
	http.HandleFunc("/delete", Delete)
	http.ListenAndServe(":8080", nil)
}

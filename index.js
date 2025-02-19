import express from "express"
import cors from "cors"
import mysql from "mysql2/promise"
import { configDB } from "./configDB.js"

const PORT = 3000
let connection
try {
    connection = await mysql.createConnection(configDB)
} catch (error) {
    console.log(error);
}

const app = express()
app.use(express.json())
app.use(cors())

//1. feladat
app.get("/api/trends/:categId", async (req, res) => 
{
  try {
    const sql = "select trends.id, trends.name, trends.description, categories.name as 'categname', trends.impact, trends.year, trends.imageUrl from trends inner join categories on categories.id=trends.categId where categId=? order by trends.name asc"
    const {categId} = req.params
    const values = [categId]
    const [rows, fields] = await connection.execute(sql, values)

    if (rows.length > 0) { res.status(200).send(rows) } else { res.status(404).json({msg:"nem található"}) } 
    

  } catch (error) {
    console.log(error)
  }
})

//2. feladat
app.get("/api/search/:keyWord", async (req, res) => 
{
  try {
    const sql = "select * from trends where instr(name,?) or instr(description, ?)"
    const {keyWord} = req.params
    const values = [keyWord, keyWord]
    const [rows, fields] = await connection.execute(sql, values)
  
    if (rows.length > 0) { res.status(200).send(rows) } else { res.status(404).json({msg:"nem található"}) } 
      
  
  } catch (error) {
    console.log(error)
  }
})


//3. feladat
app.get("/api/categories", async (req, res) => 
{
  try {
    const sql = "select * from categories"
    const [rows, fields] = await connection.execute(sql)
    
    if (rows.length > 0) { res.status(200).send(rows) } else { res.status(404).json({msg:"nem található"}) } 
        
    
  } catch (error) {
    console.log(error)
  }
})
  
//4. feladat
app.post("/api/categories", async (req, res) => 
{
  try {
    const {name} = req.body
    const sql = "insert into categories (name) values (?)"
    const values = [name]
    const [rows, fields] = await connection.execute(sql, values)
      
    res.status(200).json({msg:"sikeres hozzáadás"}) 
          
      
  } catch (error) {
    console.log(error)
  }
})

//5. feladat
app.put("/api/impact/:id", async (req, res) => 
{
  try {
    const {impact} = req.body
    const {id} = req.params

    const sql = "update trends set impact=? where id=?"
    const values = [impact, +id]
    const [result] = await connection.execute(sql, values)
        
    if (result.affectedRows == 0) {res.status(404).json({msg:"nem található az id"})} else{res.status(200).json({msg:"sikeres módosítás"}) }
    
            
        
  } catch (error) {
    console.log(error)
  }
})


app.listen(PORT, () => console.log(`server live on port ${PORT}`))
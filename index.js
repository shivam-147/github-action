import express from 'express'

const app = express()
const PORT = 8080

app.get('/', (req, res) => {
    res.json({ msg: 'welcome to ci and cd from shivam bathre' })
})


app.listen(PORT, () => {
    console.log(`Server is up and running on PORT ${PORT}`)
})
import { useState } from 'react'
import './App.css'
import Chores from './components/ChoresList'
import Movie from './components/MovieList'
import Book from './components/BookList'

function App() {
  const [count, setCount] = useState(0)


  return (
    <>
    <Chores/>
    <Movie/>
    <Book/>
    </>
    
  )
}

export default App

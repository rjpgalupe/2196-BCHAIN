import React from 'react'
import './App.css'
import ShinyButton from './components/React-Demo-1'
import RainOrShine from './components/React-Demo-2'
import Demo3 from './components/React-Demo-3'
import Demo4 from './components/React-Demo-4'


export default function App() {
  return (
    <div>
      <h3>Demo 1</h3>
      <ShinyButton/>

      <h3>Demo 2</h3>
      <RainOrShine isRainy={false}/>

      <h3>Demo 3</h3>
      <Demo3 isRainy={true}/>

      <h3>Demo 4</h3>
      <Demo4 isRainy={true}/>
    </div>
    
  )
}



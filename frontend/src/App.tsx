import { useState } from 'react'
import { Route, Routes } from 'react-router-dom'
import Login from './components/login/login'
import MainPage from './components/main/mainPage'

function App() {

return (
	<>
		<Routes>
			<Route path='/' element={<Login/>}/>
			<Route path='/mainPage' element={<MainPage/>}/>
		</Routes>
	</>
)
}

export default App

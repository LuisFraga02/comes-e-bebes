import { useNavigate } from 'react-router-dom';
import { useEffect } from 'react';

function mainPage() {
	const navigate = useNavigate();

	const checkAuth = () => {
		const token = localStorage.getItem('token');
		if (!token) {
			navigate('/');
		}
	};

	useEffect(() => {
		return () => clearInterval(setInterval(checkAuth, 500));
	}, []);

	return (
		<div>
			<h1>mainPage</h1>
			<h2>{localStorage.getItem('token')}</h2>
			<h3>{localStorage.getItem('username')}</h3>
		</div>
	);
}
export default mainPage;

var list = document.querySelector("#User")

function getAllUser() {
	fetch('http://localhost:8088/user', {
		method: 'GET',
		headers: {
			'Content-Type': 'application/json',
		}
	})
		.then(function(res) {
			return res.json();
		})
		.then((data) => {
			data.map((value) => {
				var role = ""
				if (value.role == 0)
					role = "Người mua"
				else if (value.role == 3)
					role = "Người giao hàng"
				else if(value.role == 4)
					countinue
				else
					role = "Người bán"

				$(list).append(`
				<tr>
					<td>${value.users_username}</td>
		            <td>${value.users_last_name} ${value.users_first_name}</td>
		            <td>${value.users_birthday}</td>
		            <td>${value.users_gender}</td>
		            <td>${value.users_shipping_address}</td>
		            <td>${value.users_email}</td>
		            <td>${value.users_phone}</td>
		            <td>${role}</td>
		            <td><a href="#" class="btn btn-danger btn-circle"><i class="fas fa-trash"></i></a></td>
		     	</tr>  
		            `)		      	
			})

		});
}
getAllUser()
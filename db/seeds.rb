materials = "Aluminio, Baterías, Pet, Bronce, Cartón, Chatarra, Cobre, Dispositivos Electrónicos, Lámparas Incadecentes, Medicamento Caduco, Material Ferroso, Metal no Ferroso, Nailon, Papel, Plástico, Polietileno, Polipropileno"
materials.split(",").each { |mat| Material.create(name: mat.strip) }

RecyclePoint.create(name: "Recicladora Bruxeco",
                    address: "Rodolfo Chávez Carrillo #500",
                    city: "Colima",
                    phone_number: "3121166162",
                    schedule: "Lunes a Sábado de 8:00 a 17:00 hrs.",
                    website: "https://www.facebook.com/recicladora.bruxeco.71",
                    material_ids: [1, 4, 5, 6, 7, 8, 11, 12, 14, 15])

RecyclePoint.create(name: "Redid",
                    address: "Col. Santa Cristina, Calle Colón #1022",
                    city: "Colima",
                    phone_number: "3121231966",
                    schedule: "Lunes a Viernes de 8:00 a 18:00 y Sábado de 8:00 a 15:00 hrs.",
                    website: "",
                    material_ids: [1, 3, 4, 6, 7, 11, 12, 16, 17])

RecyclePoint.create(name: "Recicladora de la Costa",
                    address: "Calle 24 #30, Lib. Tapeixtles, 28239 Manzanillo, Col.",
                    city: "Manzanillo",
                    phone_number: "3143348888",
                    schedule: "Lunes a Viernes de 8:00 a 14:00 y 15:00 a 18:00 hrs.",
                    website: "http://reciclajedelacosta.wixsite.com/misitio",
                    material_ids: [1, 3, 5, 6, 13, 14, 15])

RecyclePoint.create(name: "Facultad de Telemática",
                    address: "Av. Universidad #333. Colonia Las Víboras, C.P. 28040",
                    city: "Colima",
                    phone_number: "3123161075",
                    schedule: "Lunes a Viernes de 7:00 a 19:00 hrs",
                    website: "http://www.telematicanet.ucol.mx",
                    material_ids: [2])

RecyclePoint.create(name: "Conalep Plantel 181",
                    address: "Av. Niños Héroes 1210, Infraestructura Urbana, 28067",
                    city: "Colima",
                    phone_number: "3123132780",
                    schedule: "Lunes a Viernes de 9:00 a 14:00 hrs.",
                    website: "https://www.conalepcolima.com.mx/",
                    material_ids: [2])

RecyclePoint.create(name: "Ecología En Movimiento De Colima S.A. de C.V.",
                    address: "Calle Gral. Lucio Blanco 376, Villas de San José, 28984",
                    city: "Villa de Álvarez",
                    phone_number: "3123130420",
                    schedule: "Lunes a Viernes de 9:00 a 18:00 y Sábados de 8:00 a 16:00 hrs.",
                    website: "",
                    material_ids: [5, 14, 15])

RecyclePoint.create(name: "Ecolim",
                    address: "Calle A 1, Parque Industrial, 28075",
                    city: "Colima",
                    phone_number: "3123081111",
                    schedule: "",
                    website: "",
                    material_ids: [9])

RecyclePoint.create(name: "Farmacia Guadalajara sucursal Rey Colimán",
                    address: "Av. 20 de Noviembre 452, Los Viveros, 28070",
                    city: "Colima",
                    phone_number: "312 314 9631",
                    schedule: "Abierto las 24 hrs.",
                    website: "http://www.farmaciasguadalajara.com.mx",
                    material_ids: [10])

RecyclePoint.create(name: "Farmacia Guadalajara sucursal Benito Juarez",
                    address: "Benito Juárez 305, San Isidro, 28974",
                    city: "Villa de Álvarez",
                    phone_number: "312 308 7846",
                    schedule: "Abierto las 24 hrs.",
                    website: "http://www.farmaciasguadalajara.com.mx",
                    material_ids: [10])

RecyclePoint.create(name: "Farmacia Guadalajara sucursal Tecnológico",
                    address: "Av Tecnológico 2, Jardines Vista Hermosa III, 28017 ",
                    city: "Colima",
                    phone_number: "3123142929",
                    schedule: "Lunes a Domingo de 7:00 a 23:00 hrs.",
                    website: "http://www.farmaciasguadalajara.com.mx",
                    material_ids: [10])

RecyclePoint.create(name: "Recycland Colima",
                    address: "Calle C 23, Parque Industrial, 28075",
                    city: "Colima",
                    phone_number: "3123081155",
                    schedule: "Lunes a Viernes de 8:00 a 14:00 hrs.",
                    website: "http://recyclandcolima.wixsite.com/recycland",
                    material_ids: [16])

User.create(name: "Admin", email: "admin@rp.com", password: "topsecret", password_confirmation: "topsecret", role: 1)

materials = "Aluminio, Baterías, Pet, Bronce, Cartón, Chatarra, Cobre, Dispositivos Electrónicos, Lámparas Incadecentes, Medicamento Caduco, Material Ferroso, Metal no Ferroso, Nailon, Papel, Plástico, Polietileno, Polipropileno"
materials.split(",").each {|mat| Material.create(name: mat.strip)}

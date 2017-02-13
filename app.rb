town = {
  residents: ["Maurice", "Belle", "Gaston"],
  castle: {
    num_rooms: 47,
    residents: "Robby Benson",
    guests: []
  }
}

town[:residents].delete("Belle")
town[:castle][:residents] << " and Belle"
puts town[:residents]
puts town[:castle][:residents]

json.array! @pixels do |pixel|
  json.id pixel.id
  json.name pixel.name
  json.R pixel.R
  json.B pixel.B
  json.G pixel.G
  if pixel.parents.empty?
    json.parentA do
      json.id nil
      json.name nil
    end
    json.parentB do
      json.id nil
      json.name nil
    end
  else
    gene = "R#{pixel.parents[0].R}, B#{pixel.parents[0].B}, G#{pixel.parents[0].G}"
    gene_b = "R#{pixel.parents[1].R}, B#{pixel.parents[1].B}, G#{pixel.parents[1].G}"
    json.parentA do
      json.id pixel.parents[0].id
      json.name gene
    end
    json.parentB do
      json.id pixel.parents[1].id
      json.name gene_b
    end
  end
end

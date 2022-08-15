var documenterSearchIndex = {"docs":
[{"location":"","page":"Home","title":"Home","text":"CurrentModule = EHTUtils","category":"page"},{"location":"#EHTUtils","page":"Home","title":"EHTUtils","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"Documentation for EHTUtils.","category":"page"},{"location":"","page":"Home","title":"Home","text":"","category":"page"},{"location":"","page":"Home","title":"Home","text":"Modules = [EHTUtils]","category":"page"},{"location":"#EHTUtils.get_solidangle","page":"Home","title":"EHTUtils.get_solidangle","text":"get_solidangle(x, [y=0; angunit=u\"rad\", angunitout=nothing, satype=\"pixel\"])\n\ncompute the solid angle for a given set of the angular sizes at specified units of angular sizes in a specified type.\n\nArguments\n\nx, y::Number: the size of the area in two orthogonal directions. if y <= 0, y = x.\nangunit::Unitful.Units or Unitful.Quantity: the angular unit of x and y\nangunitout::Unitful.Units, Unitful.Quantity or nothing:    the angular unit for the output solid angle. If nothing is specified,   use the same unit specified in angunit.\nsatype: the type of the output solid angle:   \"pixel\" for the solid angle of the rectangular area, and \"beam\" for the beam solid angle.\n\n\n\n\n\n","category":"function"},{"location":"#EHTUtils.get_unit-Tuple{String}","page":"Home","title":"EHTUtils.get_unit","text":"get_unit(unitstring)\n\nConverting the given string for units to Unitful.Unit object.\n\nExamples\n\njulia> mas = get_unit(\"mas\") # returns Unitful.Unit object \n\n\n\n\n\n","category":"method"},{"location":"#EHTUtils.unitconv-Tuple{Union{Unitful.Quantity, Unitful.Units}, Union{Unitful.Quantity, Unitful.Units}}","page":"Home","title":"EHTUtils.unitconv","text":"unitconv(unit1, unit2)\n\nDerive the conversion factor from unit1 to unit2. The value in unit1 can be converted to that in unit2 by mutiplying this conversion factor.\n\nExamples\n\njulia> # Converting 1K to mK\njulia> val2 = 1 * unitconv(u\"K\", u\"mK\") # value 2 will be 1000 \n\n\n\n\n\n","category":"method"}]
}

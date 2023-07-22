#!/bin/bash

# Teardrops
git clone https://github.com/NilujePerchut/kicad_scripts.git
sudo cp -r kicad_scripts/teardrops /usr/share/kicad/plugins
rm -rf kicad_scripts

# Via stitching 
git clone https://github.com/jsreynaud/kicad-action-scripts.git
sudo cp -r kicad-action-scripts/ViaStitching /usr/share/kicad/plugins
rm -rf kicad-action-scripts

# RF tools 
git clone https://github.com/easyw/RF-tools-KiCAD.git
sudo cp -r RF-tools-KiCAD /usr/share/kicad/plugins
rm -rf RF-tools-KiCAD

# Interactive boom
git clone https://github.com/openscopeproject/InteractiveHtmlBom.git
sudo cp -r InteractiveHtmlBom /usr/share/kicad/plugins
rm -rf InteractiveHtmlBom

# Nice front label (KiBuzzard)
git clone https://github.com/gregdavill/KiBuzzard
sudo cp -r KiBuzzard /usr/share/kicad/plugins
rm -rf KiBuzzard

# Footprint location management (PlaceFootprints)
git clone https://github.com/MitjaNemec/PlaceFootprints.git
sudo cp -r PlaceFootprints /usr/share/kicad/plugins
rm -rf PlaceFootprints

# Replicate layout 
git clone https://github.com/MitjaNemec/ReplicateLayout.git
sudo cp -r ReplicateLayout /usr/share/kicad/plugins
rm -rf ReplicateLayout 

pip install pyclipper --break-system-packages 

if [[ $1 -eq '-l' ]]
then
        cp -r  /usr/share/kicad/plugins/teardrops ~/.local/share/kicad/6.0/scripting/plugins/teardrops
        cp -r /usr/share/kicad/plugins/ViaStitching ~/.local/share/kicad/6.0/scripting/plugins/ViaStitching
        cp -r /usr/share/kicad/plugins/RF-tools-KiCAD ~/.local/share/kicad/6.0/scripting/plugins/RF-tools-KiCAD
        cp -r /usr/share/kicad/plugins/InteractiveHtmlBom ~/.local/share/kicad/6.0/scripting/plugins/InteractiveHtmlBom

        cp -r /usr/share/kicad/plugins/KiBuzzard ~/.local/share/kicad/6.0/scripting/plugins/KiBuzzard
  
        cp -r /usr/share/kicad/plugins/PlaceFootprints ~/.local/share/kicad/6.0/scripting/plugins/PlaceFootprints
        cp -r /usr/share/kicad/plugins/ReplicateLayout ~/.local/share/kicad/6.0/scripting/plugins/ReplicateLayout
fi

       




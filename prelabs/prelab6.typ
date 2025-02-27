#import "util.typ" : safety

#safety("Limonene", "Standard", "Skin hazard, inhalation hazard, environmental hazard", "Flammable", "Hazardous Waste", "Methanol", "Standard", "Toxic", "Flammable", "Hazardous Waste" )

= Procedure:

+ Label a 100 mL beaker "methanol".
+ Label ten 10 mL volumetric flasks "G", "O", "L"(for grapefruit, orange, and lemon), "S100", "S50", "S25", "S12.5", and "S6.25" (for the standards with the concentrations in #math.mu;g/mL), and leave two without a label.
+ Gather stoppers for the volumetric flasks.
+ Label three 7 mL vials "G", "O", and "L".
+ Obtain two 5 mL beakers, label one "Limonene".
+ Obtain four 10 mL beakers.
+ Pour roughly 75 mL of methanol into the beaker.
+ Obtain a 5 mL volumetric pipette and bulb for the methanol.
+ Obtain four 5 mL volumetric pipettes and a bulb for the standard dilutions.
    == Extraction of Limonene from Fruit
+ Using a razor blade, collect a piece of the rind of a grapefruit, lemon, and orange around a fingerprint size in area into a large weigh boat. Avoid having the white flesh in the sample. 
+ Bring the rind pieces and the vials to an analytical balance.
+ From each rind piece, mass and record a roughly 0.1 g sample avoiding the white flesh. Record the exact mass.
+ Place this rind piece in the appropriate vial. 
+ Using the volumetric pipet, transfer 5 mL of methanol into each vial. 
+ Shake each vial vigorously for 5 minutes, then let each vial rest for 5 minutes.
+ Using a P500, transfer two 500 #math.mu;L aliquots from the vial labeled "orange" to the 10 ml volumetric flask labeled "orange".
+ Using a P500, transfer one aliquot from the vial labeled "lemon" to the volumetric flask labeled "lemon".
+ Using a P500, transfer one aliquot from the vial labeled "grapefruit" to the 10 mL volumetric flask labeled "grapefruit". 
+ Using a transfer pipette, fill all three volumetric flasks to the mark with methanol.
    == Preparation of Standard
 $ 97%*0.842 "g/mL" * (12.2 #math.mu;"L")/ "10 mL"= "1000 "mu"g/mL" $
    $ 1000" "mu"g/mL" * (153#math.mu;"L") / "10 mL" = 100. #math.mu;"g/mL" $
+ Pour roughly 1 mL of (R)-(+)-Limonene (Sigma-Aldrich, catalog number 18316, 97% purity) into the 5 mL beaker labeled "Limonene".
+ Using a P20, transfer 12.2 #math.mu;L of the limonene from the beaker into an unlabeled 10 mL volumetric flask.
+ Fill the volumetric flask to the mark with methanol. 
+ Mix the volumetric flask by 20x inversion. 
+ Pour out about 3 mL of this dilution into an unlabeled 5mL beaker.
+ Using the P200, transfer 153 #math.mu;L from the beaker into the 10 mL volumetric flask labeled "S100". 
+ Fill the volumetric flask to the mark with methanol
+ Mix "S100" by 20x inversion.
+ Pour about 6 mL of "S100" into an unlabeled 10 mL beaker.
+ Using a fresh volumetric pipette, transfer 5 mL into the 10 mL volumetric flask labeled "S50".
+ Fill "S50" to the mark with methanol.
+ Mix by 20x inversion.
+ Repeat this process, starting with pouring about 6 mL of "S50" into an unlabeled beaker, to generate "S25", and then "S12.5" and "S6.25".

    == Operation of the GC-MS Machine \
+ Label and fill GC vials with two replicates for each standard and one replicate for each fruit.
+ Bring them to the machine.
+ On the attached computer, open a GCMSD1 Enhanced window
+ Click the pencil icon in the "Method" section.
+ Check "Instrument/Acquisition" and leave the other two checkboxes blank.
+ For Inlet and Injection Parameters, ensure the the sample inlet is GC and the injection source is GCALS, and the "Use MS" box is checked.
+ Configure the instrument parameters according to this table.
    #image("prelab6settings.png")
+ Click Apply. 
+ Click Okay.
+ When it asks for an MS Tune file use "atune u". 
+ Save the method as u521-NW.
+ Go to the pencil in front of blue bottles icon under the sequence bar. 
+ Delete any existing information in the sample log table and replace it with this (you can drag down cells to autopopulate with the same value.)
    #let names = ("Solvent Blank",..("100","50","25","12.5","6.25").map(v => "S"+v).map(v => ("A","B").map(vv => v+vv)).flatten(), "Orange","Lemon","Grapefruit")
    #table(align: center, columns: (auto,auto,auto,auto,auto,auto), ..("Type","Vial", "Sample","Method/Keyword","Data file","Comments").map(v => [*#v*]), ..names.enumerate().map(((i, name)) => ( 
    if i == 0{ "Blank"} else { "Sample"}, 
    "",
    name,
    "u521-NW",
    str(i+25022700),
    ""

)).flatten()
)
+ Fill out the vial column by loading the samples into the tray and noting which place number they are placed into. Leave the comments column blank.
+ Click ok and select the running man. 


// note the time, write down the model specs, then also do 
# sostronk_radar
An application to demonstrate the animation technical challenge given by SoStronk 

## Naming Conventions

Folder Name : your_folder_name (snake case) as flutter itself follows the same.
File Name : your_file_name.dart
Class Name : YourClassName
Variable Name : yourVariableName
Private Variable : _yourPrivateVariable
Constant Variable Name : CONSTANT_VARIABLE_NAME
Function Name : yourFunctionName
Private Function Name : _yourPrivateFunctionName

## Images

Place image in assets/images/ and create image entry in lib/common/images.dart. You can then use that image anywhere in app by importing the class.

## SizeConfig

Having the size configuration reference file located in lib/common/size_config.dart.

## Top-level directory layout

lib

├── common   

         
         ├── images.dart                      # Contains the reference location URL for all images utilised in the app 
         
         ├── size_config.dart                 # Contains the size configuration reference file located

├── views

    ├──ui
    
        ├── radar  
        
        
                    ├──radar_painter.dart           # Contains all the code for cosmetic shapes drawing, coloring and structuring
                
                    ├── radar_view.dart             # Contains the animation and running of the central arc holding RadarPainter

├── app.dart                                    # App kickstarting file which helps in loading the main UI screen to be loaded first

├── main.dart                                   # FLUTTER entry point.

└── sostronk_radar_app.dart                     # Serves as a single source of imports repository


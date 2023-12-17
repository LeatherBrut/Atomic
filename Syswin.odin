package main

import "core:fmt"
import "vendor:glfw"
import vk "vendor:vulkan"
import ui "vendor:microui"

// making a vulkan window
main::proc(){
    if !bool(glfw.Init()){
        fmt.eprintln("GLFW Load error")
        return 
    }


    winmaker :=glfw.CreateWindow(800,450,"Atomic text editor",nil,nil)

    defer glfw.Terminate()
    defer glfw.DestroyWindow(winmaker)

    if winmaker == nil{
        fmt.eprintln("GLFW has failed at making a Window")
        return
    }
    glfw.MakeContextCurrent(winmaker)
    
    
    for !glfw.WindowShouldClose(winmaker){
        
        glfw.PollEvents()

        glfw.SwapBuffers(winmaker)
    } 
}

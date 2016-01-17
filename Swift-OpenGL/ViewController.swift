//
//  ViewController.swift
//  Swift-OpenGL
//
//  Created by Dustin on 1/16/16.
//  Copyright © 2016 none. All rights reserved.
//

import GLKit

class ViewController: GLKViewController {

    //-----------------------------------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // The GLKView associated with this GLKViewController will be loaded from the
        // storyboard nib.
        unowned let glkView = self.view as! GLKView
        
        // Create an OpenGL ES context and assign it to the GLKView.
        glkView.context = EAGLContext(API:EAGLRenderingAPI.OpenGLES3)
        
        // Configure renderbuffers created by the view
        glkView.drawableColorFormat = GLKViewDrawableColorFormat.RGBA8888
        glkView.drawableDepthFormat = GLKViewDrawableDepthFormat.Format24
        glkView.drawableStencilFormat = GLKViewDrawableStencilFormat.Format8
        
        // Enable multisampling
        glkView.drawableMultisample = GLKViewDrawableMultisample.Multisample4X;
        
        glkView.delegate = self
    }

    //-----------------------------------------------------------------------------------
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



    //-----------------------------------------------------------------------------------
    override func glkView(view: GLKView, drawInRect rect: CGRect) {
        glClearColor(0.7, 0.2, 0.2, 0.0)
        glClear(GLbitfield(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT))
        
    }
    
}


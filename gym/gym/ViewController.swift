//
//  ViewController.swift
//  gym
//
//  Created by 羅珮珊 on 2021/8/2.
//

import UIKit
import SceneKit

class ViewController: UIViewController {
    var spotLightDic: [String:Int] = ["庫房":100]
    
    @IBOutlet weak var firstFloorSceneButton: UIButton!
    @IBOutlet weak var gymAppearanceSceneButton: UIButton!
    @IBOutlet weak var b1SceneButton: UIButton!
    @IBOutlet weak var sceneView: SCNView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(spotLightDic["庫房"] ?? Int())
        // 1: Load .obj file
        let scene = SCNScene(named: "gymScene.scn")
        
//        2. setup camera
        let cameraNode = scene?.rootNode.childNode(withName: "camera", recursively: false)
        
//        // 2: Add camera node
//        let cameraNode = SCNNode()
//        cameraNode.camera = SCNCamera()
//        // 3: Place camera
//        cameraNode.position = SCNVector3(x: 0, y: -10, z: 150)
//        // 4: Set camera on scene
//        scene?.rootNode.addChildNode(cameraNode)
        
        // 5: Adding light to scene
//        let lightNode = SCNNode()
//        lightNode.light = SCNLight()
//        lightNode.light?.type = .omni
//        lightNode.position = SCNVector3(x: 30, y: 15, z: 100)
//        scene?.rootNode.addChildNode(lightNode)
        
        // 6: Creating and adding ambien light to scene
//        let ambientLightNode = SCNNode()
//        ambientLightNode.light = SCNLight()
//        ambientLightNode.light?.type = .ambient
//        ambientLightNode.light?.color = UIColor.darkGray
//        scene?.rootNode.addChildNode(ambientLightNode)
        
        // If you don't want to fix manually the lights
//        sceneView.autoenablesDefaultLighting = true
        
        // Allow user to manipulate camera
        sceneView.allowsCameraControl = true
        
        // Show FPS logs and timming
        // sceneView.showsStatistics = true
        
        // Allow user translate image
        sceneView.cameraControlConfiguration.allowsTranslation = false
        
        // Set scene settings
        sceneView.scene = scene
        
    }
    
    @IBAction func change2FirstFloor(_ sender: Any) {
        print("change to first floor")
        
        let scene = SCNScene(named: "1F.scn")
//        Area light
        sceneView.scene = scene

        
    }
    @IBAction func change2gymAppearance(_ sender: Any) {
        let scene = SCNScene(named: "gymScene.scn")
        sceneView.scene = scene
    }
    
}

# Install script for directory: /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/bullet" TYPE FILE FILES
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/PhysicsClientC_API.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/PhysicsClientSharedMemory_C_API.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/PhysicsClientSharedMemory2_C_API.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/PhysicsDirectC_API.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/PhysicsClientUDP_C_API.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/PhysicsClientTCP_C_API.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/SharedMemoryInProcessPhysicsC_API.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/SharedMemoryPublic.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/b3RobotSimulatorClientAPI_NoGUI.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/b3RobotSimulatorClientAPI_NoDirect.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/bullet_robotics" TYPE FILE FILES
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/CommonInterfaces/Common2dCanvasInterface.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/CommonInterfaces/CommonCallbacks.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/CommonInterfaces/CommonCameraInterface.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/CommonInterfaces/CommonExampleInterface.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/CommonInterfaces/CommonFileIOInterface.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/CommonInterfaces/CommonGraphicsAppInterface.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/CommonInterfaces/CommonGUIHelperInterface.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/CommonInterfaces/CommonMultiBodyBase.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/CommonInterfaces/CommonParameterInterface.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/CommonInterfaces/CommonRenderInterface.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/CommonInterfaces/CommonRigidBodyBase.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/CommonInterfaces/CommonWindowInterface.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/OpenGLWindow/SimpleCamera.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/TinyRenderer/geometry.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/TinyRenderer/model.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/TinyRenderer/tgaimage.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/TinyRenderer/our_gl.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/TinyRenderer/TinyRenderer.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/plugins/collisionFilterPlugin/collisionFilterPlugin.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/plugins/pdControlPlugin/pdControlPlugin.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/b3RobotSimulatorClientAPI_NoGUI.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/b3RobotSimulatorClientAPI_NoDirect.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/IKTrajectoryHelper.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/plugins/tinyRendererPlugin/tinyRendererPlugin.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/plugins/tinyRendererPlugin/TinyRendererVisualShapeConverter.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/InProcessMemory.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/PhysicsServer.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/PhysicsClient.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/PhysicsServerSharedMemory.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/PhysicsDirect.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/PhysicsDirectC_API.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/PhysicsServerCommandProcessor.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/b3PluginManager.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/PhysicsClientSharedMemory.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/PhysicsClientSharedMemory_C_API.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/PhysicsClientC_API.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/SharedMemoryPublic.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/Win32SharedMemory.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/PosixSharedMemory.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/Utils/b3ResourcePath.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/Utils/RobotLoggingUtil.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/Utils/b3Clock.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/Utils/b3ResourcePath.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/Utils/ChromeTraceUtil.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/Utils/b3ERPCFMHelper.hpp"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/Utils/b3ReferenceFrameHelper.hpp"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/ThirdPartyLibs/tinyxml2/tinyxml2.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/ThirdPartyLibs/Wavefront/tiny_obj_loader.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/ThirdPartyLibs/stb_image/stb_image.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/ThirdPartyLibs/BussIK/Jacobian.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/ThirdPartyLibs/BussIK/LinearR2.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/ThirdPartyLibs/BussIK/LinearR3.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/ThirdPartyLibs/BussIK/LinearR4.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/ThirdPartyLibs/BussIK/MatrixRmn.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/ThirdPartyLibs/BussIK/Node.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/ThirdPartyLibs/BussIK/Tree.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/ThirdPartyLibs/BussIK/VectorRn.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/Importers/ImportColladaDemo/LoadMeshFromCollada.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/Importers/ImportObjDemo/LoadMeshFromObj.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/Importers/ImportObjDemo/Wavefront2GLInstanceGraphicsShape.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/Importers/ImportMJCFDemo/BulletMJCFImporter.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/Importers/ImportURDFDemo/BulletUrdfImporter.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/Importers/ImportURDFDemo/MyMultiBodyCreator.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/Importers/ImportURDFDemo/URDF2Bullet.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/Importers/ImportURDFDemo/UrdfParser.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/Importers/ImportURDFDemo/urdfStringSplit.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/Importers/ImportURDFDemo/URDFImporterInterface.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/Importers/ImportURDFDemo/URDFJointTypes.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/Importers/ImportURDFDemo/SDFAudioTypes.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/Importers/ImportURDFDemo/UrdfRenderingInterface.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/Importers/ImportURDFDemo/MultiBodyCreationInterface.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/Importers/ImportMeshUtility/b3ImportMeshUtility.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/MultiThreading/b3PosixThreadSupport.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/MultiThreading/b3Win32ThreadSupport.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/MultiThreading/b3ThreadSupportInterface.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/PhysicsClientUDP.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/PhysicsClientUDP_C_API.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/ThirdPartyLibs/enet/include/enet/win32.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/ThirdPartyLibs/enet/include/enet/unix.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/ThirdPartyLibs/enet/include/enet/callbacks.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/ThirdPartyLibs/enet/include/enet/list.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/ThirdPartyLibs/enet/include/enet/protocol.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/PhysicsClientTCP.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/SharedMemory/PhysicsClientTCP_C_API.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/ThirdPartyLibs/clsocket/src/SimpleSocket.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/ThirdPartyLibs/clsocket/src/ActiveSocket.h"
    "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/Extras/BulletRobotics/../../examples/ThirdPartyLibs/clsocket/src/PassiveSocket.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/Extras/BulletRobotics/libBulletRobotics.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/Extras/BulletRobotics/bullet_robotics.pc")
endif()


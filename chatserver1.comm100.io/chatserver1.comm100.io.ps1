﻿cd c:\Windows\system32\inetsrv
./appcmd.exe add apppool /name:"chatserver1.comm100.io" /managedRuntimeVersion:v4.0 /managedPipelineMode:Integrated /processModel.identityType:"SpecificUser" /processModel.userName:"WebUser" /processModel.password:"skfksAdsds!@32543"
./appcmd.exe add site /name:"chatserver1.comm100.io"  /bindings:"http/*:80:chatserver1.comm100.io,https/*:443:chatserver1.comm100.io" /physicalPath:"C:\website\chatserver1.comm100.io" /applicationDefaults.applicationPool:"chatserver1.comm100.io" /virtualDirectoryDefaults.userName:"WebUser" /virtualDirectoryDefaults.password:"skfksAdsds!@32543" 
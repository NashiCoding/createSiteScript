﻿cd c:\Windows\system32\inetsrv
./appcmd.exe add apppool /name:"vue.comm100.com" /managedRuntimeVersion:v4.0 /managedPipelineMode:Integrated /processModel.identityType:"SpecificUser" /processModel.userName:"WebUser" /processModel.password:"skfksAdsds!@32543"
./appcmd.exe add site /name:"vue.comm100.com"  /bindings:"http/*:80:vue.comm100.com,https/*:443:vue.comm100.com" /physicalPath:"C:\website\vue.comm100.com" /applicationDefaults.applicationPool:"vue.comm100.com" /virtualDirectoryDefaults.userName:"WebUser" /virtualDirectoryDefaults.password:"skfksAdsds!@32543"
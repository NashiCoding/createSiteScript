﻿cd c:\Windows\system32\inetsrv
./appcmd.exe add apppool /name:"secure.comm100.com" /managedRuntimeVersion:v4.0 /managedPipelineMode:Integrated /processModel.identityType:"SpecificUser" /processModel.userName:"WebUser" /processModel.password:"skfksAdsds!@32543"
./appcmd.exe add site /name:"secure.comm100.com"  /bindings:"http/*:80:secure.comm100.com,https/*:443:secure.comm100.com" /physicalPath:"C:\website\secure.comm100.com" /applicationDefaults.applicationPool:"secure.comm100.com" /virtualDirectoryDefaults.userName:"WebUser" /virtualDirectoryDefaults.password:"skfksAdsds!@32543"
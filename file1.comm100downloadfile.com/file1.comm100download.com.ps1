﻿cd c:\Windows\system32\inetsrv
./appcmd.exe add apppool /name:"file1.comm100download.com" /managedRuntimeVersion:v4.0 /managedPipelineMode:Integrated /processModel.identityType:"SpecificUser" /processModel.userName:"WebUser" /processModel.password:"skfksAdsds!@32543"
./appcmd.exe add site /name:"file1.comm100download.com"  /bindings:"http/*:80:file1.comm100download.com,https/*:443:file1.comm100download.com" /physicalPath:"C:\website\file1.comm100download.com" /applicationDefaults.applicationPool:"file1.comm100download.com" /virtualDirectoryDefaults.userName:"WebUser" /virtualDirectoryDefaults.password:"skfksAdsds!@32543"
./appcmd.exe add apppool /name:"file1.comm100download.com.FileService" /managedRuntimeVersion:"" /processModel.identityType:"SpecificUser" /processModel.userName:"WebUser" /processModel.password:"skfksAdsds!@32543"
./appcmd.exe add apppool /name:"file1.comm100download.com.FileServiceDbToS3" /managedRuntimeVersion:"" /processModel.identityType:"SpecificUser" /processModel.userName:"WebUser" /processModel.password:"skfksAdsds!@32543" /processModel.idleTimeout:"00:00:00" /recycling.periodicRestart.time:"00:00:00"
./appcmd.exe add app /site.name:"file1.comm100download.com" /path:"/FileService" /physicalPath:"C:\website\file1.comm100download.com\FileService" /applicationpool:"file1.comm100download.com.FileService" /virtualDirectoryDefaults.userName:"WebUser" /virtualDirectoryDefaults.password:"skfksAdsds!@32543"
./appcmd.exe add app /site.name:"file1.comm100download.com" /path:"/FileServiceDbToS3" /physicalPath:"C:\website\file1.comm100download.com\FileServiceDbToS3" /applicationpool:"file1.comm100download.com.FileServiceDbToS3" /virtualDirectoryDefaults.userName:"WebUser" /virtualDirectoryDefaults.password:"skfksAdsds!@32543"
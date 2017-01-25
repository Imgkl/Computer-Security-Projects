.class Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;
.super Ljava/lang/Object;
.source "EmspInfoStore.java"


# instance fields
.field private mDeviceHandle:Ljava/lang/String;

.field private mEndpointUrl:Ljava/lang/String;

.field private mLocationId:Ljava/lang/String;

.field private mLocationMissing:Z

.field private mLocationTimeStamp:J

.field private mMapLength:D

.field private mMapUuid:Ljava/lang/String;

.field private mMapWidth:D

.field private mX:D

.field private mY:D


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 2

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    const-string v0, "^ EMSPSTORE: Clear"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mDeviceHandle:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mEndpointUrl:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mLocationId:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mLocationMissing:Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mMapUuid:Ljava/lang/String;

    .line 32
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mX:D

    .line 33
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mY:D

    .line 34
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mMapWidth:D

    .line 35
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mMapLength:D

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mLocationTimeStamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDeviceHandle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mDeviceHandle:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEndpointUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mEndpointUrl:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIndoorPositionCallbackPayload()Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;
    .locals 4

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;-><init>()V

    .line 50
    .local v0, "payload":Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;
    iget-wide v2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mX:D

    invoke-virtual {v0, v2, v3}, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->setX(D)V

    .line 51
    iget-wide v2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mY:D

    invoke-virtual {v0, v2, v3}, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->setY(D)V

    .line 52
    iget-wide v2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mMapWidth:D

    invoke-virtual {v0, v2, v3}, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->setMapWidth(D)V

    .line 53
    iget-wide v2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mMapLength:D

    invoke-virtual {v0, v2, v3}, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->setMapLength(D)V

    .line 54
    iget-object v1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mMapUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->setMapId(Ljava/lang/String;)V

    .line 55
    iget-wide v2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mLocationTimeStamp:J

    invoke-virtual {v0, v2, v3}, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->setTimestamp(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-object v0

    .line 48
    .end local v0    # "payload":Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getLocationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mLocationId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isLocationMissing()Z
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mLocationMissing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRegistered()Z
    .locals 2

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mDeviceHandle:Ljava/lang/String;

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mEndpointUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mLocationId:Ljava/lang/String;

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 72
    .local v0, "res":Z
    :goto_0
    monitor-exit p0

    return v0

    .line 69
    .end local v0    # "res":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setDeviceLocationInfo(Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;)V
    .locals 4
    .param p1, "deviceLocation"    # Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;

    .prologue
    .line 77
    monitor-enter p0

    if-nez p1, :cond_0

    .line 85
    :goto_0
    monitor-exit p0

    return-void

    .line 78
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;->getDeviceLocation()Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationInner;

    move-result-object v0

    .line 79
    .local v0, "inner":Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationInner;
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;->getMapInfo()Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspMapInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspMapInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mMapUuid:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;->getMapInfo()Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspMapInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspMapInfo;->getDimensions()Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDimensions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDimensions;->getWidth()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mMapWidth:D

    .line 81
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;->getMapInfo()Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspMapInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspMapInfo;->getDimensions()Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDimensions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDimensions;->getLength()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mMapLength:D

    .line 82
    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationInner;->getMapX()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mX:D

    .line 83
    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationInner;->getMapY()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mY:D

    .line 84
    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationInner;->getLastUpdatedEpoc()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mLocationTimeStamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 77
    .end local v0    # "inner":Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationInner;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setLocationInfo(Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocation;)V
    .locals 1
    .param p1, "location"    # Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocation;

    .prologue
    .line 92
    monitor-enter p0

    if-nez p1, :cond_0

    .line 93
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mEndpointUrl:Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mLocationId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :goto_0
    monitor-exit p0

    return-void

    .line 96
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocation;->getEndpointURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mEndpointUrl:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocation;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mLocationId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLocationMissing(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mLocationMissing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRegistrationInfo(Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistration;)V
    .locals 1
    .param p1, "deviceRegistration"    # Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistration;

    .prologue
    .line 102
    monitor-enter p0

    if-nez p1, :cond_0

    .line 103
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mDeviceHandle:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :goto_0
    monitor-exit p0

    return-void

    .line 105
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistration;->getDeviceHandle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mDeviceHandle:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EmspInfoStore [mDeviceHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mDeviceHandle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEndpointUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mEndpointUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mLocationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMapUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mMapUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mX:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mY:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocationTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->mLocationTimeStamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

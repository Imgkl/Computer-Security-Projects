.class public Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;
.super Ljava/lang/Object;
.source "EmspDeviceLocationOuter.java"


# instance fields
.field private apMac:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "apMac"
    .end annotation
.end field

.field private deviceHandle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceHandle"
    .end annotation
.end field

.field private deviceIP:Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspDeviceIP;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceIP"
    .end annotation
.end field

.field private deviceLocation:Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationInner;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceLocation"
    .end annotation
.end field

.field private deviceMac:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceMac"
    .end annotation
.end field

.field private deviceStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceStatus"
    .end annotation
.end field

.field private firstSeen:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "firstSeen"
    .end annotation
.end field

.field private firstSeenEpoc:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "firstSeenEpoc"
    .end annotation
.end field

.field private mapInfo:Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspMapInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mapInfo"
    .end annotation
.end field

.field private sSID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SSID"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;->apMac:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceHandle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;->deviceHandle:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceIP()Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspDeviceIP;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;->deviceIP:Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspDeviceIP;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspDeviceIP;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspDeviceIP;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;->deviceIP:Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspDeviceIP;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;->deviceIP:Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspDeviceIP;

    return-object v0
.end method

.method public getDeviceLocation()Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationInner;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;->deviceLocation:Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationInner;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationInner;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationInner;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;->deviceLocation:Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationInner;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;->deviceLocation:Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationInner;

    return-object v0
.end method

.method public getDeviceMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;->deviceMac:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;->deviceStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstSeen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;->firstSeen:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstSeenEpoc()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;->firstSeenEpoc:J

    return-wide v0
.end method

.method public getMapInfo()Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspMapInfo;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;->mapInfo:Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspMapInfo;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspMapInfo;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspMapInfo;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;->mapInfo:Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspMapInfo;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;->mapInfo:Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspMapInfo;

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;->sSID:Ljava/lang/String;

    return-object v0
.end method

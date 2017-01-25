.class public Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationResponse;
.super Ljava/lang/Object;
.source "EmspDeviceLocationResponse.java"


# instance fields
.field private deviceLocation:Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceLocation"
    .end annotation
.end field

.field private status:Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
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
.method public getDeviceLocation()Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationResponse;->deviceLocation:Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationResponse;->deviceLocation:Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationResponse;->deviceLocation:Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationOuter;

    return-object v0
.end method

.method public getStatus()Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationResponse;->status:Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationResponse;->status:Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationResponse;->status:Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;

    return-object v0
.end method

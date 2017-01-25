.class public Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationInner;
.super Ljava/lang/Object;
.source "EmspDeviceLocationInner.java"


# instance fields
.field private lastUpdated:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lastUpdated"
    .end annotation
.end field

.field private lastUpdatedEpoc:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lastUpdatedEpoc"
    .end annotation
.end field

.field private lat:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lat"
    .end annotation
.end field

.field private lng:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lng"
    .end annotation
.end field

.field private mapX:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mapX"
    .end annotation
.end field

.field private mapY:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mapY"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastUpdated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationInner;->lastUpdated:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdatedEpoc()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationInner;->lastUpdatedEpoc:J

    return-wide v0
.end method

.method public getLat()D
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationInner;->lat:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationInner;->lng:D

    return-wide v0
.end method

.method public getMapX()D
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationInner;->mapX:D

    return-wide v0
.end method

.method public getMapY()D
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/devicelocation/EmspDeviceLocationInner;->mapY:D

    return-wide v0
.end method

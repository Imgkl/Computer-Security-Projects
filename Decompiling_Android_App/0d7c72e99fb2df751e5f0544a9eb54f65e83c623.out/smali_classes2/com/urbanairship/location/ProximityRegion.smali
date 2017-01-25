.class public Lcom/urbanairship/location/ProximityRegion;
.super Ljava/lang/Object;
.source "ProximityRegion.java"


# static fields
.field private static final MAX_MAJOR_MINOR_VALUE:I = 0xffff

.field private static final MAX_RSSI:I = 0x64

.field private static final MIN_RSSI:I = -0x64


# instance fields
.field private latitude:Ljava/lang/Double;

.field private longitude:Ljava/lang/Double;

.field private final major:I

.field private final minor:I

.field private final proximityId:Ljava/lang/String;

.field private rssi:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "proximityId"    # Ljava/lang/String;
    .param p2, "major"    # I
    .param p3, "minor"    # I

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/urbanairship/location/ProximityRegion;->proximityId:Ljava/lang/String;

    .line 89
    iput p2, p0, Lcom/urbanairship/location/ProximityRegion;->major:I

    .line 90
    iput p3, p0, Lcom/urbanairship/location/ProximityRegion;->minor:I

    .line 91
    return-void
.end method


# virtual methods
.method public getLatitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/urbanairship/location/ProximityRegion;->latitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/urbanairship/location/ProximityRegion;->longitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getMajor()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/urbanairship/location/ProximityRegion;->major:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/urbanairship/location/ProximityRegion;->minor:I

    return v0
.end method

.method public getProximityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/urbanairship/location/ProximityRegion;->proximityId:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/urbanairship/location/ProximityRegion;->rssi:Ljava/lang/Integer;

    return-object v0
.end method

.method public isValid()Z
    .locals 3

    .prologue
    const v2, 0xffff

    const/4 v0, 0x0

    .line 207
    iget-object v1, p0, Lcom/urbanairship/location/ProximityRegion;->proximityId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 208
    const-string v1, "The proximity ID must not be null."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 230
    :goto_0
    return v0

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/urbanairship/location/ProximityRegion;->proximityId:Ljava/lang/String;

    invoke-static {v1}, Lcom/urbanairship/location/RegionEvent;->regionEventCharacterCountIsValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    const-string v1, "The proximity ID must not be greater than 255 or less than 1 characters in length."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_1
    iget v1, p0, Lcom/urbanairship/location/ProximityRegion;->major:I

    if-gt v1, v2, :cond_2

    iget v1, p0, Lcom/urbanairship/location/ProximityRegion;->major:I

    if-gez v1, :cond_3

    .line 219
    :cond_2
    const-string v1, "The major must not be greater than 65535 or less than 0."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_3
    iget v1, p0, Lcom/urbanairship/location/ProximityRegion;->minor:I

    if-gt v1, v2, :cond_4

    iget v1, p0, Lcom/urbanairship/location/ProximityRegion;->minor:I

    if-gez v1, :cond_5

    .line 225
    :cond_4
    const-string v1, "The minor must not be greater than 65535 or less than 0."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCoordinates(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 2
    .param p1, "latitude"    # Ljava/lang/Double;
    .param p2, "longitude"    # Ljava/lang/Double;

    .prologue
    const/4 v1, 0x0

    .line 101
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 102
    :cond_0
    iput-object v1, p0, Lcom/urbanairship/location/ProximityRegion;->latitude:Ljava/lang/Double;

    .line 103
    iput-object v1, p0, Lcom/urbanairship/location/ProximityRegion;->longitude:Ljava/lang/Double;

    .line 123
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-static {p1}, Lcom/urbanairship/location/RegionEvent;->regionEventLatitudeIsValid(Ljava/lang/Double;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    const-string v0, "The latitude must be greater than or equal to -90.0 and less than or equal to 90.0 degrees."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 110
    iput-object v1, p0, Lcom/urbanairship/location/ProximityRegion;->latitude:Ljava/lang/Double;

    goto :goto_0

    .line 114
    :cond_2
    invoke-static {p2}, Lcom/urbanairship/location/RegionEvent;->regionEventLongitudeIsValid(Ljava/lang/Double;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 115
    const-string v0, "The longitude must be greater than or equal to -180.0 and less than or equal to 180.0 degrees."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 117
    iput-object v1, p0, Lcom/urbanairship/location/ProximityRegion;->longitude:Ljava/lang/Double;

    goto :goto_0

    .line 121
    :cond_3
    iput-object p1, p0, Lcom/urbanairship/location/ProximityRegion;->latitude:Ljava/lang/Double;

    .line 122
    iput-object p2, p0, Lcom/urbanairship/location/ProximityRegion;->longitude:Ljava/lang/Double;

    goto :goto_0
.end method

.method public setRssi(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "rssi"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x0

    .line 131
    if-nez p1, :cond_0

    .line 132
    iput-object v2, p0, Lcom/urbanairship/location/ProximityRegion;->rssi:Ljava/lang/Integer;

    .line 144
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, -0x64

    if-ge v0, v1, :cond_2

    .line 137
    :cond_1
    const-string v0, "The rssi must be greater than or equal to -100 and less than or equal to 100 dBm."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 139
    iput-object v2, p0, Lcom/urbanairship/location/ProximityRegion;->rssi:Ljava/lang/Integer;

    goto :goto_0

    .line 143
    :cond_2
    iput-object p1, p0, Lcom/urbanairship/location/ProximityRegion;->rssi:Ljava/lang/Integer;

    goto :goto_0
.end method

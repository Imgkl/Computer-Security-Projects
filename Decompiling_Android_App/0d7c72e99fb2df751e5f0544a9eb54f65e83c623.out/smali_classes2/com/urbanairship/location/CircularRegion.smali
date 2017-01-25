.class public Lcom/urbanairship/location/CircularRegion;
.super Ljava/lang/Object;
.source "CircularRegion.java"


# static fields
.field public static final MAX_RADIUS:I = 0x186a0


# instance fields
.field private final latitude:D

.field private final longitude:D

.field private final radius:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 1
    .param p1, "radius"    # D
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-wide p1, p0, Lcom/urbanairship/location/CircularRegion;->radius:D

    .line 64
    iput-wide p3, p0, Lcom/urbanairship/location/CircularRegion;->latitude:D

    .line 65
    iput-wide p5, p0, Lcom/urbanairship/location/CircularRegion;->longitude:D

    .line 66
    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/urbanairship/location/CircularRegion;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/urbanairship/location/CircularRegion;->longitude:D

    return-wide v0
.end method

.method public getRadius()D
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/urbanairship/location/CircularRegion;->radius:D

    return-wide v0
.end method

.method public isValid()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 101
    iget-wide v2, p0, Lcom/urbanairship/location/CircularRegion;->radius:D

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    iget-wide v2, p0, Lcom/urbanairship/location/CircularRegion;->radius:D

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_1

    .line 102
    :cond_0
    const-string v1, "The radius must be greater than 0 and less than or equal to 100000 meters."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 119
    :goto_0
    return v0

    .line 107
    :cond_1
    iget-wide v2, p0, Lcom/urbanairship/location/CircularRegion;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/location/RegionEvent;->regionEventLatitudeIsValid(Ljava/lang/Double;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 108
    const-string v1, "The latitude must be greater than or equal to -90.0 and less than or equal to 90.0 degrees."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_2
    iget-wide v2, p0, Lcom/urbanairship/location/CircularRegion;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/location/RegionEvent;->regionEventLongitudeIsValid(Ljava/lang/Double;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 114
    const-string v1, "The longitude must be greater than or equal to -180.0 and less than or equal to 180.0 degrees."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.class public Lcom/urbanairship/location/RegionEvent;
.super Lcom/urbanairship/analytics/Event;
.source "RegionEvent.java"


# static fields
.field private static final BOUNDARY_EVENT:Ljava/lang/String; = "action"

.field public static final BOUNDARY_EVENT_ENTER:I = 0x1

.field public static final BOUNDARY_EVENT_EXIT:I = 0x2

.field private static final CIRCULAR_REGION:Ljava/lang/String; = "circular_region"

.field private static final CIRCULAR_REGION_RADIUS:Ljava/lang/String; = "radius"

.field private static final LATITUDE:Ljava/lang/String; = "latitude"

.field private static final LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final MAX_CHARACTER_LENGTH:I = 0xff

.field public static final MAX_LATITUDE:D = 90.0

.field public static final MAX_LONGITUDE:D = 180.0

.field public static final MIN_LATITUDE:D = -90.0

.field public static final MIN_LONGITUDE:D = -180.0

.field private static final PROXIMITY_REGION:Ljava/lang/String; = "proximity"

.field private static final PROXIMITY_REGION_ID:Ljava/lang/String; = "proximity_id"

.field private static final PROXIMITY_REGION_MAJOR:Ljava/lang/String; = "major"

.field private static final PROXIMITY_REGION_MINOR:Ljava/lang/String; = "minor"

.field private static final PROXIMITY_REGION_RSSI:Ljava/lang/String; = "rssi"

.field private static final REGION_ID:Ljava/lang/String; = "region_id"

.field private static final SOURCE:Ljava/lang/String; = "source"

.field public static final TYPE:Ljava/lang/String; = "region_event"


# instance fields
.field private final boundaryEvent:I

.field private circularRegion:Lcom/urbanairship/location/CircularRegion;

.field private proximityRegion:Lcom/urbanairship/location/ProximityRegion;

.field private final regionId:Ljava/lang/String;

.field private final source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "regionId"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "boundaryEvent"    # I

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/urbanairship/analytics/Event;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/urbanairship/location/RegionEvent;->regionId:Ljava/lang/String;

    .line 175
    iput-object p2, p0, Lcom/urbanairship/location/RegionEvent;->source:Ljava/lang/String;

    .line 176
    iput p3, p0, Lcom/urbanairship/location/RegionEvent;->boundaryEvent:I

    .line 177
    return-void
.end method

.method static regionEventCharacterCountIsValid(Ljava/lang/String;)Z
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 254
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static regionEventLatitudeIsValid(Ljava/lang/Double;)Z
    .locals 4
    .param p0, "lat"    # Ljava/lang/Double;

    .prologue
    .line 264
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static regionEventLongitudeIsValid(Ljava/lang/Double;)Z
    .locals 4
    .param p0, "lon"    # Ljava/lang/Double;

    .prologue
    .line 274
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final getEventData()Lorg/json/JSONObject;
    .locals 12

    .prologue
    const/4 v6, 0x1

    .line 186
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 190
    .local v1, "data":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/urbanairship/location/RegionEvent;->isValid()Z

    move-result v4

    if-nez v4, :cond_1

    .line 191
    const/4 v1, 0x0

    .line 227
    .end local v1    # "data":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v1

    .line 195
    .restart local v1    # "data":Lorg/json/JSONObject;
    :cond_1
    :try_start_0
    const-string v4, "region_id"

    iget-object v5, p0, Lcom/urbanairship/location/RegionEvent;->regionId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v4, "source"

    iget-object v5, p0, Lcom/urbanairship/location/RegionEvent;->source:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string v5, "action"

    iget v4, p0, Lcom/urbanairship/location/RegionEvent;->boundaryEvent:I

    if-ne v4, v6, :cond_3

    const-string v4, "enter"

    :goto_1
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    iget-object v4, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    invoke-virtual {v4}, Lcom/urbanairship/location/ProximityRegion;->isValid()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 201
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 203
    .local v3, "proximityRegionData":Lorg/json/JSONObject;
    const-string v4, "proximity_id"

    iget-object v5, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    invoke-virtual {v5}, Lcom/urbanairship/location/ProximityRegion;->getProximityId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    const-string v4, "major"

    iget-object v5, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    invoke-virtual {v5}, Lcom/urbanairship/location/ProximityRegion;->getMajor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    const-string v4, "minor"

    iget-object v5, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    invoke-virtual {v5}, Lcom/urbanairship/location/ProximityRegion;->getMinor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    const-string v4, "latitude"

    iget-object v5, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    invoke-virtual {v5}, Lcom/urbanairship/location/ProximityRegion;->getLatitude()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    const-string v4, "longitude"

    iget-object v5, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    invoke-virtual {v5}, Lcom/urbanairship/location/ProximityRegion;->getLongitude()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    const-string v4, "rssi"

    iget-object v5, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    invoke-virtual {v5}, Lcom/urbanairship/location/ProximityRegion;->getRssi()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    const-string v4, "proximity"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    .end local v3    # "proximityRegionData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/urbanairship/location/RegionEvent;->circularRegion:Lcom/urbanairship/location/CircularRegion;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/urbanairship/location/RegionEvent;->circularRegion:Lcom/urbanairship/location/CircularRegion;

    invoke-virtual {v4}, Lcom/urbanairship/location/CircularRegion;->isValid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 216
    .local v0, "circularRegionData":Lorg/json/JSONObject;
    const-string v4, "radius"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.1f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/urbanairship/location/RegionEvent;->circularRegion:Lcom/urbanairship/location/CircularRegion;

    invoke-virtual {v9}, Lcom/urbanairship/location/CircularRegion;->getRadius()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string v4, "latitude"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.7f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/urbanairship/location/RegionEvent;->circularRegion:Lcom/urbanairship/location/CircularRegion;

    invoke-virtual {v9}, Lcom/urbanairship/location/CircularRegion;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string v4, "longitude"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.7f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/urbanairship/location/RegionEvent;->circularRegion:Lcom/urbanairship/location/CircularRegion;

    invoke-virtual {v9}, Lcom/urbanairship/location/CircularRegion;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    const-string v4, "circular_region"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 223
    .end local v0    # "circularRegionData":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 224
    .local v2, "exception":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error constructing JSON data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/urbanairship/location/RegionEvent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 198
    .end local v2    # "exception":Lorg/json/JSONException;
    :cond_3
    :try_start_1
    const-string v4, "exit"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    const-string v0, "region_event"

    return-object v0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 279
    iget-object v2, p0, Lcom/urbanairship/location/RegionEvent;->regionId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/urbanairship/location/RegionEvent;->source:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 280
    :cond_0
    const-string v1, "The region ID and source must not be null."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 302
    :goto_0
    return v0

    .line 284
    :cond_1
    iget-object v2, p0, Lcom/urbanairship/location/RegionEvent;->regionId:Ljava/lang/String;

    invoke-static {v2}, Lcom/urbanairship/location/RegionEvent;->regionEventCharacterCountIsValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 285
    const-string v1, "The region ID must not be greater than 255 or less than 1 characters in length."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :cond_2
    iget-object v2, p0, Lcom/urbanairship/location/RegionEvent;->source:Ljava/lang/String;

    invoke-static {v2}, Lcom/urbanairship/location/RegionEvent;->regionEventCharacterCountIsValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 291
    const-string v1, "The source must not be greater than 255 or less than 1 characters in length."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_3
    iget v2, p0, Lcom/urbanairship/location/RegionEvent;->boundaryEvent:I

    if-lt v2, v1, :cond_4

    iget v2, p0, Lcom/urbanairship/location/RegionEvent;->boundaryEvent:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_5

    .line 297
    :cond_4
    const-string v1, "The boundary event must either be an entrance (1) or an exit (2)."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 302
    goto :goto_0
.end method

.method public setCircularRegion(Lcom/urbanairship/location/CircularRegion;)V
    .locals 0
    .param p1, "circularRegion"    # Lcom/urbanairship/location/CircularRegion;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/urbanairship/location/RegionEvent;->circularRegion:Lcom/urbanairship/location/CircularRegion;

    .line 246
    return-void
.end method

.method public setProximityRegion(Lcom/urbanairship/location/ProximityRegion;)V
    .locals 0
    .param p1, "proximityRegion"    # Lcom/urbanairship/location/ProximityRegion;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    .line 237
    return-void
.end method

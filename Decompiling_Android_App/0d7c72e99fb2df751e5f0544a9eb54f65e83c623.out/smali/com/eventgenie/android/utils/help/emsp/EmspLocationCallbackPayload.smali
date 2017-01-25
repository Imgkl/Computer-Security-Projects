.class public Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;
.super Ljava/lang/Object;
.source "EmspLocationCallbackPayload.java"


# instance fields
.field private mMapId:Ljava/lang/String;

.field private mMapLength:D

.field private mMapWidth:D

.field private mTimestamp:J

.field private mX:D

.field private mY:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMapId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->mMapId:Ljava/lang/String;

    return-object v0
.end method

.method public getMapLength()D
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->mMapLength:D

    return-wide v0
.end method

.method public getMapWidth()D
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->mMapWidth:D

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->mTimestamp:J

    return-wide v0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->mX:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->mY:D

    return-wide v0
.end method

.method public isValid()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 38
    iget-wide v2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->mX:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 39
    :cond_1
    iget-wide v2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->mY:D

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_0

    .line 40
    iget-wide v2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->mMapWidth:D

    cmpg-double v1, v2, v4

    if-lez v1, :cond_0

    .line 41
    iget-wide v2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->mMapLength:D

    cmpg-double v1, v2, v4

    if-lez v1, :cond_0

    .line 42
    iget-wide v2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->mTimestamp:J

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->mMapId:Ljava/lang/String;

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected setMapId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mapId"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->mMapId:Ljava/lang/String;

    .line 50
    return-void
.end method

.method protected setMapLength(D)V
    .locals 1
    .param p1, "mapLength"    # D

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->mMapLength:D

    .line 70
    return-void
.end method

.method protected setMapWidth(D)V
    .locals 1
    .param p1, "mapWidth"    # D

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->mMapWidth:D

    .line 66
    return-void
.end method

.method protected setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->mTimestamp:J

    .line 54
    return-void
.end method

.method protected setX(D)V
    .locals 1
    .param p1, "mX"    # D

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->mX:D

    .line 58
    return-void
.end method

.method protected setY(D)V
    .locals 1
    .param p1, "mY"    # D

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->mY:D

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EmspLocationCallbackPayload [mX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->mX:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->mY:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMapWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->mMapWidth:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMapHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->mMapLength:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMapId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->mMapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->mTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

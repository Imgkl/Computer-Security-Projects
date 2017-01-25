.class public abstract Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
.super Ljava/lang/Object;
.source "AbstractMapItem.java"

# interfaces
.implements Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/InterfaceMapItem;


# instance fields
.field protected adjacencies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mHallId:J

.field protected mMapId:Ljava/lang/String;

.field protected mNaviId:Ljava/lang/String;

.field protected navigationPoint:Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->mMapId:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->mNaviId:Ljava/lang/String;

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->mHallId:J

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->adjacencies:Ljava/util/Set;

    .line 52
    new-instance v0, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    invoke-direct {v0, v2, v3, v2, v3}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;-><init>(DD)V

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->navigationPoint:Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    .line 53
    return-void
.end method


# virtual methods
.method public addAdjacency(Ljava/lang/String;)Z
    .locals 2
    .param p1, "nodeNaviId"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->adjacencies:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAdjacencies()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->adjacencies:Ljava/util/Set;

    return-object v0
.end method

.method public getHallId()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->mHallId:J

    return-wide v0
.end method

.method public getMapId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->mMapId:Ljava/lang/String;

    return-object v0
.end method

.method public getNaviCoordinates()Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->navigationPoint:Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    return-object v0
.end method

.method public getNaviId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->mNaviId:Ljava/lang/String;

    return-object v0
.end method

.method public getNaviX()D
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->navigationPoint:Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    invoke-virtual {v0}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getX()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNaviY()D
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->navigationPoint:Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    invoke-virtual {v0}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getY()D

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getType()I
.end method

.method public abstract isDrawable()Z
.end method

.method public isValidNavigationPoint()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const-wide/16 v4, 0x1

    .line 114
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->navigationPoint:Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    if-nez v1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->navigationPoint:Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getX()D

    move-result-wide v2

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->navigationPoint:Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getY()D

    move-result-wide v2

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_0

    .line 122
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAdjacencies(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "adjacencies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->adjacencies:Ljava/util/Set;

    .line 134
    return-void
.end method

.method public setHallId(J)V
    .locals 1
    .param p1, "hallId"    # J

    .prologue
    .line 137
    iput-wide p1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->mHallId:J

    .line 138
    return-void
.end method

.method public setMapId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->mMapId:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setNaviId(Ljava/lang/String;)V
    .locals 0
    .param p1, "naviId"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->mNaviId:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setNavigationCoordinates(DD)V
    .locals 1
    .param p1, "naviX"    # D
    .param p3, "naviY"    # D

    .prologue
    .line 145
    new-instance v0, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    invoke-direct {v0}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->navigationPoint:Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    .line 146
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->navigationPoint:Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    invoke-virtual {v0, p1, p2}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->setX(D)V

    .line 147
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->navigationPoint:Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    invoke-virtual {v0, p3, p4}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->setY(D)V

    .line 148
    return-void
.end method

.method public abstract toString()Ljava/lang/String;
.end method

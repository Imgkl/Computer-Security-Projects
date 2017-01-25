.class public final Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointWarp;
.super Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
.source "MapPointWarp.java"


# static fields
.field private static final DEFAULT_DIMENSIONS:I = 0x3c

.field public static final DEFAULT_NAVIGATION_WEIGHT:J = 0xaL


# instance fields
.field private final mShapeBoundingBox:Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

.field private final mWarpWeight:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJDD)V
    .locals 15
    .param p1, "mapId"    # Ljava/lang/String;
    .param p2, "naviId"    # Ljava/lang/String;
    .param p3, "hallId"    # J
    .param p5, "warpWeight"    # J
    .param p7, "naviX"    # D
    .param p9, "naviY"    # D

    .prologue
    .line 48
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;-><init>([Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V

    .line 49
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointWarp;->mMapId:Ljava/lang/String;

    .line 50
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointWarp;->mNaviId:Ljava/lang/String;

    .line 51
    move-wide/from16 v0, p3

    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointWarp;->mHallId:J

    .line 52
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointWarp;->mWarpWeight:J

    .line 53
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointWarp;->adjacencies:Ljava/util/Set;

    .line 55
    iget-object v3, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointWarp;->navigationPoint:Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    move-wide/from16 v0, p7

    invoke-virtual {v3, v0, v1}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->setX(D)V

    .line 56
    iget-object v3, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointWarp;->navigationPoint:Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    move-wide/from16 v0, p9

    invoke-virtual {v3, v0, v1}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->setY(D)V

    .line 58
    const/high16 v2, 0x41f00000    # 30.0f

    .line 59
    .local v2, "mHalfHeight":F
    new-instance v3, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointWarp;->getNaviX()D

    move-result-wide v4

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    sub-double/2addr v4, v6

    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointWarp;->getNaviY()D

    move-result-wide v6

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    sub-double/2addr v6, v8

    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointWarp;->getNaviX()D

    move-result-wide v8

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    add-double/2addr v8, v10

    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointWarp;->getNaviY()D

    move-result-wide v10

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    add-double/2addr v10, v12

    invoke-direct/range {v3 .. v11}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;-><init>(DDDD)V

    iput-object v3, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointWarp;->mShapeBoundingBox:Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    .line 64
    return-void
.end method


# virtual methods
.method public createMapItemView(Landroid/content/Context;)Lcom/eventgenie/android/ui/mapping2d/MapItemView;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    new-instance v0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;

    invoke-direct {v0, p1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;-><init>(Landroid/content/Context;)V

    .line 70
    .local v0, "view":Lcom/eventgenie/android/ui/mapping2d/MapItemView;
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointWarp;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setItemType(I)V

    .line 71
    sget v1, Lcom/eventgenie/android/R$drawable;->mapping_icons_map_vortex:I

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setBackgroundResource(I)V

    .line 72
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setFocusable(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointWarp;->getNaviId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setTag(Ljava/lang/Object;)V

    .line 74
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setVisibility(I)V

    .line 75
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointWarp;->getzOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setzOrder(I)V

    .line 76
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointWarp;->getTextBoundingBox()Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setTextBoundingBox(Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;)V

    .line 79
    return-object v0
.end method

.method public displaysText()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public getShapeBoundingBox()Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointWarp;->mShapeBoundingBox:Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    return-object v0
.end method

.method public getTextBoundingBox()Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointWarp;->mShapeBoundingBox:Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 99
    const/16 v0, 0x33

    return v0
.end method

.method public getWarpWeight()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointWarp;->mWarpWeight:J

    return-wide v0
.end method

.method public isDrawable()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public isValidShape()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v2, "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MapWarpPoint[mapId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointWarp;->getMapId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/ naviId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointWarp;->getNaviId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / hallId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointWarp;->getHallId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointWarp;->getNaviX()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointWarp;->getNaviY()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v3, " / Adj: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v3, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointWarp;->adjacencies:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    .local v0, "adj":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 125
    .end local v0    # "adj":Ljava/lang/String;
    :cond_0
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

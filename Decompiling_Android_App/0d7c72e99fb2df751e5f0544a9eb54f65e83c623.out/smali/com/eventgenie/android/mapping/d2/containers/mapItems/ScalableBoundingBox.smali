.class public Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;
.super Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;
.source "ScalableBoundingBox.java"


# direct methods
.method public constructor <init>(DDDD)V
    .locals 1
    .param p1, "minX"    # D
    .param p3, "minY"    # D
    .param p5, "maxX"    # D
    .param p7, "maxY"    # D

    .prologue
    .line 47
    invoke-direct/range {p0 .. p8}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;-><init>(DDDD)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;)V
    .locals 0
    .param p1, "box"    # Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;-><init>(Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "points":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;>;"
    invoke-direct {p0, p1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;-><init>(Ljava/lang/Iterable;)V

    .line 52
    return-void
.end method

.method public constructor <init>([Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V
    .locals 0
    .param p1, "points"    # [Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;-><init>([Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getHeight(F)D
    .locals 4
    .param p1, "scale"    # F

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getHeight()D

    move-result-wide v0

    float-to-double v2, p1

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getMaxX(F)D
    .locals 4
    .param p1, "scale"    # F

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getMaxX()D

    move-result-wide v0

    float-to-double v2, p1

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getMaxY(F)D
    .locals 4
    .param p1, "scale"    # F

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getMaxY()D

    move-result-wide v0

    float-to-double v2, p1

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getMinX(F)D
    .locals 4
    .param p1, "scale"    # F

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getMinX()D

    move-result-wide v0

    float-to-double v2, p1

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getMinY(F)D
    .locals 4
    .param p1, "scale"    # F

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getMinY()D

    move-result-wide v0

    float-to-double v2, p1

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getRectangle(F)Landroid/graphics/Rect;
    .locals 6
    .param p1, "scale"    # F

    .prologue
    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getMinX(F)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {p0, p1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getMinY(F)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p0, p1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getMaxX(F)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {p0, p1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getMaxY(F)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getWidth(F)D
    .locals 4
    .param p1, "scale"    # F

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getWidth()D

    move-result-wide v0

    float-to-double v2, p1

    mul-double/2addr v0, v2

    return-wide v0
.end method

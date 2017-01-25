.class public Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;
.super Ljava/lang/Object;
.source "BoundingBox.java"


# instance fields
.field protected mHeight:D

.field protected mMaxX:D

.field protected mMaxY:D

.field protected mMinX:D

.field protected mMinY:D

.field protected mWidth:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 5
    .param p1, "minX"    # D
    .param p3, "minY"    # D
    .param p5, "maxX"    # D
    .param p7, "maxY"    # D

    .prologue
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v0, 0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide v2, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinX:D

    .line 36
    iput-wide v2, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinY:D

    .line 37
    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMaxX:D

    .line 38
    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMaxY:D

    .line 40
    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mHeight:D

    .line 41
    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mWidth:D

    .line 44
    iput-wide p1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinX:D

    .line 45
    iput-wide p3, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinY:D

    .line 46
    iput-wide p5, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMaxX:D

    .line 47
    iput-wide p7, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMaxY:D

    .line 49
    iget-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMaxY:D

    iget-wide v2, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinY:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mHeight:D

    .line 50
    iget-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMaxX:D

    iget-wide v2, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinX:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mWidth:D

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;)V
    .locals 4
    .param p1, "box"    # Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;

    .prologue
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v0, 0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide v2, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinX:D

    .line 36
    iput-wide v2, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinY:D

    .line 37
    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMaxX:D

    .line 38
    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMaxY:D

    .line 40
    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mHeight:D

    .line 41
    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mWidth:D

    .line 54
    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->getMinX()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinX:D

    .line 55
    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->getMaxX()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMaxX:D

    .line 56
    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->getMinX()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinX:D

    .line 57
    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->getMinY()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinY:D

    .line 58
    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->getHeight()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mHeight:D

    .line 59
    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->getWidth()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mWidth:D

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 6
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
    .local p1, "points":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;>;"
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v2, 0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide v4, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinX:D

    .line 36
    iput-wide v4, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinY:D

    .line 37
    iput-wide v2, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMaxX:D

    .line 38
    iput-wide v2, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMaxY:D

    .line 40
    iput-wide v2, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mHeight:D

    .line 41
    iput-wide v2, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mWidth:D

    .line 87
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    .line 88
    .local v1, "set":Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getX()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMaxX:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 89
    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getX()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMaxX:D

    .line 92
    :cond_1
    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getX()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinX:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    .line 93
    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getX()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinX:D

    .line 96
    :cond_2
    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getY()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMaxY:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    .line 97
    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getY()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMaxY:D

    .line 100
    :cond_3
    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getY()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinY:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 101
    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getY()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinY:D

    goto :goto_0

    .line 105
    .end local v1    # "set":Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    :cond_4
    iget-wide v2, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMaxY:D

    iget-wide v4, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinY:D

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mHeight:D

    .line 106
    iget-wide v2, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMaxX:D

    iget-wide v4, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinX:D

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mWidth:D

    .line 107
    return-void
.end method

.method public constructor <init>([Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V
    .locals 8
    .param p1, "points"    # [Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    .prologue
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v4, 0x1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide v6, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinX:D

    .line 36
    iput-wide v6, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinY:D

    .line 37
    iput-wide v4, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMaxX:D

    .line 38
    iput-wide v4, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMaxY:D

    .line 40
    iput-wide v4, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mHeight:D

    .line 41
    iput-wide v4, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mWidth:D

    .line 63
    move-object v0, p1

    .local v0, "arr$":[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 64
    .local v3, "set":Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    invoke-virtual {v3}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getX()D

    move-result-wide v4

    iget-wide v6, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMaxX:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 65
    invoke-virtual {v3}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getX()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMaxX:D

    .line 68
    :cond_0
    invoke-virtual {v3}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getX()D

    move-result-wide v4

    iget-wide v6, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinX:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    .line 69
    invoke-virtual {v3}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getX()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinX:D

    .line 72
    :cond_1
    invoke-virtual {v3}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getY()D

    move-result-wide v4

    iget-wide v6, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMaxY:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    .line 73
    invoke-virtual {v3}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getY()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMaxY:D

    .line 76
    :cond_2
    invoke-virtual {v3}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getY()D

    move-result-wide v4

    iget-wide v6, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinY:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    .line 77
    invoke-virtual {v3}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getY()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinY:D

    .line 63
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v3    # "set":Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    :cond_4
    iget-wide v4, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMaxY:D

    iget-wide v6, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinY:D

    sub-double/2addr v4, v6

    iput-wide v4, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mHeight:D

    .line 82
    iget-wide v4, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMaxX:D

    iget-wide v6, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinX:D

    sub-double/2addr v4, v6

    iput-wide v4, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mWidth:D

    .line 83
    return-void
.end method


# virtual methods
.method public getHeight()D
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mHeight:D

    return-wide v0
.end method

.method public getMaxX()D
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMaxX:D

    return-wide v0
.end method

.method public getMaxY()D
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMaxY:D

    return-wide v0
.end method

.method public getMinX()D
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinX:D

    return-wide v0
.end method

.method public getMinY()D
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinY:D

    return-wide v0
.end method

.method public getWidth()D
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mWidth:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoundingBox [mMinX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinX:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMinY:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMaxX:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mMaxY:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mHeight:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/BoundingBox;->mWidth:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

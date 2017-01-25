.class public abstract Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
.super Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
.source "AbstractMapDrawableItem.java"


# static fields
.field public static final INVALID_COLOR:Ljava/lang/String; = "-1"


# instance fields
.field protected label:Ljava/lang/String;

.field protected mFavourite:Z

.field protected mFillColor:Ljava/lang/String;

.field protected mRotation:I

.field private mShapeBoundingBox:Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

.field protected final mShapePoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

.field private mTextBoundingBox:Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

.field protected mTextBoundingBoxPoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

.field protected mTextColor:Ljava/lang/String;

.field protected mVectorFormat:I

.field protected mVersion:I

.field protected mZOrder:I

.field protected mZeroBasedShapePoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;


# direct methods
.method public constructor <init>([Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V
    .locals 2
    .param p1, "shapePoints"    # [Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->label:Ljava/lang/String;

    .line 52
    const-string v0, "-1"

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mFillColor:Ljava/lang/String;

    .line 53
    const-string v0, "-1"

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mTextColor:Ljava/lang/String;

    .line 55
    iput v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mZOrder:I

    .line 56
    iput v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mRotation:I

    .line 57
    iput v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mVersion:I

    .line 58
    iput v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mVectorFormat:I

    .line 62
    iput-boolean v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mFavourite:Z

    .line 65
    iput-object p1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mShapePoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    .line 66
    return-void
.end method


# virtual methods
.method public abstract createMapItemView(Landroid/content/Context;)Lcom/eventgenie/android/ui/mapping2d/MapItemView;
.end method

.method public abstract displaysText()Z
.end method

.method public getDisplayedString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->label:Ljava/lang/String;

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    const-string v0, "."

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, ""

    .line 81
    :goto_0
    return-object v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->label:Ljava/lang/String;

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mMapId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFillColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mFillColor:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mRotation:I

    return v0
.end method

.method public getShapeBoundingBox()Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mShapeBoundingBox:Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mShapePoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    invoke-direct {v0, v1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;-><init>([Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mShapeBoundingBox:Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mShapeBoundingBox:Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    return-object v0
.end method

.method public getShapePoints()[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mShapePoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    return-object v0
.end method

.method public getTextBoundingBox()Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mTextBoundingBox:Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    if-nez v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mTextBoundingBoxPoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mTextBoundingBoxPoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    array-length v0, v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 117
    :cond_0
    new-instance v0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getZeroBasedPoints()[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;-><init>([Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mTextBoundingBox:Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    .line 122
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mTextBoundingBox:Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    return-object v0

    .line 119
    :cond_2
    new-instance v0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mTextBoundingBoxPoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    invoke-direct {v0, v1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;-><init>([Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mTextBoundingBox:Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    goto :goto_0
.end method

.method public getTextBoundingBoxPoints()[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mTextBoundingBoxPoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    return-object v0
.end method

.method public getTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getType()I
.end method

.method public getVectorFormat()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mVectorFormat:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mVersion:I

    return v0
.end method

.method public getZeroBasedPoints()[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    .locals 12

    .prologue
    .line 150
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mShapePoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 167
    :goto_0
    return-object v1

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mZeroBasedShapePoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mZeroBasedShapePoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mZeroBasedShapePoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    goto :goto_0

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mShapePoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    array-length v1, v1

    new-array v1, v1, [Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    iput-object v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mZeroBasedShapePoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    .line 158
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getShapeBoundingBox()Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getMinX()D

    move-result-wide v2

    .line 159
    .local v2, "minX":D
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getShapeBoundingBox()Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getMinY()D

    move-result-wide v4

    .line 161
    .local v4, "minY":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mShapePoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 162
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mZeroBasedShapePoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    new-instance v6, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    iget-object v7, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mShapePoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getX()D

    move-result-wide v8

    sub-double/2addr v8, v2

    iget-object v7, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mShapePoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getY()D

    move-result-wide v10

    sub-double/2addr v10, v4

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;-><init>(DD)V

    aput-object v6, v1, v0

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    :cond_2
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mZeroBasedShapePoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    goto :goto_0
.end method

.method public getzOrder()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mZOrder:I

    return v0
.end method

.method public isDrawable()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public isFavourite()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mFavourite:Z

    return v0
.end method

.method public isValidShape()Z
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getShapePoints()[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getShapePoints()[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 186
    const/4 v0, 0x1

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFavourite(Z)V
    .locals 0
    .param p1, "favourite"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mFavourite:Z

    .line 193
    return-void
.end method

.method public setFillColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "fillColor"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mFillColor:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setRotation(I)V
    .locals 0
    .param p1, "rotation"    # I

    .prologue
    .line 200
    iput p1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mRotation:I

    .line 201
    return-void
.end method

.method public setTextBoundingBox([Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V
    .locals 1
    .param p1, "points"    # [Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    .prologue
    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mTextBoundingBox:Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    .line 205
    iput-object p1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mTextBoundingBoxPoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    .line 206
    return-void
.end method

.method public setTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "textColor"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mTextColor:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setVectorFormat(I)V
    .locals 0
    .param p1, "VectorFormat"    # I

    .prologue
    .line 213
    iput p1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mVectorFormat:I

    .line 214
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 217
    iput p1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mVersion:I

    .line 218
    return-void
.end method

.method public setzOrder(I)V
    .locals 0
    .param p1, "zOrder"    # I

    .prologue
    .line 221
    iput p1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mZOrder:I

    .line 222
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AbstractMapDrawableItem [label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShapePoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mShapePoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mZeroBasedShapePoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mZeroBasedShapePoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTextBoundingBoxPoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mTextBoundingBoxPoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFillColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mFillColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTextColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mTextColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mZOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mZOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVectorFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mVectorFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShapeBoundingBox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mShapeBoundingBox:Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTextBoundingBox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mTextBoundingBox:Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFavourite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->mFavourite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

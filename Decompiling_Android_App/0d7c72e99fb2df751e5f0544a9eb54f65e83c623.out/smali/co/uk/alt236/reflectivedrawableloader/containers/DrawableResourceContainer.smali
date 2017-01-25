.class public Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;
.super Ljava/lang/Object;
.source "DrawableResourceContainer.java"


# instance fields
.field private mColourFilter:Landroid/graphics/ColorFilter;

.field private final mColourFilterColour:Ljava/lang/Integer;

.field private final mDrawableName:Ljava/lang/String;

.field private final mResourceId:I


# direct methods
.method public constructor <init>(ILjava/lang/Integer;)V
    .locals 1
    .param p1, "resourceId"    # I
    .param p2, "colourFilterColour"    # Ljava/lang/Integer;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0
    .param p1, "drawableName"    # Ljava/lang/String;
    .param p2, "resourceId"    # I
    .param p3, "colourFilterColour"    # Ljava/lang/Integer;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p2, p0, Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;->mResourceId:I

    .line 35
    iput-object p3, p0, Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;->mColourFilterColour:Ljava/lang/Integer;

    .line 36
    iput-object p1, p0, Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;->mDrawableName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private getOverridingColorFilter(I)Landroid/graphics/ColorFilter;
    .locals 7
    .param p1, "color"    # I

    .prologue
    const/4 v6, 0x0

    .line 48
    iget-object v4, p0, Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;->mColourFilter:Landroid/graphics/ColorFilter;

    if-nez v4, :cond_0

    .line 49
    const/high16 v4, 0xff0000

    and-int/2addr v4, p1

    const v5, 0xffff

    div-int v3, v4, v5

    .line 50
    .local v3, "red":I
    const v4, 0xff00

    and-int/2addr v4, p1

    div-int/lit16 v1, v4, 0xff

    .line 51
    .local v1, "green":I
    and-int/lit16 v0, p1, 0xff

    .line 53
    .local v0, "blue":I
    const/16 v4, 0x14

    new-array v2, v4, [F

    const/4 v4, 0x0

    aput v6, v2, v4

    const/4 v4, 0x1

    aput v6, v2, v4

    const/4 v4, 0x2

    aput v6, v2, v4

    const/4 v4, 0x3

    aput v6, v2, v4

    const/4 v4, 0x4

    int-to-float v5, v3

    aput v5, v2, v4

    const/4 v4, 0x5

    .line 54
    aput v6, v2, v4

    const/4 v4, 0x6

    aput v6, v2, v4

    const/4 v4, 0x7

    aput v6, v2, v4

    const/16 v4, 0x8

    aput v6, v2, v4

    const/16 v4, 0x9

    int-to-float v5, v1

    aput v5, v2, v4

    const/16 v4, 0xa

    .line 55
    aput v6, v2, v4

    const/16 v4, 0xb

    aput v6, v2, v4

    const/16 v4, 0xc

    aput v6, v2, v4

    const/16 v4, 0xd

    aput v6, v2, v4

    const/16 v4, 0xe

    int-to-float v5, v0

    aput v5, v2, v4

    const/16 v4, 0xf

    .line 56
    aput v6, v2, v4

    const/16 v4, 0x10

    aput v6, v2, v4

    const/16 v4, 0x11

    aput v6, v2, v4

    const/16 v4, 0x12

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v2, v4

    const/16 v4, 0x13

    aput v6, v2, v4

    .line 58
    .local v2, "matrix":[F
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    iput-object v4, p0, Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;->mColourFilter:Landroid/graphics/ColorFilter;

    .line 60
    .end local v0    # "blue":I
    .end local v1    # "green":I
    .end local v2    # "matrix":[F
    .end local v3    # "red":I
    :cond_0
    iget-object v4, p0, Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;->mColourFilter:Landroid/graphics/ColorFilter;

    return-object v4
.end method


# virtual methods
.method public getColourFilterColour()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;->mColourFilterColour:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDrawableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;->mDrawableName:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;->mResourceId:I

    return v0
.end method

.method public hasColourFilter()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;->mColourFilterColour:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setDrawableWithColorOverrideMatrix(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 72
    iget v0, p0, Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;->mResourceId:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    invoke-virtual {p0}, Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;->hasColourFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;->mColourFilterColour:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;->getOverridingColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public setDrawableWithPorterDuffMultiply(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 81
    iget v0, p0, Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;->mResourceId:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    invoke-virtual {p0}, Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;->hasColourFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lco/uk/alt236/reflectivedrawableloader/containers/DrawableResourceContainer;->mColourFilterColour:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

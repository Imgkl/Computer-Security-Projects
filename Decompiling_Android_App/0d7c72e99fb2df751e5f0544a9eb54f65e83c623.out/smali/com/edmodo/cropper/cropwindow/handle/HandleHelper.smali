.class abstract Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;
.super Ljava/lang/Object;
.source "HandleHelper.java"


# static fields
.field private static final UNFIXED_ASPECT_RATIO_CONSTANT:F = 1.0f


# instance fields
.field private mActiveEdges:Lcom/edmodo/cropper/cropwindow/edge/EdgePair;

.field private mHorizontalEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

.field private mVerticalEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;


# direct methods
.method constructor <init>(Lcom/edmodo/cropper/cropwindow/edge/Edge;Lcom/edmodo/cropper/cropwindow/edge/Edge;)V
    .locals 3
    .param p1, "horizontalEdge"    # Lcom/edmodo/cropper/cropwindow/edge/Edge;
    .param p2, "verticalEdge"    # Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mHorizontalEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .line 49
    iput-object p2, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mVerticalEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .line 50
    new-instance v0, Lcom/edmodo/cropper/cropwindow/edge/EdgePair;

    iget-object v1, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mHorizontalEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    iget-object v2, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mVerticalEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-direct {v0, v1, v2}, Lcom/edmodo/cropper/cropwindow/edge/EdgePair;-><init>(Lcom/edmodo/cropper/cropwindow/edge/Edge;Lcom/edmodo/cropper/cropwindow/edge/Edge;)V

    iput-object v0, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mActiveEdges:Lcom/edmodo/cropper/cropwindow/edge/EdgePair;

    .line 51
    return-void
.end method

.method private getAspectRatio(FF)F
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 152
    iget-object v5, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mVerticalEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    sget-object v6, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    if-ne v5, v6, :cond_0

    move v2, p1

    .line 153
    .local v2, "left":F
    :goto_0
    iget-object v5, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mHorizontalEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    sget-object v6, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    if-ne v5, v6, :cond_1

    move v4, p2

    .line 154
    .local v4, "top":F
    :goto_1
    iget-object v5, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mVerticalEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    sget-object v6, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    if-ne v5, v6, :cond_2

    move v3, p1

    .line 155
    .local v3, "right":F
    :goto_2
    iget-object v5, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mHorizontalEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    sget-object v6, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    if-ne v5, v6, :cond_3

    move v1, p2

    .line 157
    .local v1, "bottom":F
    :goto_3
    invoke-static {v2, v4, v3, v1}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateAspectRatio(FFFF)F

    move-result v0

    .line 159
    .local v0, "aspectRatio":F
    return v0

    .line 152
    .end local v0    # "aspectRatio":F
    .end local v1    # "bottom":F
    .end local v2    # "left":F
    .end local v3    # "right":F
    .end local v4    # "top":F
    :cond_0
    sget-object v5, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    goto :goto_0

    .line 153
    .restart local v2    # "left":F
    :cond_1
    sget-object v5, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    goto :goto_1

    .line 154
    .restart local v4    # "top":F
    :cond_2
    sget-object v5, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    goto :goto_2

    .line 155
    .restart local v3    # "right":F
    :cond_3
    sget-object v5, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    goto :goto_3
.end method


# virtual methods
.method getActiveEdges()Lcom/edmodo/cropper/cropwindow/edge/EdgePair;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mActiveEdges:Lcom/edmodo/cropper/cropwindow/edge/EdgePair;

    return-object v0
.end method

.method getActiveEdges(FFF)Lcom/edmodo/cropper/cropwindow/edge/EdgePair;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "targetAspectRatio"    # F

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->getAspectRatio(FF)F

    move-result v0

    .line 129
    .local v0, "potentialAspectRatio":F
    cmpl-float v1, v0, p3

    if-lez v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mActiveEdges:Lcom/edmodo/cropper/cropwindow/edge/EdgePair;

    iget-object v2, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mVerticalEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    iput-object v2, v1, Lcom/edmodo/cropper/cropwindow/edge/EdgePair;->primary:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .line 131
    iget-object v1, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mActiveEdges:Lcom/edmodo/cropper/cropwindow/edge/EdgePair;

    iget-object v2, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mHorizontalEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    iput-object v2, v1, Lcom/edmodo/cropper/cropwindow/edge/EdgePair;->secondary:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .line 136
    :goto_0
    iget-object v1, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mActiveEdges:Lcom/edmodo/cropper/cropwindow/edge/EdgePair;

    return-object v1

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mActiveEdges:Lcom/edmodo/cropper/cropwindow/edge/EdgePair;

    iget-object v2, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mHorizontalEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    iput-object v2, v1, Lcom/edmodo/cropper/cropwindow/edge/EdgePair;->primary:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .line 134
    iget-object v1, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mActiveEdges:Lcom/edmodo/cropper/cropwindow/edge/EdgePair;

    iget-object v2, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mVerticalEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    iput-object v2, v1, Lcom/edmodo/cropper/cropwindow/edge/EdgePair;->secondary:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    goto :goto_0
.end method

.method abstract updateCropWindow(FFFLandroid/graphics/Rect;F)V
.end method

.method updateCropWindow(FFLandroid/graphics/Rect;F)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "imageRect"    # Landroid/graphics/Rect;
    .param p4, "snapRadius"    # F

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->getActiveEdges()Lcom/edmodo/cropper/cropwindow/edge/EdgePair;

    move-result-object v7

    .line 71
    .local v7, "activeEdges":Lcom/edmodo/cropper/cropwindow/edge/EdgePair;
    iget-object v0, v7, Lcom/edmodo/cropper/cropwindow/edge/EdgePair;->primary:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .line 72
    .local v0, "primaryEdge":Lcom/edmodo/cropper/cropwindow/edge/Edge;
    iget-object v8, v7, Lcom/edmodo/cropper/cropwindow/edge/EdgePair;->secondary:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .line 74
    .local v8, "secondaryEdge":Lcom/edmodo/cropper/cropwindow/edge/Edge;
    if-eqz v0, :cond_0

    .line 75
    const/high16 v5, 0x3f800000    # 1.0f

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->adjustCoordinate(FFLandroid/graphics/Rect;FF)V

    .line 77
    :cond_0
    if-eqz v8, :cond_1

    .line 78
    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, v8

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->adjustCoordinate(FFLandroid/graphics/Rect;FF)V

    .line 79
    :cond_1
    return-void
.end method

.class Lcom/edmodo/cropper/cropwindow/handle/CenterHandleHelper;
.super Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;
.source "CenterHandleHelper.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0, v0}, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;-><init>(Lcom/edmodo/cropper/cropwindow/edge/Edge;Lcom/edmodo/cropper/cropwindow/edge/Edge;)V

    .line 29
    return-void
.end method


# virtual methods
.method updateCropWindow(FFFLandroid/graphics/Rect;F)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "targetAspectRatio"    # F
    .param p4, "imageRect"    # Landroid/graphics/Rect;
    .param p5, "snapRadius"    # F

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/edmodo/cropper/cropwindow/handle/CenterHandleHelper;->updateCropWindow(FFLandroid/graphics/Rect;F)V

    .line 83
    return-void
.end method

.method updateCropWindow(FFLandroid/graphics/Rect;F)V
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "imageRect"    # Landroid/graphics/Rect;
    .param p4, "snapRadius"    # F

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 39
    sget-object v9, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    .line 40
    .local v3, "left":F
    sget-object v9, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v8

    .line 41
    .local v8, "top":F
    sget-object v9, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v7

    .line 42
    .local v7, "right":F
    sget-object v9, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    .line 44
    .local v0, "bottom":F
    add-float v9, v3, v7

    div-float v1, v9, v10

    .line 45
    .local v1, "currentCenterX":F
    add-float v9, v8, v0

    div-float v2, v9, v10

    .line 47
    .local v2, "currentCenterY":F
    sub-float v5, p1, v1

    .line 48
    .local v5, "offsetX":F
    sub-float v6, p2, v2

    .line 51
    .local v6, "offsetY":F
    sget-object v9, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, v5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->offset(F)V

    .line 52
    sget-object v9, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, v6}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->offset(F)V

    .line 53
    sget-object v9, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, v5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->offset(F)V

    .line 54
    sget-object v9, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, v6}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->offset(F)V

    .line 57
    sget-object v9, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, p3, p4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isOutsideMargin(Landroid/graphics/Rect;F)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 58
    sget-object v9, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, p3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->snapToRect(Landroid/graphics/Rect;)F

    move-result v4

    .line 59
    .local v4, "offset":F
    sget-object v9, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, v4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->offset(F)V

    .line 66
    .end local v4    # "offset":F
    :cond_0
    :goto_0
    sget-object v9, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, p3, p4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isOutsideMargin(Landroid/graphics/Rect;F)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 67
    sget-object v9, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, p3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->snapToRect(Landroid/graphics/Rect;)F

    move-result v4

    .line 68
    .restart local v4    # "offset":F
    sget-object v9, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, v4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->offset(F)V

    .line 73
    .end local v4    # "offset":F
    :cond_1
    :goto_1
    return-void

    .line 60
    :cond_2
    sget-object v9, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, p3, p4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isOutsideMargin(Landroid/graphics/Rect;F)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 61
    sget-object v9, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, p3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->snapToRect(Landroid/graphics/Rect;)F

    move-result v4

    .line 62
    .restart local v4    # "offset":F
    sget-object v9, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, v4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->offset(F)V

    goto :goto_0

    .line 69
    .end local v4    # "offset":F
    :cond_3
    sget-object v9, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, p3, p4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isOutsideMargin(Landroid/graphics/Rect;F)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 70
    sget-object v9, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, p3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->snapToRect(Landroid/graphics/Rect;)F

    move-result v4

    .line 71
    .restart local v4    # "offset":F
    sget-object v9, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v9, v4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->offset(F)V

    goto :goto_1
.end method

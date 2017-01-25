.class public Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;
.super Landroid/widget/AbsoluteLayout;
.source "AbsoluteLayoutEg.java"


# static fields
.field private static final NAVIGATION_GRID_COLOUR:I

.field private static final NONE:I = 0x0

.field private static final PATH_ANIMATION_STEPS:I = 0x64

.field private static final PIXELS_PER_METER:F = 100.0f

.field private static final VISITOR_LOCATION_CENTER_DOT_RADIUS:F = 10.0f

.field private static final VISITOR_LOCATION_FILL_COLOR:I

.field private static final VISITOR_LOCATION_RADIUS:F = 250.0f

.field private static final VISITOR_LOCATION_STROKE_COLOR:I = -0xffff01

.field private static final ZOOM:I = 0x2


# instance fields
.field private bmImage:Landroid/graphics/Bitmap;

.field private mHallId:J

.field private mHandler:Landroid/os/Handler;

.field private mMode:I

.field private mNaviGridCoordinates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;",
            "Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNaviGridPaint:Landroid/graphics/Paint;

.field private mNaviPaint:Landroid/graphics/Paint;

.field private mNaviPath:Landroid/graphics/Path;

.field private mNavigationPathmeasure:Landroid/graphics/PathMeasure;

.field private mNavigationResult:Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

.field private final mPlotNaviGrid:Z

.field private mPz_scale:F

.field private mScaleFactor:Ljava/lang/Float;

.field private mTmpPath:Landroid/graphics/Path;

.field private mTmpPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTouch_oldDist:F

.field private mTouch_start:Landroid/graphics/PointF;

.field private mTwoDscroller:Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;

.field private mVisitorCurrentX:D

.field private mVisitorCurrentY:D

.field private mVisitorLocationPaint:Landroid/graphics/Paint;

.field private miCurStep:I

.field private mtouch_mid:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-string v0, "#60B1D3FF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->VISITOR_LOCATION_FILL_COLOR:I

    .line 75
    const-string v0, "#FFFFEF00"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->NAVIGATION_GRID_COLOUR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 114
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mScaleFactor:Ljava/lang/Float;

    .line 89
    iput-wide v2, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mVisitorCurrentX:D

    .line 90
    iput-wide v2, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mVisitorCurrentY:D

    .line 96
    iput v4, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mMode:I

    .line 99
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mTouch_start:Landroid/graphics/PointF;

    .line 100
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mtouch_mid:Landroid/graphics/PointF;

    .line 101
    iput v1, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mTouch_oldDist:F

    .line 102
    iput v1, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mPz_scale:F

    .line 103
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mHallId:J

    .line 106
    iput v4, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->miCurStep:I

    .line 109
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mTmpPath:Landroid/graphics/Path;

    .line 115
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isShowNavigationGrid()Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mPlotNaviGrid:Z

    .line 116
    invoke-direct {p0, p1}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->init(Landroid/content/Context;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 120
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mScaleFactor:Ljava/lang/Float;

    .line 89
    iput-wide v2, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mVisitorCurrentX:D

    .line 90
    iput-wide v2, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mVisitorCurrentY:D

    .line 96
    iput v4, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mMode:I

    .line 99
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mTouch_start:Landroid/graphics/PointF;

    .line 100
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mtouch_mid:Landroid/graphics/PointF;

    .line 101
    iput v1, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mTouch_oldDist:F

    .line 102
    iput v1, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mPz_scale:F

    .line 103
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mHallId:J

    .line 106
    iput v4, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->miCurStep:I

    .line 109
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mTmpPath:Landroid/graphics/Path;

    .line 121
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isShowNavigationGrid()Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mPlotNaviGrid:Z

    .line 122
    invoke-direct {p0, p1}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->init(Landroid/content/Context;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mScaleFactor:Ljava/lang/Float;

    .line 89
    iput-wide v2, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mVisitorCurrentX:D

    .line 90
    iput-wide v2, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mVisitorCurrentY:D

    .line 96
    iput v4, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mMode:I

    .line 99
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mTouch_start:Landroid/graphics/PointF;

    .line 100
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mtouch_mid:Landroid/graphics/PointF;

    .line 101
    iput v1, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mTouch_oldDist:F

    .line 102
    iput v1, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mPz_scale:F

    .line 103
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mHallId:J

    .line 106
    iput v4, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->miCurStep:I

    .line 109
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mTmpPath:Landroid/graphics/Path;

    .line 127
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isShowNavigationGrid()Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mPlotNaviGrid:Z

    .line 128
    invoke-direct {p0, p1}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->init(Landroid/content/Context;)V

    .line 129
    return-void
.end method

.method private calculatePath()V
    .locals 14

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const-wide/16 v12, 0x1

    .line 132
    iget v6, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mMode:I

    if-ne v6, v7, :cond_0

    .line 133
    iput-object v8, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mNaviPath:Landroid/graphics/Path;

    .line 167
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v6, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mScaleFactor:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 138
    .local v0, "draw_scale":F
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->getPaddingTop()I

    move-result v5

    .line 139
    .local v5, "padding_top":I
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->getPaddingLeft()I

    move-result v4

    .line 141
    .local v4, "padding_left":I
    iget-object v6, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mNavigationResult:Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mNaviPaint:Landroid/graphics/Paint;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mNavigationResult:Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    invoke-virtual {v6}, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->getNavigationPointsSize()I

    move-result v6

    if-lt v6, v7, :cond_4

    .line 142
    iget-object v6, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mTmpPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    .line 144
    const/4 v1, 0x1

    .line 145
    .local v1, "firstSet":Z
    iget-object v6, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mNavigationResult:Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    invoke-virtual {v6}, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->getNavigationPoints()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mTmpPoints:Ljava/util/List;

    .line 147
    iget-object v6, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mTmpPoints:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    .line 148
    .local v3, "mapItem":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    iget-wide v6, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mHallId:J

    invoke-static {v3, v6, v7}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->isThisFromThisHall(Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;J)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 149
    invoke-virtual {v3}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviX()D

    move-result-wide v6

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviY()D

    move-result-wide v6

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_1

    .line 150
    if-eqz v1, :cond_2

    .line 151
    iget-object v6, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mTmpPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviX()D

    move-result-wide v8

    float-to-double v10, v0

    mul-double/2addr v8, v10

    double-to-float v7, v8

    int-to-float v8, v4

    add-float/2addr v7, v8

    invoke-virtual {v3}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviY()D

    move-result-wide v8

    float-to-double v10, v0

    mul-double/2addr v8, v10

    double-to-float v8, v8

    int-to-float v9, v5

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 154
    const/4 v1, 0x0

    goto :goto_1

    .line 156
    :cond_2
    iget-object v6, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mTmpPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviX()D

    move-result-wide v8

    float-to-double v10, v0

    mul-double/2addr v8, v10

    double-to-float v7, v8

    int-to-float v8, v4

    add-float/2addr v7, v8

    invoke-virtual {v3}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviY()D

    move-result-wide v8

    float-to-double v10, v0

    mul-double/2addr v8, v10

    double-to-float v8, v8

    int-to-float v9, v5

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 163
    .end local v3    # "mapItem":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    :cond_3
    iget-object v6, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mTmpPath:Landroid/graphics/Path;

    iput-object v6, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mNaviPath:Landroid/graphics/Path;

    goto/16 :goto_0

    .line 165
    .end local v1    # "firstSet":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    iput-object v8, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mNaviPath:Landroid/graphics/Path;

    goto/16 :goto_0
.end method

.method private dispachClickToChildren(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 180
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 183
    .local v0, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_2

    .line 184
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 185
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 186
    :cond_0
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 187
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 192
    iget-object v3, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mTouch_start:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mTouch_start:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    invoke-virtual {v2}, Landroid/view/View;->performClick()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    const/4 v3, 0x1

    .line 200
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return v3

    .line 183
    .restart local v2    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 200
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private drawCurrentLocationMarker(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    .line 214
    iget-wide v8, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mVisitorCurrentX:D

    cmpl-double v7, v8, v10

    if-lez v7, :cond_0

    iget-wide v8, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mVisitorCurrentY:D

    cmpl-double v7, v8, v10

    if-lez v7, :cond_0

    .line 215
    iget-object v7, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mVisitorLocationPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 217
    iget-object v7, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mScaleFactor:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 218
    .local v2, "draw_scale":F
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->getPaddingTop()I

    move-result v6

    .line 219
    .local v6, "padding_top":I
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->getPaddingLeft()I

    move-result v5

    .line 222
    .local v5, "padding_left":I
    iget-wide v8, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mVisitorCurrentX:D

    float-to-double v10, v2

    mul-double/2addr v8, v10

    double-to-float v7, v8

    int-to-float v8, v5

    add-float v0, v7, v8

    .line 223
    .local v0, "actualX":F
    iget-wide v8, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mVisitorCurrentY:D

    float-to-double v10, v2

    mul-double/2addr v8, v10

    double-to-float v7, v8

    int-to-float v8, v6

    add-float v1, v7, v8

    .line 224
    .local v1, "actualY":F
    const/high16 v7, 0x437a0000    # 250.0f

    mul-float v4, v7, v2

    .line 225
    .local v4, "outerRadius":F
    const/high16 v7, 0x41200000    # 10.0f

    mul-float v3, v7, v2

    .line 227
    .local v3, "innerRadius":F
    iget-object v7, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mVisitorLocationPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 228
    iget-object v7, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mVisitorLocationPaint:Landroid/graphics/Paint;

    sget v8, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->VISITOR_LOCATION_FILL_COLOR:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    iget-object v7, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mVisitorLocationPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 236
    iget-object v7, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mVisitorLocationPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 237
    iget-object v7, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mVisitorLocationPaint:Landroid/graphics/Paint;

    const v8, -0xffff01

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    iget-object v7, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mVisitorLocationPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 245
    iget-object v7, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mVisitorLocationPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 246
    iget-object v7, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mVisitorLocationPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 252
    .end local v0    # "actualX":F
    .end local v1    # "actualY":F
    .end local v2    # "draw_scale":F
    .end local v3    # "innerRadius":F
    .end local v4    # "outerRadius":F
    .end local v5    # "padding_left":I
    .end local v6    # "padding_top":I
    :cond_0
    return-void
.end method

.method private drawNavigationGrid(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 255
    iget v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 271
    :cond_0
    return-void

    .line 256
    :cond_1
    iget-boolean v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mPlotNaviGrid:Z

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mNaviGridCoordinates:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mNaviGridCoordinates:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mScaleFactor:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 260
    .local v6, "draw_scale":F
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->getPaddingTop()I

    move-result v10

    .line 261
    .local v10, "padding_top":I
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->getPaddingLeft()I

    move-result v9

    .line 263
    .local v9, "padding_left":I
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mNaviGridCoordinates:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 264
    .local v8, "lineCoords":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;>;"
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    invoke-virtual {v0}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getX()D

    move-result-wide v0

    float-to-double v2, v6

    mul-double/2addr v0, v2

    double-to-float v0, v0

    int-to-float v1, v9

    add-float/2addr v1, v0

    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    invoke-virtual {v0}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getY()D

    move-result-wide v2

    float-to-double v4, v6

    mul-double/2addr v2, v4

    double-to-float v0, v2

    int-to-float v2, v10

    add-float/2addr v2, v0

    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    invoke-virtual {v0}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getX()D

    move-result-wide v4

    float-to-double v12, v6

    mul-double/2addr v4, v12

    double-to-float v0, v4

    int-to-float v3, v9

    add-float/2addr v3, v0

    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    invoke-virtual {v0}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getY()D

    move-result-wide v4

    float-to-double v12, v6

    mul-double/2addr v4, v12

    double-to-float v0, v4

    int-to-float v4, v10

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mNaviGridPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawNavigationMarker(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 274
    iget-object v2, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mNaviPath:Landroid/graphics/Path;

    if-eqz v2, :cond_0

    .line 275
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 276
    .local v1, "mxTransform":Landroid/graphics/Matrix;
    new-instance v2, Landroid/graphics/PathMeasure;

    iget-object v3, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mNaviPath:Landroid/graphics/Path;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v2, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mNavigationPathmeasure:Landroid/graphics/PathMeasure;

    .line 277
    iget-object v2, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mNavigationPathmeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v0, v2, v3

    .line 279
    .local v0, "fSegmentLen":F
    iget v2, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->miCurStep:I

    const/16 v3, 0x64

    if-gt v2, v3, :cond_1

    .line 281
    iget-object v2, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mNavigationPathmeasure:Landroid/graphics/PathMeasure;

    iget v3, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->miCurStep:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/graphics/PathMeasure;->getMatrix(FLandroid/graphics/Matrix;I)Z

    .line 286
    iget-object v2, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 290
    iget-object v2, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->bmImage:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 291
    iget v2, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->miCurStep:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->miCurStep:I

    .line 292
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->invalidate()V

    .line 298
    .end local v0    # "fSegmentLen":F
    .end local v1    # "mxTransform":Landroid/graphics/Matrix;
    :cond_0
    :goto_0
    return-void

    .line 294
    .restart local v0    # "fSegmentLen":F
    .restart local v1    # "mxTransform":Landroid/graphics/Matrix;
    :cond_1
    iput v4, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->miCurStep:I

    .line 295
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->invalidate()V

    goto :goto_0
.end method

.method private drawNavigationPath(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->calculatePath()V

    .line 302
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mNaviPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mNaviPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mNaviPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 305
    :cond_0
    return-void
.end method

.method private getVisibleCentre()Landroid/graphics/PointF;
    .locals 4

    .prologue
    .line 317
    iget-object v2, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mTwoDscroller:Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;

    if-nez v2, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;

    iput-object v2, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mTwoDscroller:Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;

    .line 321
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mTwoDscroller:Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;

    invoke-virtual {v2}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mTwoDscroller:Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;

    invoke-virtual {v3}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v0, v2

    .line 322
    .local v0, "centreX":F
    iget-object v2, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mTwoDscroller:Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;

    invoke-virtual {v2}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mTwoDscroller:Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;

    invoke-virtual {v3}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v1, v2

    .line 324
    .local v1, "centreY":F
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$drawable;->star_gold:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->bmImage:Landroid/graphics/Bitmap;

    .line 329
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mNaviGridPaint:Landroid/graphics/Paint;

    .line 330
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mNaviGridPaint:Landroid/graphics/Paint;

    sget v1, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->NAVIGATION_GRID_COLOUR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mVisitorLocationPaint:Landroid/graphics/Paint;

    .line 332
    return-void
.end method

.method private static midPoint(Landroid/graphics/PointF;Lcom/eventgenie/android/ui/util/WrapMotionEvent;)V
    .locals 7
    .param p0, "point"    # Landroid/graphics/PointF;
    .param p1, "event"    # Lcom/eventgenie/android/ui/util/WrapMotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 438
    invoke-virtual {p1, v5}, Lcom/eventgenie/android/ui/util/WrapMotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v6}, Lcom/eventgenie/android/ui/util/WrapMotionEvent;->getX(I)F

    move-result v3

    add-float v0, v2, v3

    .line 439
    .local v0, "x":F
    invoke-virtual {p1, v5}, Lcom/eventgenie/android/ui/util/WrapMotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v6}, Lcom/eventgenie/android/ui/util/WrapMotionEvent;->getY(I)F

    move-result v3

    add-float v1, v2, v3

    .line 440
    .local v1, "y":F
    div-float v2, v0, v4

    div-float v3, v1, v4

    invoke-virtual {p0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 443
    return-void
.end method

.method private static spacing(Lcom/eventgenie/android/ui/util/WrapMotionEvent;)F
    .locals 6
    .param p0, "event"    # Lcom/eventgenie/android/ui/util/WrapMotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 448
    invoke-virtual {p0, v4}, Lcom/eventgenie/android/ui/util/WrapMotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/ui/util/WrapMotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 449
    .local v0, "x":F
    invoke-virtual {p0, v4}, Lcom/eventgenie/android/ui/util/WrapMotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/ui/util/WrapMotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 450
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method


# virtual methods
.method public clearNavigationPath()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mNavigationResult:Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    .line 171
    return-void
.end method

.method public clearVisitorCurrentLocation()V
    .locals 2

    .prologue
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 174
    iput-wide v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mVisitorCurrentX:D

    .line 175
    iput-wide v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mVisitorCurrentY:D

    .line 176
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 205
    const/16 v0, 0x1f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 206
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 207
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 208
    invoke-direct {p0, p1}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->drawNavigationPath(Landroid/graphics/Canvas;)V

    .line 209
    invoke-direct {p0, p1}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->drawNavigationMarker(Landroid/graphics/Canvas;)V

    .line 210
    invoke-direct {p0, p1}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->drawCurrentLocationMarker(Landroid/graphics/Canvas;)V

    .line 211
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mScaleFactor:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->drawNavigationGrid(Landroid/graphics/Canvas;)V

    .line 339
    iget v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mPz_scale:F

    iget v1, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mPz_scale:F

    invoke-direct {p0}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->getVisibleCentre()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-direct {p0}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->getVisibleCentre()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 344
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 349
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "rawEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v7, 0x41200000    # 10.0f

    const/4 v8, 0x2

    .line 354
    invoke-static {p1}, Lcom/eventgenie/android/ui/util/WrapMotionEvent;->wrap(Landroid/view/MotionEvent;)Lcom/eventgenie/android/ui/util/WrapMotionEvent;

    move-result-object v1

    .line 356
    .local v1, "event":Lcom/eventgenie/android/ui/util/WrapMotionEvent;
    invoke-virtual {v1}, Lcom/eventgenie/android/ui/util/WrapMotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_0

    .line 402
    :cond_0
    :goto_0
    :pswitch_0
    return v10

    .line 358
    :pswitch_1
    iget-object v6, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mTouch_start:Landroid/graphics/PointF;

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/util/WrapMotionEvent;->getX()F

    move-result v7

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/util/WrapMotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 361
    :pswitch_2
    invoke-virtual {p0, v10}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->requestDisallowInterceptTouchEvent(Z)V

    .line 362
    invoke-static {v1}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->spacing(Lcom/eventgenie/android/ui/util/WrapMotionEvent;)F

    move-result v6

    iput v6, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mTouch_oldDist:F

    .line 364
    iget v6, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mTouch_oldDist:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 365
    iget-object v6, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mtouch_mid:Landroid/graphics/PointF;

    invoke-static {v6, v1}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->midPoint(Landroid/graphics/PointF;Lcom/eventgenie/android/ui/util/WrapMotionEvent;)V

    .line 366
    iput v8, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mMode:I

    goto :goto_0

    .line 370
    :pswitch_3
    invoke-virtual {v1}, Lcom/eventgenie/android/ui/util/WrapMotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mTouch_start:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v4, v6

    .line 371
    .local v4, "xDiff":I
    invoke-virtual {v1}, Lcom/eventgenie/android/ui/util/WrapMotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mTouch_start:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v5, v6

    .line 372
    .local v5, "yDiff":I
    if-ge v4, v11, :cond_1

    if-ge v5, v11, :cond_1

    .line 373
    invoke-direct {p0, p1}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->dispachClickToChildren(Landroid/view/MotionEvent;)Z

    .line 377
    .end local v4    # "xDiff":I
    .end local v5    # "yDiff":I
    :cond_1
    :pswitch_4
    invoke-virtual {p0, v9}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->requestDisallowInterceptTouchEvent(Z)V

    .line 378
    iget v6, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mMode:I

    if-ne v6, v8, :cond_2

    .line 380
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 381
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 382
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "scale"

    iget v7, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mPz_scale:F

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 384
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 385
    iget-object v6, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 387
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    iput v9, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mMode:I

    .line 388
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mPz_scale:F

    goto :goto_0

    .line 391
    :pswitch_5
    iget v6, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mMode:I

    if-ne v6, v8, :cond_0

    .line 392
    invoke-static {v1}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->spacing(Lcom/eventgenie/android/ui/util/WrapMotionEvent;)F

    move-result v3

    .line 393
    .local v3, "newDist":F
    cmpl-float v6, v3, v7

    if-lez v6, :cond_0

    .line 394
    iget v6, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mTouch_oldDist:F

    div-float v6, v3, v6

    invoke-static {v6}, Lcom/eventgenie/android/mapping/d2/ZoomHelper;->limitZoom(F)F

    move-result v6

    iput v6, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mPz_scale:F

    .line 395
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->invalidate()V

    goto/16 :goto_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public setHallId(J)V
    .locals 1
    .param p1, "hallId"    # J

    .prologue
    .line 406
    iput-wide p1, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mHallId:J

    .line 407
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mHandler:Landroid/os/Handler;

    .line 411
    return-void
.end method

.method public setNavigationGrid(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;",
            "Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 414
    .local p1, "naviGridCoordinates":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;>;>;"
    iput-object p1, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mNaviGridCoordinates:Ljava/util/Set;

    .line 415
    return-void
.end method

.method public setNavigationPath(Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;Landroid/graphics/Paint;Ljava/lang/Float;)V
    .locals 0
    .param p1, "result"    # Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "scaleFactor"    # Ljava/lang/Float;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mNavigationResult:Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    .line 420
    iput-object p2, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mNaviPaint:Landroid/graphics/Paint;

    .line 421
    iput-object p3, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mScaleFactor:Ljava/lang/Float;

    .line 422
    return-void
.end method

.method public setScaleFactor(F)V
    .locals 1
    .param p1, "scaleFactor"    # F

    .prologue
    .line 425
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mScaleFactor:Ljava/lang/Float;

    .line 426
    return-void
.end method

.method public setVisitorCurrentLocation(DDLandroid/graphics/Paint;Ljava/lang/Float;)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "scalefactor"    # Ljava/lang/Float;

    .prologue
    .line 429
    iput-object p5, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mVisitorLocationPaint:Landroid/graphics/Paint;

    .line 430
    iput-object p6, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mScaleFactor:Ljava/lang/Float;

    .line 431
    iput-wide p1, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mVisitorCurrentX:D

    .line 432
    iput-wide p3, p0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->mVisitorCurrentY:D

    .line 433
    return-void
.end method

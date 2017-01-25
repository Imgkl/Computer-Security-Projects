.class public Lcom/eventgenie/android/ui/mapping2d/MapItemView;
.super Landroid/widget/TextView;
.source "MapItemView.java"

# interfaces
.implements Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/InterfaceMapItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/ui/mapping2d/MapItemView$1;,
        Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;
    }
.end annotation


# static fields
.field private static final DEFAULT_FILL_COLOUR:I

.field private static final DEFAULT_OUTLINE_COLOUR:I

.field private static final DEFAULT_TEXT_COLOUR:I

.field private static final MINIMUM_WIDTH_TO_DISPLAY_TEXT:F = 20.0f

.field private static final TEXT_BOUNDING_BOX_COLOUR:I

.field private static final TEXT_BOX_COVERAGE:F = 0.8f


# instance fields
.field private final DEFAULT_TEXT_SIZE:F

.field private hasTextAdjustmentRun:Z

.field private mAbsLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

.field private mBgStartX:F

.field private mBgStartY:F

.field private mBgX:F

.field private mBgY:F

.field private mFillColor:I

.field private mItemType:I

.field private mOutlineColor:I

.field private mRotateText:Z

.field private mScaleFactor:F

.field private mShapePaint:Landroid/graphics/Paint;

.field private mShapePath:Landroid/graphics/Path;

.field private mTextBoundingBox:Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

.field private mTextBoundingPaint:Landroid/graphics/Paint;

.field private mTextBoundingRect:Landroid/graphics/Rect;

.field private mTextColor:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mValueCache:Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

.field private mZOrder:I

.field private mZeroBasedShapePoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "#FFFFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->DEFAULT_FILL_COLOUR:I

    .line 57
    const-string v0, "#FF000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->DEFAULT_TEXT_COLOUR:I

    .line 58
    const-string v0, "#FFC0C0C0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->DEFAULT_OUTLINE_COLOUR:I

    .line 59
    const-string v0, "#AA00FF00"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->TEXT_BOUNDING_BOX_COLOUR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v0, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;-><init>(Lcom/eventgenie/android/ui/mapping2d/MapItemView$1;)V

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mValueCache:Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    .line 65
    sget v0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->DEFAULT_FILL_COLOUR:I

    iput v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mFillColor:I

    .line 66
    sget v0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->DEFAULT_TEXT_COLOUR:I

    iput v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextColor:I

    .line 67
    sget v0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->DEFAULT_OUTLINE_COLOUR:I

    iput v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mOutlineColor:I

    .line 68
    iput v2, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mZOrder:I

    .line 77
    iput-boolean v2, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mRotateText:Z

    .line 79
    iput v2, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mItemType:I

    .line 86
    iput-boolean v2, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->hasTextAdjustmentRun:Z

    .line 92
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->DEFAULT_TEXT_SIZE:F

    .line 93
    invoke-direct {p0}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->init()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance v0, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;-><init>(Lcom/eventgenie/android/ui/mapping2d/MapItemView$1;)V

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mValueCache:Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    .line 65
    sget v0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->DEFAULT_FILL_COLOUR:I

    iput v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mFillColor:I

    .line 66
    sget v0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->DEFAULT_TEXT_COLOUR:I

    iput v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextColor:I

    .line 67
    sget v0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->DEFAULT_OUTLINE_COLOUR:I

    iput v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mOutlineColor:I

    .line 68
    iput v2, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mZOrder:I

    .line 77
    iput-boolean v2, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mRotateText:Z

    .line 79
    iput v2, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mItemType:I

    .line 86
    iput-boolean v2, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->hasTextAdjustmentRun:Z

    .line 98
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->DEFAULT_TEXT_SIZE:F

    .line 99
    invoke-direct {p0}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->init()V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    new-instance v0, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;-><init>(Lcom/eventgenie/android/ui/mapping2d/MapItemView$1;)V

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mValueCache:Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    .line 65
    sget v0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->DEFAULT_FILL_COLOUR:I

    iput v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mFillColor:I

    .line 66
    sget v0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->DEFAULT_TEXT_COLOUR:I

    iput v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextColor:I

    .line 67
    sget v0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->DEFAULT_OUTLINE_COLOUR:I

    iput v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mOutlineColor:I

    .line 68
    iput v2, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mZOrder:I

    .line 77
    iput-boolean v2, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mRotateText:Z

    .line 79
    iput v2, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mItemType:I

    .line 86
    iput-boolean v2, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->hasTextAdjustmentRun:Z

    .line 104
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->DEFAULT_TEXT_SIZE:F

    .line 105
    invoke-direct {p0}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->init()V

    .line 106
    return-void
.end method

.method private adjustTextAnnotationTextSize()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/high16 v11, 0x42c80000    # 100.0f

    const v10, 0x3f4ccccd    # 0.8f

    .line 109
    iput-boolean v13, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->hasTextAdjustmentRun:Z

    .line 110
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, "text":Ljava/lang/String;
    iget-object v7, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 112
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextBoundingRect:Landroid/graphics/Rect;

    .line 114
    iget-object v7, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v5, v12, v8, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 130
    iget-object v7, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mValueCache:Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    iget v7, v7, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;->textBoxHeight:I

    iget-object v8, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mValueCache:Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    iget v8, v8, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;->textBoxWidth:I

    mul-int/lit8 v8, v8, 0x2

    if-le v7, v8, :cond_0

    .line 131
    iput-boolean v13, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mRotateText:Z

    .line 132
    iget-object v7, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mValueCache:Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    iget v7, v7, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;->textBoxWidth:I

    int-to-float v7, v7

    mul-float v3, v7, v10

    .line 133
    .local v3, "targetH":F
    iget-object v7, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mValueCache:Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    iget v7, v7, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;->textBoxHeight:I

    int-to-float v7, v7

    mul-float v4, v7, v10

    .line 140
    .local v4, "targetW":F
    :goto_0
    iget-object v7, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextBoundingRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextBoundingRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int v0, v7, v8

    .line 141
    .local v0, "h":I
    int-to-float v7, v0

    div-float v7, v3, v7

    mul-float v1, v7, v11

    .line 143
    .local v1, "sizeh":F
    iget-object v7, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextBoundingRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextBoundingRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int v6, v7, v8

    .line 144
    .local v6, "w":I
    int-to-float v7, v6

    div-float v7, v4, v7

    mul-float v2, v7, v11

    .line 146
    .local v2, "sizew":F
    iget-object v7, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 149
    iget-object v7, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v5, v12, v8, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 150
    iget-object v7, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mValueCache:Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    iget-object v8, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextBoundingRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mValueCache:Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    iget v9, v9, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;->textBoxHeight:I

    iget-object v10, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextBoundingRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v11, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextBoundingRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iput v8, v7, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;->textBaseline:I

    .line 154
    return-void

    .line 135
    .end local v0    # "h":I
    .end local v1    # "sizeh":F
    .end local v2    # "sizew":F
    .end local v3    # "targetH":F
    .end local v4    # "targetW":F
    .end local v6    # "w":I
    :cond_0
    iput-boolean v12, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mRotateText:Z

    .line 136
    iget-object v7, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mValueCache:Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    iget v7, v7, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;->textBoxHeight:I

    int-to-float v7, v7

    mul-float v3, v7, v10

    .line 137
    .restart local v3    # "targetH":F
    iget-object v7, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mValueCache:Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    iget v7, v7, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;->textBoxWidth:I

    int-to-float v7, v7

    mul-float v4, v7, v10

    .restart local v4    # "targetW":F
    goto :goto_0
.end method

.method private adjustTextSize()V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->isItemWithText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->adjustTextAnnotationTextSize()V

    .line 160
    :cond_0
    return-void
.end method

.method private drawMapItemImage(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 163
    iget v2, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mItemType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 164
    iget-object v2, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextBoundingBox:Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    if-nez v2, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ MAPVIEW: IconName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/android/db/config/IconManager;->getMappingIconAnnotation(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 169
    .local v1, "resId":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ MAPVIEW: resId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 173
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextBoundingBox:Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    iget v4, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mScaleFactor:F

    invoke-virtual {v3, v4}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getRectangle(F)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 175
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method private drawMapItemShape(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x1

    .line 180
    iget-object v4, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mShapePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 181
    iput v8, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mBgStartX:F

    .line 182
    iput v8, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mBgStartY:F

    .line 185
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mZeroBasedShapePoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    .local v0, "arr$":[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 186
    .local v3, "set":Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    invoke-virtual {v3}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getX()D

    move-result-wide v4

    iget v6, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mScaleFactor:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mBgX:F

    .line 187
    invoke-virtual {v3}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;->getY()D

    move-result-wide v4

    iget v6, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mScaleFactor:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mBgY:F

    .line 189
    iget v4, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mBgStartX:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_0

    .line 190
    iget v4, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mBgX:F

    iput v4, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mBgStartX:F

    .line 191
    iget v4, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mBgY:F

    iput v4, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mBgStartY:F

    .line 192
    iget-object v4, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mShapePath:Landroid/graphics/Path;

    iget v5, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mBgStartX:F

    iget v6, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mBgStartY:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 185
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    :cond_0
    iget-object v4, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mShapePath:Landroid/graphics/Path;

    iget v5, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mBgX:F

    iget v6, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mBgY:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 198
    .end local v3    # "set":Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    :cond_1
    iget-object v4, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mShapePath:Landroid/graphics/Path;

    iget v5, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mBgStartX:F

    iget v6, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mBgStartY:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 199
    iget v4, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->DEFAULT_TEXT_SIZE:F

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setTextSize(F)V

    .line 200
    invoke-direct {p0, p1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->drawPath(Landroid/graphics/Canvas;)V

    .line 201
    return-void
.end method

.method private drawMapItemText(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 204
    invoke-direct {p0}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->isItemWithText()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    iget-boolean v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->hasTextAdjustmentRun:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->adjustTextSize()V

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->isTextDisplayable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    iget-boolean v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mRotateText:Z

    if-eqz v0, :cond_1

    .line 211
    const/high16 v0, -0x3d4c0000    # -90.0f

    iget-object v1, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mValueCache:Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    iget v1, v1, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;->viewWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mValueCache:Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    iget v2, v2, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;->viewHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 217
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mValueCache:Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    iget v1, v1, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;->textBoxTextStartX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mValueCache:Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    iget v2, v2, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;->textBoxTextStartY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 224
    :cond_2
    return-void
.end method

.method private drawPath(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mShapePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 229
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mShapePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mFillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mShapePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 232
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mShapePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 233
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mShapePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mOutlineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mShapePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 235
    return-void
.end method

.method private drawTextBoundingBox(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 238
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isDebugBoundingBoxes()Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-direct {p0}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->isItemWithText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->isTextDisplayable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextBoundingBox:Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextBoundingBox:Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    iget v1, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mScaleFactor:F

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getMinX(F)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextBoundingBox:Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    iget v2, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mScaleFactor:F

    invoke-virtual {v0, v2}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getMinY(F)D

    move-result-wide v2

    double-to-int v0, v2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextBoundingBox:Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    iget v3, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mScaleFactor:F

    invoke-virtual {v0, v3}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getMaxX(F)D

    move-result-wide v4

    double-to-int v0, v4

    int-to-float v3, v0

    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextBoundingBox:Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    iget v4, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mScaleFactor:F

    invoke-virtual {v0, v4}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getMaxY(F)D

    move-result-wide v4

    double-to-int v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextBoundingPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 263
    const/4 v0, 0x0

    iput v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mItemType:I

    .line 264
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextPaint:Landroid/graphics/Paint;

    .line 265
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextBoundingPaint:Landroid/graphics/Paint;

    .line 266
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextBoundingPaint:Landroid/graphics/Paint;

    sget v1, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->TEXT_BOUNDING_BOX_COLOUR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 267
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 268
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 269
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 271
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mShapePaint:Landroid/graphics/Paint;

    .line 272
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mShapePath:Landroid/graphics/Path;

    .line 273
    return-void
.end method

.method private isItemWithText()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 276
    iget v1, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mItemType:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mItemType:I

    if-ne v1, v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTextDisplayable()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v1, 0x0

    .line 285
    iget-object v2, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mValueCache:Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    iget v2, v2, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;->textBoxHeight:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mValueCache:Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    iget v2, v2, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;->textBoxWidth:I

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 290
    :cond_1
    :goto_0
    return v0

    .line 287
    :cond_2
    iget-boolean v2, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mRotateText:Z

    if-eqz v2, :cond_3

    .line 288
    iget-object v2, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mValueCache:Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    iget v2, v2, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;->textBoxHeight:I

    int-to-float v2, v2

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 290
    :cond_3
    iget-object v2, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mValueCache:Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    iget v2, v2, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;->textBoxWidth:I

    int-to-float v2, v2

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getItemType()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mItemType:I

    return v0
.end method

.method public getzOrder()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mZOrder:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mZeroBasedShapePoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mZeroBasedShapePoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    array-length v0, v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mAbsLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    if-nez v0, :cond_2

    .line 301
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    iput-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mAbsLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    .line 304
    :cond_2
    iget v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mScaleFactor:F

    iget-object v1, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mAbsLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->getScaleFactor()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mShapePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 305
    invoke-direct {p0, p1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->drawPath(Landroid/graphics/Canvas;)V

    .line 320
    :goto_1
    invoke-direct {p0, p1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->drawMapItemShape(Landroid/graphics/Canvas;)V

    .line 321
    invoke-direct {p0, p1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->drawTextBoundingBox(Landroid/graphics/Canvas;)V

    .line 322
    invoke-direct {p0, p1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->drawMapItemImage(Landroid/graphics/Canvas;)V

    .line 323
    invoke-direct {p0, p1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->drawMapItemText(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 307
    :cond_3
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mAbsLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->getScaleFactor()F

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mScaleFactor:F

    .line 308
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mValueCache:Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    iget-object v1, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextBoundingBox:Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    iget v2, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mScaleFactor:F

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getWidth(F)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, v0, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;->textBoxWidth:I

    .line 309
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mValueCache:Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    iget-object v1, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextBoundingBox:Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    iget v2, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mScaleFactor:F

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getHeight(F)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, v0, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;->textBoxHeight:I

    .line 311
    invoke-direct {p0}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->adjustTextSize()V

    .line 313
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mValueCache:Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    iget-object v1, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextBoundingBox:Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    iget v2, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mScaleFactor:F

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getMinX(F)D

    move-result-wide v2

    double-to-int v1, v2

    iget-object v2, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mValueCache:Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    iget v2, v2, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;->textBoxWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;->textBoxTextStartX:I

    .line 315
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mValueCache:Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    iget-object v1, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextBoundingBox:Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    iget v2, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mScaleFactor:F

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getMinY(F)D

    move-result-wide v2

    double-to-int v1, v2

    iget-object v2, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mValueCache:Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    iget v2, v2, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;->textBoxHeight:I

    iget-object v3, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mValueCache:Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    iget v3, v3, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;->textBaseline:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;->textBoxTextStartY:I

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 328
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 330
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mValueCache:Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    iput p1, v0, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;->viewWidth:I

    .line 331
    iget-object v0, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mValueCache:Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;

    iput p2, v0, Lcom/eventgenie/android/ui/mapping2d/MapItemView$ValueCache;->viewHeight:I

    .line 332
    return-void
.end method

.method public setColors(III)V
    .locals 0
    .param p1, "fillColor"    # I
    .param p2, "outlineColor"    # I
    .param p3, "textColor"    # I

    .prologue
    .line 335
    iput p1, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mFillColor:I

    .line 336
    iput p2, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mOutlineColor:I

    .line 337
    iput p3, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextColor:I

    .line 338
    return-void
.end method

.method public setItemType(I)V
    .locals 0
    .param p1, "annotationType"    # I

    .prologue
    .line 341
    iput p1, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mItemType:I

    .line 342
    return-void
.end method

.method public setTextBoundingBox(Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;)V
    .locals 0
    .param p1, "box"    # Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mTextBoundingBox:Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    .line 346
    return-void
.end method

.method public setZeroBasedShapePoints([Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V
    .locals 0
    .param p1, "points"    # [Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mZeroBasedShapePoints:[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    .line 350
    return-void
.end method

.method public setzOrder(I)V
    .locals 0
    .param p1, "zOrder"    # I

    .prologue
    .line 353
    iput p1, p0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->mZOrder:I

    .line 354
    return-void
.end method

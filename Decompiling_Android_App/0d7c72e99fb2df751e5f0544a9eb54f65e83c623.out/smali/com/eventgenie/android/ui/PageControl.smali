.class public Lcom/eventgenie/android/ui/PageControl;
.super Landroid/widget/LinearLayout;
.source "PageControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/ui/PageControl$OnPageControlClickListener;
    }
.end annotation


# instance fields
.field private activeDrawable:Landroid/graphics/drawable/Drawable;

.field private inactiveDrawable:Landroid/graphics/drawable/Drawable;

.field private indicators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentPage:I

.field private mIndicatorSize:I

.field private mOnPageControlClickListener:Lcom/eventgenie/android/ui/PageControl$OnPageControlClickListener;

.field private mPageCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x7

    iput v0, p0, Lcom/eventgenie/android/ui/PageControl;->mIndicatorSize:I

    .line 54
    iput v1, p0, Lcom/eventgenie/android/ui/PageControl;->mPageCount:I

    .line 55
    iput v1, p0, Lcom/eventgenie/android/ui/PageControl;->mCurrentPage:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/ui/PageControl;->mOnPageControlClickListener:Lcom/eventgenie/android/ui/PageControl$OnPageControlClickListener;

    .line 63
    iput-object p1, p0, Lcom/eventgenie/android/ui/PageControl;->mContext:Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Lcom/eventgenie/android/ui/PageControl;->initPageControl()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x7

    iput v0, p0, Lcom/eventgenie/android/ui/PageControl;->mIndicatorSize:I

    .line 54
    iput v1, p0, Lcom/eventgenie/android/ui/PageControl;->mPageCount:I

    .line 55
    iput v1, p0, Lcom/eventgenie/android/ui/PageControl;->mCurrentPage:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/ui/PageControl;->mOnPageControlClickListener:Lcom/eventgenie/android/ui/PageControl$OnPageControlClickListener;

    .line 70
    iput-object p1, p0, Lcom/eventgenie/android/ui/PageControl;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/ui/PageControl;)Lcom/eventgenie/android/ui/PageControl$OnPageControlClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/ui/PageControl;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/eventgenie/android/ui/PageControl;->mOnPageControlClickListener:Lcom/eventgenie/android/ui/PageControl$OnPageControlClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/ui/PageControl;)I
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/ui/PageControl;

    .prologue
    .line 45
    iget v0, p0, Lcom/eventgenie/android/ui/PageControl;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/ui/PageControl;)I
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/ui/PageControl;

    .prologue
    .line 45
    iget v0, p0, Lcom/eventgenie/android/ui/PageControl;->mPageCount:I

    return v0
.end method

.method private initPageControl()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 82
    const-string v3, "^ Initialising PageControl"

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 84
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/eventgenie/android/ui/PageControl;->indicators:Ljava/util/List;

    .line 86
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    iput-object v3, p0, Lcom/eventgenie/android/ui/PageControl;->activeDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    iput-object v3, p0, Lcom/eventgenie/android/ui/PageControl;->inactiveDrawable:Landroid/graphics/drawable/Drawable;

    .line 89
    iget-object v3, p0, Lcom/eventgenie/android/ui/PageControl;->activeDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/eventgenie/android/ui/PageControl;->mIndicatorSize:I

    iget v5, p0, Lcom/eventgenie/android/ui/PageControl;->mIndicatorSize:I

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 90
    iget-object v3, p0, Lcom/eventgenie/android/ui/PageControl;->inactiveDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/eventgenie/android/ui/PageControl;->mIndicatorSize:I

    iget v5, p0, Lcom/eventgenie/android/ui/PageControl;->mIndicatorSize:I

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 92
    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 93
    .local v1, "s1":Landroid/graphics/drawable/shapes/Shape;
    iget v3, p0, Lcom/eventgenie/android/ui/PageControl;->mIndicatorSize:I

    int-to-float v3, v3

    iget v4, p0, Lcom/eventgenie/android/ui/PageControl;->mIndicatorSize:I

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    .line 95
    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 96
    .local v2, "s2":Landroid/graphics/drawable/shapes/Shape;
    iget v3, p0, Lcom/eventgenie/android/ui/PageControl;->mIndicatorSize:I

    int-to-float v3, v3

    iget v4, p0, Lcom/eventgenie/android/ui/PageControl;->mIndicatorSize:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    .line 98
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 99
    .local v0, "i":[I
    const v3, 0x1010038

    aput v3, v0, v6

    .line 100
    const/4 v3, 0x1

    const v4, 0x101003a

    aput v4, v0, v3

    .line 105
    iget-object v3, p0, Lcom/eventgenie/android/ui/PageControl;->activeDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    const v4, -0x333334

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v3, p0, Lcom/eventgenie/android/ui/PageControl;->inactiveDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    const v4, -0x777778

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object v3, p0, Lcom/eventgenie/android/ui/PageControl;->activeDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 110
    iget-object v3, p0, Lcom/eventgenie/android/ui/PageControl;->inactiveDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 112
    iget v3, p0, Lcom/eventgenie/android/ui/PageControl;->mIndicatorSize:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/PageControl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/eventgenie/android/ui/PageControl;->mIndicatorSize:I

    .line 114
    new-instance v3, Lcom/eventgenie/android/ui/PageControl$1;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/ui/PageControl$1;-><init>(Lcom/eventgenie/android/ui/PageControl;)V

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/ui/PageControl;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 167
    return-void
.end method


# virtual methods
.method public getActiveDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/eventgenie/android/ui/PageControl;->activeDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/eventgenie/android/ui/PageControl;->mCurrentPage:I

    return v0
.end method

.method public getInactiveDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/eventgenie/android/ui/PageControl;->inactiveDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndicatorSize()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/eventgenie/android/ui/PageControl;->mIndicatorSize:I

    return v0
.end method

.method public getOnPageControlClickListener()Lcom/eventgenie/android/ui/PageControl$OnPageControlClickListener;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/eventgenie/android/ui/PageControl;->mOnPageControlClickListener:Lcom/eventgenie/android/ui/PageControl$OnPageControlClickListener;

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/eventgenie/android/ui/PageControl;->mPageCount:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/eventgenie/android/ui/PageControl;->initPageControl()V

    .line 78
    return-void
.end method

.method public setActiveDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/eventgenie/android/ui/PageControl;->activeDrawable:Landroid/graphics/drawable/Drawable;

    .line 178
    iget-object v0, p0, Lcom/eventgenie/android/ui/PageControl;->indicators:Ljava/util/List;

    iget v1, p0, Lcom/eventgenie/android/ui/PageControl;->mCurrentPage:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/eventgenie/android/ui/PageControl;->activeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/eventgenie/android/ui/help/UIUtils;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 180
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 2
    .param p1, "currentPage"    # I

    .prologue
    .line 262
    iget v0, p0, Lcom/eventgenie/android/ui/PageControl;->mPageCount:I

    if-ge p1, v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/eventgenie/android/ui/PageControl;->indicators:Ljava/util/List;

    iget v1, p0, Lcom/eventgenie/android/ui/PageControl;->mCurrentPage:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/eventgenie/android/ui/PageControl;->inactiveDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/eventgenie/android/ui/help/UIUtils;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 265
    iget-object v0, p0, Lcom/eventgenie/android/ui/PageControl;->indicators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/eventgenie/android/ui/PageControl;->activeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/eventgenie/android/ui/help/UIUtils;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 268
    iput p1, p0, Lcom/eventgenie/android/ui/PageControl;->mCurrentPage:I

    .line 270
    :cond_0
    return-void
.end method

.method public setInactiveDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/eventgenie/android/ui/PageControl;->inactiveDrawable:Landroid/graphics/drawable/Drawable;

    .line 201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/eventgenie/android/ui/PageControl;->mPageCount:I

    if-ge v0, v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/eventgenie/android/ui/PageControl;->indicators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/eventgenie/android/ui/PageControl;->inactiveDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lcom/eventgenie/android/ui/help/UIUtils;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/ui/PageControl;->indicators:Ljava/util/List;

    iget v2, p0, Lcom/eventgenie/android/ui/PageControl;->mCurrentPage:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/eventgenie/android/ui/PageControl;->activeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lcom/eventgenie/android/ui/help/UIUtils;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 209
    return-void
.end method

.method public setIndicatorSize(I)V
    .locals 5
    .param p1, "indicatorSize"    # I

    .prologue
    .line 289
    iput p1, p0, Lcom/eventgenie/android/ui/PageControl;->mIndicatorSize:I

    .line 290
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/eventgenie/android/ui/PageControl;->mPageCount:I

    if-ge v0, v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/eventgenie/android/ui/PageControl;->indicators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/eventgenie/android/ui/PageControl;->mIndicatorSize:I

    iget v4, p0, Lcom/eventgenie/android/ui/PageControl;->mIndicatorSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_0
    return-void
.end method

.method public setOnPageControlClickListener(Lcom/eventgenie/android/ui/PageControl$OnPageControlClickListener;)V
    .locals 0
    .param p1, "onPageControlClickListener"    # Lcom/eventgenie/android/ui/PageControl$OnPageControlClickListener;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/eventgenie/android/ui/PageControl;->mOnPageControlClickListener:Lcom/eventgenie/android/ui/PageControl$OnPageControlClickListener;

    .line 336
    return-void
.end method

.method public setPageCount(I)V
    .locals 6
    .param p1, "pageCount"    # I

    .prologue
    .line 229
    iput p1, p0, Lcom/eventgenie/android/ui/PageControl;->mPageCount:I

    .line 231
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 233
    iget-object v2, p0, Lcom/eventgenie/android/ui/PageControl;->indicators:Ljava/util/List;

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/eventgenie/android/ui/PageControl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v2, p0, Lcom/eventgenie/android/ui/PageControl;->indicators:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/eventgenie/android/ui/PageControl;->mIndicatorSize:I

    iget v5, p0, Lcom/eventgenie/android/ui/PageControl;->mIndicatorSize:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    iget-object v2, p0, Lcom/eventgenie/android/ui/PageControl;->indicators:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/eventgenie/android/ui/PageControl;->inactiveDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/eventgenie/android/ui/PageControl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 238
    .local v0, "f":Landroid/widget/FrameLayout;
    iget v2, p0, Lcom/eventgenie/android/ui/PageControl;->mIndicatorSize:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/eventgenie/android/ui/PageControl;->mIndicatorSize:I

    iget v4, p0, Lcom/eventgenie/android/ui/PageControl;->mIndicatorSize:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/eventgenie/android/ui/PageControl;->mIndicatorSize:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 239
    iget-object v2, p0, Lcom/eventgenie/android/ui/PageControl;->indicators:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 241
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/ui/PageControl;->addView(Landroid/view/View;)V

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    .end local v0    # "f":Landroid/widget/FrameLayout;
    :cond_0
    return-void
.end method

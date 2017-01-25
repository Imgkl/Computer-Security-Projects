.class public Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "FlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static NO_SPACING:I


# instance fields
.field private horizontalSpacing:I

.field private newLine:Z

.field private verticalSpacing:I

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 327
    const/4 v0, -0x1

    sput v0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->NO_SPACING:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 341
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 331
    sget v0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->NO_SPACING:I

    iput v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->horizontalSpacing:I

    .line 332
    sget v0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->NO_SPACING:I

    iput v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->verticalSpacing:I

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->newLine:Z

    .line 342
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 336
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 331
    sget v0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->NO_SPACING:I

    iput v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->horizontalSpacing:I

    .line 332
    sget v0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->NO_SPACING:I

    iput v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->verticalSpacing:I

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->newLine:Z

    .line 337
    invoke-direct {p0, p1, p2}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 338
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 345
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    sget v0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->NO_SPACING:I

    iput v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->horizontalSpacing:I

    .line 332
    sget v0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->NO_SPACING:I

    iput v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->verticalSpacing:I

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->newLine:Z

    .line 346
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;

    .prologue
    .line 326
    iget v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->horizontalSpacing:I

    return v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;

    .prologue
    .line 326
    iget v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->verticalSpacing:I

    return v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->newLine:Z

    return v0
.end method

.method static synthetic access$300(Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;

    .prologue
    .line 326
    iget v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->x:I

    return v0
.end method

.method static synthetic access$400(Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;

    .prologue
    .line 326
    iget v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->y:I

    return v0
.end method

.method private readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 353
    sget-object v1, Lcom/eventgenie/android/R$styleable;->FlowLayout_LayoutParams:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 355
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Lcom/eventgenie/android/R$styleable;->FlowLayout_LayoutParams_layout_horizontalSpacing:I

    sget v2, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->NO_SPACING:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->horizontalSpacing:I

    .line 356
    sget v1, Lcom/eventgenie/android/R$styleable;->FlowLayout_LayoutParams_layout_verticalSpacing:I

    sget v2, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->NO_SPACING:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->verticalSpacing:I

    .line 357
    sget v1, Lcom/eventgenie/android/R$styleable;->FlowLayout_LayoutParams_layout_newLine:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->newLine:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 361
    return-void

    .line 359
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method


# virtual methods
.method public horizontalSpacingSpecified()Z
    .locals 2

    .prologue
    .line 349
    iget v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->horizontalSpacing:I

    sget v1, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->NO_SPACING:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPosition(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 364
    iput p1, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->x:I

    .line 365
    iput p2, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->y:I

    .line 366
    return-void
.end method

.method public verticalSpacingSpecified()Z
    .locals 2

    .prologue
    .line 369
    iget v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->verticalSpacing:I

    sget v1, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->NO_SPACING:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

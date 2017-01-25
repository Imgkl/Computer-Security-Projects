.class public Lcom/github/ignition/core/widgets/RemoteImageView;
.super Landroid/widget/ViewSwitcher;
.source "RemoteImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ignition/core/widgets/RemoteImageView$DefaultImageLoaderHandler;
    }
.end annotation


# static fields
.field private static final ANDROID_VIEW_ATTRS:[I

.field private static final ATTR_AUTO_LOAD:Ljava/lang/String; = "autoLoad"

.field private static final ATTR_ERROR_DRAWABLE:Ljava/lang/String; = "errorDrawable"

.field private static final ATTR_IMAGE_URL:Ljava/lang/String; = "imageUrl"

.field private static final ATTR_INDET_DRAWABLE:I = 0x0

.field public static final DEFAULT_ERROR_DRAWABLE_RES_ID:I = 0x1080027

.field private static sharedImageLoader:Lcom/github/ignition/support/images/remote/RemoteImageLoader;


# instance fields
.field private autoLoad:Z

.field private errorDrawable:Landroid/graphics/drawable/Drawable;

.field private imageLoader:Lcom/github/ignition/support/images/remote/RemoteImageLoader;

.field private imageUrl:Ljava/lang/String;

.field private imageView:Landroid/widget/ImageView;

.field private isLoaded:Z

.field private loadingSpinner:Landroid/widget/ProgressBar;

.field private progressDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101013b

    aput v2, v0, v1

    sput-object v0, Lcom/github/ignition/core/widgets/RemoteImageView;->ANDROID_VIEW_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    .line 120
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/github/ignition/core/widgets/RemoteImageView;->ANDROID_VIEW_ATTRS:[I

    invoke-virtual {v0, p2, v1, v6, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 127
    .local v8, "imageViewAttrs":Landroid/content/res/TypedArray;
    invoke-virtual {v8, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 128
    .local v9, "progressDrawableId":I
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    const-string v0, "http://github.com/ignition/schema"

    const-string v1, "errorDrawable"

    const v6, 0x1080027

    invoke-interface {p2, v0, v1, v6}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 132
    .local v7, "errorDrawableId":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 134
    .local v4, "errorDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 135
    .local v3, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-lez v9, :cond_0

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 139
    :cond_0
    const-string v0, "http://github.com/ignition/schema"

    const-string v1, "imageUrl"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "imageUrl":Ljava/lang/String;
    const-string v0, "http://github.com/ignition/schema"

    const-string v1, "autoLoad"

    const/4 v6, 0x1

    invoke-interface {p2, v0, v1, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .local v5, "autoLoad":Z
    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 143
    invoke-direct/range {v0 .. v6}, Lcom/github/ignition/core/widgets/RemoteImageView;->initialize(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLandroid/util/AttributeSet;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "progressDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "errorDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "autoLoad"    # Z

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    .line 116
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/github/ignition/core/widgets/RemoteImageView;->initialize(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLandroid/util/AttributeSet;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "autoLoad"    # Z

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move v5, p3

    move-object v6, v3

    .line 96
    invoke-direct/range {v0 .. v6}, Lcom/github/ignition/core/widgets/RemoteImageView;->initialize(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLandroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/github/ignition/core/widgets/RemoteImageView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/github/ignition/core/widgets/RemoteImageView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/github/ignition/core/widgets/RemoteImageView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/github/ignition/core/widgets/RemoteImageView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/github/ignition/core/widgets/RemoteImageView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/github/ignition/core/widgets/RemoteImageView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->errorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/github/ignition/core/widgets/RemoteImageView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/github/ignition/core/widgets/RemoteImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->isLoaded:Z

    return p1
.end method

.method private addImageView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x2

    .line 197
    if-eqz p2, :cond_0

    .line 199
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->imageView:Landroid/widget/ImageView;

    .line 203
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 204
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 205
    iget-object v1, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->imageView:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/github/ignition/core/widgets/RemoteImageView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 206
    return-void

    .line 201
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->imageView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private addLoadingSpinnerView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->loadingSpinner:Landroid/widget/ProgressBar;

    .line 179
    iget-object v1, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->loadingSpinner:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 180
    iget-object v1, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->loadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 189
    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 191
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 193
    iget-object v1, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->loadingSpinner:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/github/ignition/core/widgets/RemoteImageView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 194
    return-void

    .line 183
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->loadingSpinner:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object v1, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method

.method private initialize(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "progressDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "errorDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "autoLoad"    # Z
    .param p6, "attributes"    # Landroid/util/AttributeSet;

    .prologue
    .line 148
    iput-object p2, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->imageUrl:Ljava/lang/String;

    .line 149
    iput-boolean p5, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->autoLoad:Z

    .line 150
    iput-object p3, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 151
    iput-object p4, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 152
    sget-object v0, Lcom/github/ignition/core/widgets/RemoteImageView;->sharedImageLoader:Lcom/github/ignition/support/images/remote/RemoteImageLoader;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/github/ignition/support/images/remote/RemoteImageLoader;

    invoke-direct {v0, p1}, Lcom/github/ignition/support/images/remote/RemoteImageLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->imageLoader:Lcom/github/ignition/support/images/remote/RemoteImageLoader;

    .line 166
    :goto_0
    invoke-direct {p0, p1}, Lcom/github/ignition/core/widgets/RemoteImageView;->addLoadingSpinnerView(Landroid/content/Context;)V

    .line 167
    invoke-direct {p0, p1, p6}, Lcom/github/ignition/core/widgets/RemoteImageView;->addImageView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    if-eqz p5, :cond_1

    if-eqz p2, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/github/ignition/core/widgets/RemoteImageView;->loadImage()V

    .line 175
    :goto_1
    return-void

    .line 155
    :cond_0
    sget-object v0, Lcom/github/ignition/core/widgets/RemoteImageView;->sharedImageLoader:Lcom/github/ignition/support/images/remote/RemoteImageLoader;

    iput-object v0, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->imageLoader:Lcom/github/ignition/support/images/remote/RemoteImageLoader;

    goto :goto_0

    .line 173
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/github/ignition/core/widgets/RemoteImageView;->setDisplayedChild(I)V

    goto :goto_1
.end method

.method public static setSharedImageLoader(Lcom/github/ignition/support/images/remote/RemoteImageLoader;)V
    .locals 0
    .param p0, "imageLoader"    # Lcom/github/ignition/support/images/remote/RemoteImageLoader;

    .prologue
    .line 82
    sput-object p0, Lcom/github/ignition/core/widgets/RemoteImageView;->sharedImageLoader:Lcom/github/ignition/support/images/remote/RemoteImageLoader;

    .line 83
    return-void
.end method


# virtual methods
.method public getErrorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->errorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->loadingSpinner:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isAutoLoad()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->autoLoad:Z

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->isLoaded:Z

    return v0
.end method

.method public loadImage()V
    .locals 4

    .prologue
    .line 212
    iget-object v0, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->imageUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "image URL is null; did you forget to set it for this view?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/ignition/core/widgets/RemoteImageView;->setDisplayedChild(I)V

    .line 217
    iget-object v0, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->imageLoader:Lcom/github/ignition/support/images/remote/RemoteImageLoader;

    iget-object v1, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->imageUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->imageView:Landroid/widget/ImageView;

    new-instance v3, Lcom/github/ignition/core/widgets/RemoteImageView$DefaultImageLoaderHandler;

    invoke-direct {v3, p0}, Lcom/github/ignition/core/widgets/RemoteImageView$DefaultImageLoaderHandler;-><init>(Lcom/github/ignition/core/widgets/RemoteImageView;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;)V

    .line 218
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->reset()V

    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/ignition/core/widgets/RemoteImageView;->setDisplayedChild(I)V

    .line 245
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->imageUrl:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setNoImageDrawable(I)V
    .locals 2
    .param p1, "imageResourceId"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lcom/github/ignition/core/widgets/RemoteImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/github/ignition/core/widgets/RemoteImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/github/ignition/core/widgets/RemoteImageView;->setDisplayedChild(I)V

    .line 238
    return-void
.end method

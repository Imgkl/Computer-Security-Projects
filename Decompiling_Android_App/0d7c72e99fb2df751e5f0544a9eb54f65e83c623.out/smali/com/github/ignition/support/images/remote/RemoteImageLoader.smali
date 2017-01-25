.class public Lcom/github/ignition/support/images/remote/RemoteImageLoader;
.super Ljava/lang/Object;
.source "RemoteImageLoader.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x10000

.field private static final DEFAULT_NUM_RETRIES:I = 0x3

.field private static final DEFAULT_POOL_SIZE:I = 0x3

.field private static final DEFAULT_TTL_MINUTES:I = 0x5a0


# instance fields
.field private defaultBufferSize:I

.field private defaultDummyDrawable:Landroid/graphics/drawable/Drawable;

.field private errorDrawable:Landroid/graphics/drawable/Drawable;

.field private executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private expirationInMinutes:J

.field private imageCache:Lcom/github/ignition/support/cache/ImageCache;

.field private numRetries:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/github/ignition/support/images/remote/RemoteImageLoader;-><init>(Landroid/content/Context;Z)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "createCache"    # Z

    .prologue
    const/4 v4, 0x3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v4, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->numRetries:I

    .line 48
    const/high16 v0, 0x10000

    iput v0, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->defaultBufferSize:I

    .line 49
    const-wide/16 v0, 0x5a0

    iput-wide v0, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->expirationInMinutes:J

    .line 69
    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 70
    if-eqz p2, :cond_0

    .line 71
    new-instance v0, Lcom/github/ignition/support/cache/ImageCache;

    const/16 v1, 0x19

    iget-wide v2, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->expirationInMinutes:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/github/ignition/support/cache/ImageCache;-><init>(IJI)V

    iput-object v0, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->imageCache:Lcom/github/ignition/support/cache/ImageCache;

    .line 72
    iget-object v0, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->imageCache:Lcom/github/ignition/support/cache/ImageCache;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/github/ignition/support/cache/ImageCache;->enableDiskCache(Landroid/content/Context;I)Z

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 76
    return-void
.end method


# virtual methods
.method public clearImageCache()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->imageCache:Lcom/github/ignition/support/cache/ImageCache;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->imageCache:Lcom/github/ignition/support/cache/ImageCache;

    invoke-virtual {v0}, Lcom/github/ignition/support/cache/ImageCache;->clear()V

    .line 128
    :cond_0
    return-void
.end method

.method public getImageCache()Lcom/github/ignition/support/cache/ImageCache;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->imageCache:Lcom/github/ignition/support/cache/ImageCache;

    return-object v0
.end method

.method public loadImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->defaultDummyDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;

    iget-object v2, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, p2, p1, v2}, Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;)V

    .line 153
    return-void
.end method

.method public loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "dummyDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 169
    new-instance v0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;

    iget-object v1, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, p2, p1, v1}, Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;)V

    .line 171
    return-void
.end method

.method public loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;)V
    .locals 8
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "dummyDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "handler"    # Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;

    .prologue
    const/4 v1, 0x0

    .line 206
    if-eqz p2, :cond_3

    .line 207
    if-nez p1, :cond_1

    .line 210
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 211
    if-eqz p3, :cond_0

    .line 212
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 217
    .local v6, "oldImageUrl":Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    if-eqz p3, :cond_2

    .line 223
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    :cond_2
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 229
    .end local v6    # "oldImageUrl":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->imageCache:Lcom/github/ignition/support/cache/ImageCache;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->imageCache:Lcom/github/ignition/support/cache/ImageCache;

    invoke-virtual {v0, p1}, Lcom/github/ignition/support/cache/ImageCache;->containsKeyInMemory(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 231
    iget-object v0, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->imageCache:Lcom/github/ignition/support/cache/ImageCache;

    invoke-virtual {v0, p1}, Lcom/github/ignition/support/cache/ImageCache;->getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p4, v0, v1}, Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;->handleImageLoaded(Landroid/graphics/Bitmap;Landroid/os/Message;)Z

    goto :goto_0

    .line 233
    :cond_4
    iget-object v7, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderJob;

    iget-object v3, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->imageCache:Lcom/github/ignition/support/cache/ImageCache;

    iget v4, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->numRetries:I

    iget v5, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->defaultBufferSize:I

    move-object v1, p1

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/github/ignition/support/images/remote/RemoteImageLoaderJob;-><init>(Ljava/lang/String;Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;Lcom/github/ignition/support/cache/ImageCache;II)V

    invoke-virtual {v7, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;)V
    .locals 1
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "handler"    # Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->defaultDummyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;)V

    .line 187
    return-void
.end method

.method public setDefaultBufferSize(I)V
    .locals 0
    .param p1, "defaultBufferSize"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->defaultBufferSize:I

    .line 106
    return-void
.end method

.method public setDownloadFailedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 114
    return-void
.end method

.method public setDownloadInProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->defaultDummyDrawable:Landroid/graphics/drawable/Drawable;

    .line 110
    return-void
.end method

.method public setImageCache(Lcom/github/ignition/support/cache/ImageCache;)V
    .locals 0
    .param p1, "imageCache"    # Lcom/github/ignition/support/cache/ImageCache;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->imageCache:Lcom/github/ignition/support/cache/ImageCache;

    .line 118
    return-void
.end method

.method public setMaxDownloadAttempts(I)V
    .locals 0
    .param p1, "numAttempts"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->numRetries:I

    .line 93
    return-void
.end method

.method public setThreadPoolSize(I)V
    .locals 1
    .param p1, "numThreads"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoader;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    .line 84
    return-void
.end method

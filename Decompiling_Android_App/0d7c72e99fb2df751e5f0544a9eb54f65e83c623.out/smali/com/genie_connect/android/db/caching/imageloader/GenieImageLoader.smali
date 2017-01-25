.class public Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;
.super Ljava/lang/Object;
.source "GenieImageLoader.java"

# interfaces
.implements Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderFields;


# instance fields
.field private mCacheDir:Ljava/io/File;

.field private final mCachePersistent:Z

.field private final mEndDirectory:Ljava/lang/String;

.field private final mFetcher:Lcom/genie_connect/android/db/caching/imageloader/ImageFetcher;

.field private mMaxPixels:I

.field private final mPhotoLoaderThread:Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;

.field private mPlaceholderDrawableId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "placeholder"    # I
    .param p3, "endDirectory"    # Ljava/lang/String;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLjava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "placeholder"    # I
    .param p3, "persistentCache"    # Z
    .param p4, "endDirectory"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget v6, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

    iput v6, p0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->mPlaceholderDrawableId:I

    .line 60
    iput-boolean p3, p0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->mCachePersistent:Z

    .line 61
    if-nez p4, :cond_2

    sget-object v6, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->DEFAULT_IMAGE_DIRECTORY:Ljava/lang/String;

    :goto_0
    iput-object v6, p0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->mEndDirectory:Ljava/lang/String;

    .line 62
    new-instance v6, Lcom/genie_connect/android/db/caching/imageloader/ImageFetcher;

    invoke-direct {v6}, Lcom/genie_connect/android/db/caching/imageloader/ImageFetcher;-><init>()V

    iput-object v6, p0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->mFetcher:Lcom/genie_connect/android/db/caching/imageloader/ImageFetcher;

    .line 64
    invoke-direct {p0, p1, p3}, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->getCacheDirectory(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->mCacheDir:Ljava/io/File;

    .line 66
    const/16 v6, 0x1e0

    invoke-static {v6, p1}, Lcom/eventgenie/android/ui/help/UIUtils;->dipToPixels(ILandroid/content/Context;)I

    move-result v6

    iput v6, p0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->mMaxPixels:I

    .line 68
    const-string/jumbo v6, "window"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 69
    .local v5, "wm":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 70
    .local v0, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 71
    .local v3, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 72
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 73
    .local v4, "width":I
    iget v1, v3, Landroid/graphics/Point;->y:I

    .line 75
    .local v1, "height":I
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 76
    .local v2, "maxWidthHeigth":I
    iget v6, p0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->mMaxPixels:I

    if-le v2, v6, :cond_0

    .line 77
    iput v2, p0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->mMaxPixels:I

    .line 80
    :cond_0
    if-ltz p2, :cond_1

    .line 81
    iput p2, p0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->mPlaceholderDrawableId:I

    .line 84
    :cond_1
    new-instance v6, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;

    iget v7, p0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->mPlaceholderDrawableId:I

    iget-object v8, p0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->mCacheDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->mMaxPixels:I

    invoke-direct {v6, v7, v8, v9}, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;-><init>(ILjava/lang/String;I)V

    iput-object v6, p0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->mPhotoLoaderThread:Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;

    .line 85
    iget-object v6, p0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->mPhotoLoaderThread:Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;->setPriority(I)V

    .line 86
    return-void

    .line 61
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "height":I
    .end local v2    # "maxWidthHeigth":I
    .end local v3    # "size":Landroid/graphics/Point;
    .end local v4    # "width":I
    .end local v5    # "wm":Landroid/view/WindowManager;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "endDirectory"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "persistentCache"    # Z
    .param p3, "endDirectory"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    .line 57
    return-void
.end method

.method private getCacheDirectory(Landroid/content/Context;Z)Ljava/io/File;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "persistentCache"    # Z

    .prologue
    .line 142
    invoke-static {}, Lcom/genie_connect/android/utils/StorageUtils;->isExternalMemoryAvailable()Z

    move-result v0

    .line 144
    .local v0, "isExternalStorageMounted":Z
    if-eqz v0, :cond_1

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->getExternalCacheDir(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v1

    .line 150
    .local v1, "methodResult":Ljava/io/File;
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 153
    :cond_0
    return-object v1

    .line 147
    .end local v1    # "methodResult":Ljava/io/File;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "methodResult":Ljava/io/File;
    goto :goto_0
.end method

.method private getExternalCacheDir(Landroid/content/Context;Z)Ljava/io/File;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "persistentCache"    # Z

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 160
    .local v0, "baseDir":Ljava/io/File;
    if-eqz p2, :cond_0

    .line 161
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->CACHE_DIR_PERSISTENT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->mEndDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    .local v1, "dir":Ljava/io/File;
    :goto_0
    return-object v1

    .line 163
    .end local v1    # "dir":Ljava/io/File;
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->CACHE_DIR_EPHEMERAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->mEndDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1    # "dir":Ljava/io/File;
    goto :goto_0
.end method

.method private queuePhoto(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "cornerRadius"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->mPhotoLoaderThread:Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;

    invoke-virtual {v0, p1, p2, p3}, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;->addImageToQueue(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 193
    iget-object v0, p0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->mPhotoLoaderThread:Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->mPhotoLoaderThread:Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;->start()V

    .line 196
    :cond_0
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 6

    .prologue
    .line 97
    invoke-static {}, Lcom/genie_connect/android/db/caching/imageloader/ImageMemoryCache;->clear()V

    .line 99
    iget-object v5, p0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->mCacheDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 101
    .local v2, "files":[Ljava/io/File;
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 102
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    .end local v1    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 108
    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "cornerRadius"    # I

    .prologue
    .line 111
    iget-object v1, p0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->mFetcher:Lcom/genie_connect/android/db/caching/imageloader/ImageFetcher;

    invoke-virtual {v1, p1}, Lcom/genie_connect/android/db/caching/imageloader/ImageFetcher;->getBitmapFromMemory(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 113
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 114
    if-lez p3, :cond_1

    .line 115
    invoke-static {v0, p3}, Lcom/eventgenie/android/utils/help/BitmapUtils;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 122
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->queuePhoto(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 123
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 124
    iget v1, p0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->mPlaceholderDrawableId:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 132
    :try_start_0
    invoke-virtual {p0}, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->isCachePersistent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->invalidateCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 138
    return-void

    .line 136
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getImageBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->mFetcher:Lcom/genie_connect/android/db/caching/imageloader/ImageFetcher;

    const/16 v2, 0xf

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->mCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->mMaxPixels:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/genie_connect/android/db/caching/imageloader/ImageFetcher;->fetchBitmap(Ljava/lang/String;IZLjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 177
    .local v6, "bmp":Landroid/graphics/Bitmap;
    return-object v6
.end method

.method public invalidateCache()V
    .locals 2

    .prologue
    .line 182
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->mCacheDir:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/genie_connect/android/db/caching/imageloader/Util;->deleteFilesOlderThan(ILjava/io/File;)V

    .line 183
    return-void
.end method

.method public isCachePersistent()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->mCachePersistent:Z

    return v0
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->mPhotoLoaderThread:Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;->interrupt()V

    .line 200
    return-void
.end method

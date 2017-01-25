.class Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;
.super Ljava/lang/Thread;
.source "ImageLoaderThread.java"


# instance fields
.field private final mCacheDir:Ljava/lang/String;

.field private final mFetcher:Lcom/genie_connect/android/db/caching/imageloader/ImageFetcher;

.field private final mMaxPixels:I

.field private final mPhotosQueue:Lcom/genie_connect/android/db/caching/imageloader/ImageQueue;

.field private final mPlaceHolderId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .param p1, "playeholderId"    # I
    .param p2, "cacheDir"    # Ljava/lang/String;
    .param p3, "maxPixels"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 46
    iput p1, p0, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;->mPlaceHolderId:I

    .line 47
    iput-object p2, p0, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;->mCacheDir:Ljava/lang/String;

    .line 48
    iput p3, p0, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;->mMaxPixels:I

    .line 49
    new-instance v0, Lcom/genie_connect/android/db/caching/imageloader/ImageFetcher;

    invoke-direct {v0}, Lcom/genie_connect/android/db/caching/imageloader/ImageFetcher;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;->mFetcher:Lcom/genie_connect/android/db/caching/imageloader/ImageFetcher;

    .line 50
    new-instance v0, Lcom/genie_connect/android/db/caching/imageloader/ImageQueue;

    invoke-direct {v0}, Lcom/genie_connect/android/db/caching/imageloader/ImageQueue;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;->mPhotosQueue:Lcom/genie_connect/android/db/caching/imageloader/ImageQueue;

    .line 51
    return-void
.end method


# virtual methods
.method public addImageToQueue(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "cornerRadius"    # I

    .prologue
    .line 55
    iget-object v1, p0, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;->mPhotosQueue:Lcom/genie_connect/android/db/caching/imageloader/ImageQueue;

    invoke-virtual {v1, p2}, Lcom/genie_connect/android/db/caching/imageloader/ImageQueue;->Clean(Landroid/widget/ImageView;)V

    .line 56
    new-instance v0, Lcom/genie_connect/android/db/caching/imageloader/ImageToLoad;

    invoke-direct {v0, p1, p2, p3}, Lcom/genie_connect/android/db/caching/imageloader/ImageToLoad;-><init>(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 58
    .local v0, "p":Lcom/genie_connect/android/db/caching/imageloader/ImageToLoad;
    iget-object v1, p0, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;->mPhotosQueue:Lcom/genie_connect/android/db/caching/imageloader/ImageQueue;

    iget-object v2, v1, Lcom/genie_connect/android/db/caching/imageloader/ImageQueue;->photosToLoad:Ljava/util/Stack;

    monitor-enter v2

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;->mPhotosQueue:Lcom/genie_connect/android/db/caching/imageloader/ImageQueue;

    iget-object v1, v1, Lcom/genie_connect/android/db/caching/imageloader/ImageQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v1, p0, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;->mPhotosQueue:Lcom/genie_connect/android/db/caching/imageloader/ImageQueue;

    iget-object v1, v1, Lcom/genie_connect/android/db/caching/imageloader/ImageQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 61
    monitor-exit v2

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 11

    .prologue
    .line 74
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;->mPhotosQueue:Lcom/genie_connect/android/db/caching/imageloader/ImageQueue;

    iget-object v0, v0, Lcom/genie_connect/android/db/caching/imageloader/ImageQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;->mPhotosQueue:Lcom/genie_connect/android/db/caching/imageloader/ImageQueue;

    iget-object v1, v0, Lcom/genie_connect/android/db/caching/imageloader/ImageQueue;->photosToLoad:Ljava/util/Stack;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    :try_start_1
    iget-object v0, p0, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;->mPhotosQueue:Lcom/genie_connect/android/db/caching/imageloader/ImageQueue;

    iget-object v0, v0, Lcom/genie_connect/android/db/caching/imageloader/ImageQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 77
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;->mPhotosQueue:Lcom/genie_connect/android/db/caching/imageloader/ImageQueue;

    iget-object v0, v0, Lcom/genie_connect/android/db/caching/imageloader/ImageQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;->mPhotosQueue:Lcom/genie_connect/android/db/caching/imageloader/ImageQueue;

    iget-object v1, v0, Lcom/genie_connect/android/db/caching/imageloader/ImageQueue;->photosToLoad:Ljava/util/Stack;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 82
    :try_start_3
    iget-object v0, p0, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;->mPhotosQueue:Lcom/genie_connect/android/db/caching/imageloader/ImageQueue;

    iget-object v0, v0, Lcom/genie_connect/android/db/caching/imageloader/ImageQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/genie_connect/android/db/caching/imageloader/ImageToLoad;

    .line 83
    .local v10, "photoToLoad":Lcom/genie_connect/android/db/caching/imageloader/ImageToLoad;
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    :try_start_4
    iget-object v0, p0, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;->mFetcher:Lcom/genie_connect/android/db/caching/imageloader/ImageFetcher;

    iget-object v1, v10, Lcom/genie_connect/android/db/caching/imageloader/ImageToLoad;->url:Ljava/lang/String;

    const/16 v2, 0xf

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;->mCacheDir:Ljava/lang/String;

    iget v5, p0, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;->mMaxPixels:I

    invoke-virtual/range {v0 .. v5}, Lcom/genie_connect/android/db/caching/imageloader/ImageFetcher;->fetchBitmap(Ljava/lang/String;IZLjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 86
    .local v8, "bmp":Landroid/graphics/Bitmap;
    iget-object v0, v10, Lcom/genie_connect/android/db/caching/imageloader/ImageToLoad;->url:Ljava/lang/String;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v8}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/genie_connect/android/db/caching/imageloader/ImageMemoryCache;->add(Ljava/lang/String;Ljava/lang/ref/SoftReference;)V

    .line 88
    iget-object v0, v10, Lcom/genie_connect/android/db/caching/imageloader/ImageToLoad;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v10, Lcom/genie_connect/android/db/caching/imageloader/ImageToLoad;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v10, Lcom/genie_connect/android/db/caching/imageloader/ImageToLoad;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    new-instance v7, Lcom/genie_connect/android/db/caching/imageloader/BitmapDisplayer;

    iget-object v0, v10, Lcom/genie_connect/android/db/caching/imageloader/ImageToLoad;->imageView:Landroid/widget/ImageView;

    iget v1, v10, Lcom/genie_connect/android/db/caching/imageloader/ImageToLoad;->cornerRadius:I

    iget v2, p0, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;->mPlaceHolderId:I

    invoke-direct {v7, v8, v0, v1, v2}, Lcom/genie_connect/android/db/caching/imageloader/BitmapDisplayer;-><init>(Landroid/graphics/Bitmap;Landroid/widget/ImageView;II)V

    .line 90
    .local v7, "bitmapDisplayer":Lcom/genie_connect/android/db/caching/imageloader/BitmapDisplayer;
    iget-object v0, v10, Lcom/genie_connect/android/db/caching/imageloader/ImageToLoad;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    .line 91
    .local v6, "activity":Landroid/app/Activity;
    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 96
    .end local v6    # "activity":Landroid/app/Activity;
    .end local v7    # "bitmapDisplayer":Lcom/genie_connect/android/db/caching/imageloader/BitmapDisplayer;
    .end local v8    # "bmp":Landroid/graphics/Bitmap;
    .end local v10    # "photoToLoad":Lcom/genie_connect/android/db/caching/imageloader/ImageToLoad;
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    :goto_0
    return-void

    .line 77
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 99
    :catch_0
    move-exception v9

    .line 100
    .local v9, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 83
    .end local v9    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    .line 101
    :catch_1
    move-exception v9

    .line 102
    .local v9, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 97
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {p0}, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderThread;->isInterrupted()Z
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

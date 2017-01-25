.class public Lcom/eventgenie/android/utils/asynctasks/GetBitmapTask;
.super Landroid/os/AsyncTask;
.source "GetBitmapTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNamespace:J

.field private final mPersistent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;JZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "namespace"    # J
    .param p4, "persistantCache"    # Z

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/eventgenie/android/utils/asynctasks/GetBitmapTask;->mContext:Landroid/content/Context;

    .line 50
    iput-wide p2, p0, Lcom/eventgenie/android/utils/asynctasks/GetBitmapTask;->mNamespace:J

    .line 51
    iput-boolean p4, p0, Lcom/eventgenie/android/utils/asynctasks/GetBitmapTask;->mPersistent:Z

    .line 52
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 56
    const/4 v2, 0x0

    aget-object v1, p1, v2

    .line 58
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/eventgenie/android/utils/asynctasks/GetBitmapTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/eventgenie/android/utils/asynctasks/GetBitmapTask;->mPersistent:Z

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    invoke-static {v1}, Lcom/eventgenie/android/utils/help/UrlUtils;->sanitiseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ BITMAP: fetching \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;

    iget-object v2, p0, Lcom/eventgenie/android/utils/asynctasks/GetBitmapTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/eventgenie/android/utils/asynctasks/GetBitmapTask;->mPersistent:Z

    iget-wide v4, p0, Lcom/eventgenie/android/utils/asynctasks/GetBitmapTask;->mNamespace:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 67
    .local v0, "imageLoader":Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;
    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->getImageBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 70
    .end local v0    # "imageLoader":Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;
    :goto_0
    return-object v2

    .line 69
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ BITMAP: Invalid URL \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 70
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/asynctasks/GetBitmapTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

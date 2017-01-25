.class final Lcom/genie_connect/android/db/config/IconManager$1;
.super Landroid/os/AsyncTask;
.source "IconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genie_connect/android/db/config/IconManager;->getIconOverrideBitmap(Landroid/content/Context;Ljava/lang/String;JLcom/genie_connect/android/utils/delegates/Delegates$Action;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

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
.field final synthetic val$callback:Lcom/genie_connect/android/utils/delegates/Delegates$Action;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$namespace:J


# direct methods
.method constructor <init>(Landroid/content/Context;JLcom/genie_connect/android/utils/delegates/Delegates$Action;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/genie_connect/android/db/config/IconManager$1;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/genie_connect/android/db/config/IconManager$1;->val$namespace:J

    iput-object p4, p0, Lcom/genie_connect/android/db/config/IconManager$1;->val$callback:Lcom/genie_connect/android/utils/delegates/Delegates$Action;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 350
    const/4 v2, 0x0

    aget-object v1, p1, v2

    .line 352
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    invoke-static {v1}, Lcom/eventgenie/android/utils/help/UrlUtils;->sanitiseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 355
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

    .line 356
    new-instance v0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;

    iget-object v2, p0, Lcom/genie_connect/android/db/config/IconManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/genie_connect/android/db/config/IconManager$1;->val$namespace:J

    # invokes: Lcom/genie_connect/android/db/config/IconManager;->getIconOverrideCacheKey(J)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/genie_connect/android/db/config/IconManager;->access$000(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 361
    .local v0, "imageLoader":Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;
    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->getImageBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 364
    .end local v0    # "imageLoader":Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;
    :goto_0
    return-object v2

    .line 363
    :cond_0
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

    .line 364
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 346
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/db/config/IconManager$1;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/genie_connect/android/db/config/IconManager$1;->val$callback:Lcom/genie_connect/android/utils/delegates/Delegates$Action;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/genie_connect/android/db/config/IconManager$1;->val$callback:Lcom/genie_connect/android/utils/delegates/Delegates$Action;

    invoke-interface {v0, p1}, Lcom/genie_connect/android/utils/delegates/Delegates$Action;->execute(Ljava/lang/Object;)V

    .line 373
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 346
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/db/config/IconManager$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

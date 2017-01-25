.class Lcom/genie_connect/android/db/caching/imageloader/ImageQueue;
.super Ljava/lang/Object;
.source "ImageQueue.java"


# instance fields
.field final photosToLoad:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/genie_connect/android/db/caching/imageloader/ImageToLoad;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/caching/imageloader/ImageQueue;->photosToLoad:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public Clean(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "image"    # Landroid/widget/ImageView;

    .prologue
    .line 44
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v2, p0, Lcom/genie_connect/android/db/caching/imageloader/ImageQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 46
    :try_start_0
    iget-object v2, p0, Lcom/genie_connect/android/db/caching/imageloader/ImageQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/db/caching/imageloader/ImageToLoad;

    iget-object v2, v2, Lcom/genie_connect/android/db/caching/imageloader/ImageToLoad;->imageView:Landroid/widget/ImageView;

    if-ne v2, p1, :cond_0

    .line 47
    iget-object v2, p0, Lcom/genie_connect/android/db/caching/imageloader/ImageQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "IMAGELOADER: clean(): "

    invoke-static {v2, v0}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 49
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_1
    return-void
.end method

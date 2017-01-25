.class Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;
.super Landroid/os/AsyncTask;
.source "SubsamplingScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final decoderFactoryRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory",
            "<+",
            "Lcom/davemorrissey/labs/subscaleview/decoder/ImageDecoder;",
            ">;>;"
        }
    .end annotation
.end field

.field private exception:Ljava/lang/Exception;

.field private final preview:Z

.field private final source:Landroid/net/Uri;

.field private final viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/content/Context;Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;Landroid/net/Uri;Z)V
    .locals 1
    .param p1, "view"    # Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "source"    # Landroid/net/Uri;
    .param p5, "preview"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;",
            "Landroid/content/Context;",
            "Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory",
            "<+",
            "Lcom/davemorrissey/labs/subscaleview/decoder/ImageDecoder;",
            ">;",
            "Landroid/net/Uri;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1542
    .local p3, "decoderFactory":Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;, "Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory<+Lcom/davemorrissey/labs/subscaleview/decoder/ImageDecoder;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1543
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;->viewRef:Ljava/lang/ref/WeakReference;

    .line 1544
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;->contextRef:Ljava/lang/ref/WeakReference;

    .line 1545
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;->decoderFactoryRef:Ljava/lang/ref/WeakReference;

    .line 1546
    iput-object p4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;->source:Landroid/net/Uri;

    .line 1547
    iput-boolean p5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;->preview:Z

    .line 1548
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1553
    :try_start_0
    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;->source:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1554
    .local v3, "sourceUri":Ljava/lang/String;
    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1555
    .local v0, "context":Landroid/content/Context;
    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;->decoderFactoryRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;

    .line 1556
    .local v1, "decoderFactory":Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;, "Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory<+Lcom/davemorrissey/labs/subscaleview/decoder/ImageDecoder;>;"
    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    .line 1557
    .local v4, "subsamplingScaleImageView":Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 1558
    invoke-interface {v1}, Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;->make()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/davemorrissey/labs/subscaleview/decoder/ImageDecoder;

    iget-object v6, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;->source:Landroid/net/Uri;

    invoke-interface {v5, v0, v6}, Lcom/davemorrissey/labs/subscaleview/decoder/ImageDecoder;->decode(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;->bitmap:Landroid/graphics/Bitmap;

    .line 1559
    # invokes: Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getExifOrientation(Ljava/lang/String;)I
    invoke-static {v4, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->access$4700(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1565
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "decoderFactory":Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;, "Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory<+Lcom/davemorrissey/labs/subscaleview/decoder/ImageDecoder;>;"
    .end local v3    # "sourceUri":Ljava/lang/String;
    .end local v4    # "subsamplingScaleImageView":Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;
    :goto_0
    return-object v5

    .line 1561
    :catch_0
    move-exception v2

    .line 1562
    .local v2, "e":Ljava/lang/Exception;
    # getter for: Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->access$4900()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Failed to load bitmap"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1563
    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;->exception:Ljava/lang/Exception;

    .line 1565
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1533
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "orientation"    # Ljava/lang/Integer;

    .prologue
    .line 1570
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    .line 1571
    .local v0, "subsamplingScaleImageView":Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;
    if-eqz v0, :cond_0

    .line 1572
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 1573
    iget-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;->preview:Z

    if-eqz v1, :cond_1

    .line 1574
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;->bitmap:Landroid/graphics/Bitmap;

    # invokes: Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->onPreviewLoaded(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->access$5500(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/graphics/Bitmap;)V

    .line 1586
    :cond_0
    :goto_0
    return-void

    .line 1576
    :cond_1
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    # invokes: Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->onImageLoaded(Landroid/graphics/Bitmap;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->access$5600(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/graphics/Bitmap;IZ)V

    goto :goto_0

    .line 1578
    :cond_2
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;->exception:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    # getter for: Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->onImageEventListener:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnImageEventListener;
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->access$5100(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnImageEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1579
    iget-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;->preview:Z

    if-eqz v1, :cond_3

    .line 1580
    # getter for: Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->onImageEventListener:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnImageEventListener;
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->access$5100(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnImageEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;->exception:Ljava/lang/Exception;

    invoke-interface {v1, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnImageEventListener;->onPreviewLoadError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1582
    :cond_3
    # getter for: Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->onImageEventListener:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnImageEventListener;
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->access$5100(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnImageEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;->exception:Ljava/lang/Exception;

    invoke-interface {v1, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnImageEventListener;->onImageLoadError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1533
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$BitmapLoadTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

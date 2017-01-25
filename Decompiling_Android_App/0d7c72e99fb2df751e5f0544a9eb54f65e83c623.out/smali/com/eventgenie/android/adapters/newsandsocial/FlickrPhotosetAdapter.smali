.class public Lcom/eventgenie/android/adapters/newsandsocial/FlickrPhotosetAdapter;
.super Landroid/widget/SimpleAdapter;
.source "FlickrPhotosetAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[IJ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .param p6, "namespace"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[IJ)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 49
    return-void
.end method


# virtual methods
.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result v0

    sget v1, Lcom/eventgenie/android/R$id;->photo:I

    if-ne v0, v1, :cond_0

    .line 55
    sget v0, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    invoke-static {p2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    goto :goto_0
.end method

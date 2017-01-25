.class Lcom/genie_connect/android/db/caching/imageloader/ImageToLoad;
.super Ljava/lang/Object;
.source "ImageToLoad.java"


# instance fields
.field public final cornerRadius:I

.field public final imageView:Landroid/widget/ImageView;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 0
    .param p1, "u"    # Ljava/lang/String;
    .param p2, "i"    # Landroid/widget/ImageView;
    .param p3, "r"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/genie_connect/android/db/caching/imageloader/ImageToLoad;->url:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/genie_connect/android/db/caching/imageloader/ImageToLoad;->imageView:Landroid/widget/ImageView;

    .line 42
    iput p3, p0, Lcom/genie_connect/android/db/caching/imageloader/ImageToLoad;->cornerRadius:I

    .line 43
    return-void
.end method

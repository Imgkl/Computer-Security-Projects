.class Lcom/julysystems/appx/AppXViewElement;
.super Ljava/lang/Object;
.source "AppXViewElement.java"


# instance fields
.field public final element:Lorg/w3c/dom/Element;

.field public final viewName:Ljava/lang/String;

.field public viewRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/w3c/dom/Element;Landroid/view/View;)V
    .locals 1
    .param p1, "viewName"    # Ljava/lang/String;
    .param p2, "element"    # Lorg/w3c/dom/Element;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/julysystems/appx/AppXViewElement;->viewName:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/julysystems/appx/AppXViewElement;->element:Lorg/w3c/dom/Element;

    .line 17
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/julysystems/appx/AppXViewElement;->viewRef:Ljava/lang/ref/SoftReference;

    .line 18
    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/julysystems/appx/AppXViewElement;->viewRef:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/julysystems/appx/AppXViewElement;->viewRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

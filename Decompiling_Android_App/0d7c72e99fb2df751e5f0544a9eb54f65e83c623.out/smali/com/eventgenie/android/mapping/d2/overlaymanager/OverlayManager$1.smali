.class Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$1;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->hideOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$1;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$1;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    invoke-virtual {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->isOverlayVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$1;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mZoomControls:Landroid/widget/ZoomControls;
    invoke-static {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$000(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/ZoomControls;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$1;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mOverlay:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$100(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$1;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    invoke-virtual {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->invalidateOverlay()V

    .line 182
    return-void
.end method

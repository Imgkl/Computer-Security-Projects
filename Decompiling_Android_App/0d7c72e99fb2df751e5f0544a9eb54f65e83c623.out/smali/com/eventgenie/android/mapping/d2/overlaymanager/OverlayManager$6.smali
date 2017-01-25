.class Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$6;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->showOverlay(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

.field final synthetic val$location:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$6;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    iput-object p2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$6;->val$location:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/16 v3, 0x8

    .line 459
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$6;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mExhibitorLocation:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$1600(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$6;->val$location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$6;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mExhibitorName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$500(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$6;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$1200(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->map_no_booth_info:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$6;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mFavCheckbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$600(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$6;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mAgendaCheckbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$700(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$6;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mGoToDetailsButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$800(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$6;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mRouteButtonContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$1800(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$6;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mDescription:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$1000(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$6;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$900(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$6;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mExhibitorName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$500(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$6;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mZoomControls:Landroid/widget/ZoomControls;
    invoke-static {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$000(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/ZoomControls;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ZoomControls;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$6;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mOverlay:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$100(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 472
    return-void
.end method

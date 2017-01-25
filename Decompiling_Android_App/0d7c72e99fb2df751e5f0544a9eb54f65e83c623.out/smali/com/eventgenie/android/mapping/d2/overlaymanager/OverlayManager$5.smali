.class Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$5;
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
    .line 429
    iput-object p1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$5;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    iput-object p2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$5;->val$location:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 432
    new-instance v0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListAdapter;

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$5;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$1200(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$5;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mItemList:Ljava/util/List;
    invoke-static {v2}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$200(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$5;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mNamespace:J
    invoke-static {v3}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$1700(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)J

    move-result-wide v4

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;J)V

    .line 437
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$5;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mExhibitorLocation:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$1600(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$5;->val$location:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$5;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mExhibitorName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$500(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 439
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$5;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mFavCheckbox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$600(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 440
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$5;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mAgendaCheckbox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$700(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 441
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$5;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mGoToDetailsButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$800(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 442
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$5;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mDescription:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$1000(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$5;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$900(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 444
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$5;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mRouteButtonContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$1800(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 445
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$5;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$900(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 448
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$5;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mZoomControls:Landroid/widget/ZoomControls;
    invoke-static {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$000(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/ZoomControls;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/ZoomControls;->setVisibility(I)V

    .line 449
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$5;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mOverlay:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$100(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 450
    return-void
.end method

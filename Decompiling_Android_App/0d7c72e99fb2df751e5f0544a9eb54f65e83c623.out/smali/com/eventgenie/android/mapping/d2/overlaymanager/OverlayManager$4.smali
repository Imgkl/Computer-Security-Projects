.class Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;
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

.field final synthetic val$buttonText:Ljava/lang/String;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$fav:Z

.field final synthetic val$item:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

.field final synthetic val$location:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    iput-object p2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;->val$location:Ljava/lang/String;

    iput-object p3, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;->val$name:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;->val$fav:Z

    iput-object p5, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;->val$description:Ljava/lang/String;

    iput-object p6, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;->val$buttonText:Ljava/lang/String;

    iput-object p7, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;->val$item:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 408
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mExhibitorLocation:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$1600(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;->val$location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mExhibitorName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$500(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mFavCheckbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$600(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-boolean v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;->val$fav:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 411
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mAgendaCheckbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$700(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-boolean v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;->val$fav:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 412
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mDescription:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$1000(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;->val$description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mFavCheckbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$600(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mGoToDetailsButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$800(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$900(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mExhibitorName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$500(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mGoToDetailsButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$800(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;->val$buttonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;->val$item:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    # invokes: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->hideAppropriateFunctionality(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;)V
    invoke-static {v0, v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$1100(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;)V

    .line 421
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mZoomControls:Landroid/widget/ZoomControls;
    invoke-static {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$000(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/ZoomControls;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mOverlay:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$100(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mExhibitorName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$500(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 424
    return-void
.end method

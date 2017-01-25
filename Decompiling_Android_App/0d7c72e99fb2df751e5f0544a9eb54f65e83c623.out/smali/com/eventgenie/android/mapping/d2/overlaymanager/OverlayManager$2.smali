.class Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$2;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->initUI()V
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
    .line 196
    iput-object p1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$2;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$2;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mItemList:Ljava/util/List;
    invoke-static {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$200(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    .line 200
    .local v6, "item":Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$2;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # setter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mSelectedItem:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;
    invoke-static {v0, v6}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$302(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;)Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    .line 202
    invoke-virtual {v6}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->getName()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->isFavourite()Z

    move-result v3

    .line 204
    .local v3, "fav":Z
    invoke-virtual {v6}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->getDescription()Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, "description":Ljava/lang/String;
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$2;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # invokes: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->getButtonText(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;)Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$400(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;)Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, "buttonText":Ljava/lang/String;
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$2;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$1200(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/content/Context;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/app/Activity;

    new-instance v0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$2$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$2$1;-><init>(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$2;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;)V

    invoke-virtual {v7, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 227
    return-void
.end method

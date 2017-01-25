.class Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$3;
.super Ljava/lang/Object;
.source "ActivityStreamDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$3;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 474
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 475
    .local v0, "favIV":Landroid/widget/ImageView;
    sget v3, Lcom/eventgenie/android/R$id;->favId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 476
    .local v2, "wasFav":Z
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 477
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$3;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-virtual {v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v5, Lcom/eventgenie/android/activities/others/LoginActivity;

    invoke-direct {v1, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 478
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "is_home"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 479
    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$3;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    const/16 v4, 0x1389

    invoke-virtual {v3, v1, v4}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 484
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 482
    :cond_0
    iget-object v5, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$3;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$3;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->id:Ljava/lang/Long;
    invoke-static {v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->access$000(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Ljava/lang/Long;

    move-result-object v6

    if-nez v2, :cond_1

    const/4 v3, 0x1

    :goto_1
    # invokes: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->setFavourite(Ljava/lang/Long;Z)V
    invoke-static {v5, v6, v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->access$800(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;Ljava/lang/Long;Z)V

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

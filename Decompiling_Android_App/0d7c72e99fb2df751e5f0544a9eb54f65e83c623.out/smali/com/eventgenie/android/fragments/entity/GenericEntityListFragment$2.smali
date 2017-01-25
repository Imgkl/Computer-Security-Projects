.class Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment$2;
.super Ljava/lang/Object;
.source "GenericEntityListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment$2;->this$0:Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment$2;->this$0:Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;

    # getter for: Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mCorrespondingModule:Lcom/genie_connect/android/db/config/GenieMobileModule;
    invoke-static {v0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->access$000(Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;)Lcom/genie_connect/android/db/config/GenieMobileModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment$2;->this$0:Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;

    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment$2;->this$0:Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;

    # getter for: Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mCorrespondingModule:Lcom/genie_connect/android/db/config/GenieMobileModule;
    invoke-static {v1}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->access$000(Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;)Lcom/genie_connect/android/db/config/GenieMobileModule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->openWidget(Lcom/genie_connect/android/db/config/GenieMobileModule;)V

    .line 369
    :cond_0
    return-void
.end method

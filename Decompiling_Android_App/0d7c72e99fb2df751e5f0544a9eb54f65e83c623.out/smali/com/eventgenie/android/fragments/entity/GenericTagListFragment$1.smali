.class Lcom/eventgenie/android/fragments/entity/GenericTagListFragment$1;
.super Ljava/lang/Object;
.source "GenericTagListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment$1;->this$0:Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment$1;->this$0:Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;

    iget-object v0, v0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->mCorrespondingModule:Lcom/genie_connect/android/db/config/GenieMobileModule;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment$1;->this$0:Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/activities/base/GenieBaseActivity;

    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment$1;->this$0:Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;

    iget-object v1, v1, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->mCorrespondingModule:Lcom/genie_connect/android/db/config/GenieMobileModule;

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->openWidget(Lcom/genie_connect/android/db/config/GenieMobileModule;)V

    .line 206
    :cond_0
    return-void
.end method

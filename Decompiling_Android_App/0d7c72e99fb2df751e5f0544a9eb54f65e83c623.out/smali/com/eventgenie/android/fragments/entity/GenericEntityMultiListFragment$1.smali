.class Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "GenericEntityMultiListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment$1;->this$0:Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment$1;->this$0:Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.eventgenie.android.LIVE_SYNC_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment$1;->this$0:Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/entity/GenericEntityMultiListFragment;->onLiveSyncCompleted()V

    .line 134
    :cond_0
    return-void
.end method

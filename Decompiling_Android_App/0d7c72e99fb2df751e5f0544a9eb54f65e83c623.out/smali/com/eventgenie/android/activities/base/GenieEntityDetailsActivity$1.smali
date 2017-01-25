.class Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "GenieEntityDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 145
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "LSS_ENTITY_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "entityName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "LSS_RESULT_KEY"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 148
    .local v1, "syncResult":Z
    if-eqz v1, :cond_0

    const-string/jumbo v2, "visitorsurveys"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;

    new-instance v3, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$1$1;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$1$1;-><init>(Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$1;)V

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 161
    :cond_0
    return-void
.end method

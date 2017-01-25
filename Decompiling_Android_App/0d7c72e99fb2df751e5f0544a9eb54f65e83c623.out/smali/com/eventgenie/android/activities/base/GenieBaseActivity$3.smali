.class Lcom/eventgenie/android/activities/base/GenieBaseActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "GenieBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/base/GenieBaseActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/base/GenieBaseActivity;)V
    .locals 0

    .prologue
    .line 806
    iput-object p1, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity$3;->this$0:Lcom/eventgenie/android/activities/base/GenieBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 809
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity$3;->this$0:Lcom/eventgenie/android/activities/base/GenieBaseActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->finish()V

    .line 810
    return-void
.end method

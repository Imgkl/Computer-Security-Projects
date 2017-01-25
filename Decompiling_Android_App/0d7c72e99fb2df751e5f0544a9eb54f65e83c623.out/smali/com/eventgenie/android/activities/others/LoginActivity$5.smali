.class Lcom/eventgenie/android/activities/others/LoginActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/others/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/others/LoginActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/LoginActivity;)V
    .locals 0

    .prologue
    .line 715
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/LoginActivity$5;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 718
    const-string v0, "^ LoginActivity: mReceiverFinishHomeAction()"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/LoginActivity$5;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/others/LoginActivity;->finish()V

    .line 720
    return-void
.end method

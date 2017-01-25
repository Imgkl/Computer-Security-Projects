.class Lcom/eventgenie/android/activities/multievent/MultiEventTransformErrorActivity$1;
.super Ljava/lang/Object;
.source "MultiEventTransformErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/multievent/MultiEventTransformErrorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/multievent/MultiEventTransformErrorActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/multievent/MultiEventTransformErrorActivity;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/eventgenie/android/activities/multievent/MultiEventTransformErrorActivity$1;->this$0:Lcom/eventgenie/android/activities/multievent/MultiEventTransformErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 67
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "com.eventgenie.android.FINISH_HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget-object v1, p0, Lcom/eventgenie/android/activities/multievent/MultiEventTransformErrorActivity$1;->this$0:Lcom/eventgenie/android/activities/multievent/MultiEventTransformErrorActivity;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 70
    iget-object v1, p0, Lcom/eventgenie/android/activities/multievent/MultiEventTransformErrorActivity$1;->this$0:Lcom/eventgenie/android/activities/multievent/MultiEventTransformErrorActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/intents/Navigation;->goHome(Landroid/app/Activity;Z)V

    .line 71
    return-void
.end method

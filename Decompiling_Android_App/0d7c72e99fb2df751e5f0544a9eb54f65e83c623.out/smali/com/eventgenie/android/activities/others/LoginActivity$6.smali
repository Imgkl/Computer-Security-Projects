.class Lcom/eventgenie/android/activities/others/LoginActivity$6;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/others/LoginActivity;->onEvent(Lcom/eventgenie/android/eventbus/events/dataupdate/UpdateApplySuccessEvent;)V
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
    .line 756
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/LoginActivity$6;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/LoginActivity$6;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/others/LoginActivity;->finish()V

    .line 762
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/LoginActivity$6;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/LoginActivity$6;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/others/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/others/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 763
    return-void
.end method

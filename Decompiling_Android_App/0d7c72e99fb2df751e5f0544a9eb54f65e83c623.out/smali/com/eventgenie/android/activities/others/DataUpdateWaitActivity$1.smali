.class Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "DataUpdateWaitActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity$1;->this$0:Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ DATAUPDATEACTIVITY: mReceiver action=  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.eventgenie.android.FINISH_HOME"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity$1;->this$0:Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;

    invoke-static {v4}, Lcom/eventgenie/android/utils/intents/Navigation;->goHome(Landroid/app/Activity;)V

    .line 159
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity$1;->this$0:Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;

    invoke-virtual {v4}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->finish()V

    .line 177
    :goto_0
    return-void

    .line 161
    :cond_0
    const-string v4, "com.eventgenie.android.SYNC_MESSAGE_TYPE"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 163
    .local v1, "messageType":I
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 164
    const-string v4, "com.eventgenie.android.SYNC_DESCRIPTION"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "type":Ljava/lang/String;
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity$1;->this$0:Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;

    # getter for: Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mTvDescription:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->access$000(Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 167
    .end local v3    # "type":Ljava/lang/String;
    :cond_1
    const-string v4, "com.eventgenie.android.SYNC_MAX"

    const/16 v5, 0xa

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 168
    .local v0, "max":I
    const-string v4, "com.eventgenie.android.SYNC_PROGRESS"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 169
    .local v2, "progress":I
    const-string v4, "com.eventgenie.android.SYNC_DESCRIPTION"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 171
    .restart local v3    # "type":Ljava/lang/String;
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity$1;->this$0:Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;

    # getter for: Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v4}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->access$100(Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 172
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity$1;->this$0:Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;

    # getter for: Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v4}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->access$100(Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 173
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity$1;->this$0:Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;

    # getter for: Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mTvDescription:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->access$000(Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity$1;->this$0:Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;

    # getter for: Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mEventBus:Lde/greenrobot/event/EventBus;
    invoke-static {v4}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->access$200(Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;)Lde/greenrobot/event/EventBus;

    move-result-object v4

    new-instance v5, Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;

    invoke-direct {v5, v2, v0}, Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;-><init>(II)V

    invoke-virtual {v4, v5}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

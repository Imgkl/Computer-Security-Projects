.class Lcom/urbanairship/push/iam/InAppMessageFragment$5;
.super Ljava/lang/Object;
.source "InAppMessageFragment.java"

# interfaces
.implements Lcom/urbanairship/push/iam/view/Banner$OnActionClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/iam/InAppMessageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/iam/InAppMessageFragment;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessageFragment$5;->this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionClick(Lcom/urbanairship/push/notifications/NotificationActionButton;)V
    .locals 6
    .param p1, "actionButton"    # Lcom/urbanairship/push/notifications/NotificationActionButton;

    .prologue
    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In-app message button clicked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/urbanairship/push/notifications/NotificationActionButton;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 279
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageFragment$5;->this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/iam/InAppMessageFragment;->dismiss(Z)V

    .line 281
    invoke-virtual {p1}, Lcom/urbanairship/push/notifications/NotificationActionButton;->isForegroundAction()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/urbanairship/actions/Situation;->FOREGROUND_NOTIFICATION_ACTION_BUTTON:Lcom/urbanairship/actions/Situation;

    .line 284
    .local v1, "situation":Lcom/urbanairship/actions/Situation;
    :goto_0
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageFragment$5;->this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;

    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessageFragment$5;->this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;

    # getter for: Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;
    invoke-static {v3}, Lcom/urbanairship/push/iam/InAppMessageFragment;->access$000(Lcom/urbanairship/push/iam/InAppMessageFragment;)Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v3

    invoke-virtual {p1}, Lcom/urbanairship/push/notifications/NotificationActionButton;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/iam/InAppMessage;->getButtonActionValues(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    # invokes: Lcom/urbanairship/push/iam/InAppMessageFragment;->runActions(Ljava/util/Map;Lcom/urbanairship/actions/Situation;)V
    invoke-static {v2, v3, v1}, Lcom/urbanairship/push/iam/InAppMessageFragment;->access$200(Lcom/urbanairship/push/iam/InAppMessageFragment;Ljava/util/Map;Lcom/urbanairship/actions/Situation;)V

    .line 286
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageFragment$5;->this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/InAppMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessageFragment$5;->this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;

    # getter for: Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;
    invoke-static {v3}, Lcom/urbanairship/push/iam/InAppMessageFragment;->access$000(Lcom/urbanairship/push/iam/InAppMessageFragment;)Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v3

    iget-object v4, p0, Lcom/urbanairship/push/iam/InAppMessageFragment$5;->this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;

    # getter for: Lcom/urbanairship/push/iam/InAppMessageFragment;->timer:Lcom/urbanairship/push/iam/Timer;
    invoke-static {v4}, Lcom/urbanairship/push/iam/InAppMessageFragment;->access$100(Lcom/urbanairship/push/iam/InAppMessageFragment;)Lcom/urbanairship/push/iam/Timer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/iam/Timer;->getRunTime()J

    move-result-wide v4

    invoke-static {v2, v3, p1, v4, v5}, Lcom/urbanairship/push/iam/ResolutionEvent;->createButtonClickedResolutionEvent(Landroid/content/Context;Lcom/urbanairship/push/iam/InAppMessage;Lcom/urbanairship/push/notifications/NotificationActionButton;J)Lcom/urbanairship/push/iam/ResolutionEvent;

    move-result-object v0

    .line 287
    .local v0, "resolutionEvent":Lcom/urbanairship/push/iam/ResolutionEvent;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 288
    return-void

    .line 281
    .end local v0    # "resolutionEvent":Lcom/urbanairship/push/iam/ResolutionEvent;
    .end local v1    # "situation":Lcom/urbanairship/actions/Situation;
    :cond_0
    sget-object v1, Lcom/urbanairship/actions/Situation;->BACKGROUND_NOTIFICATION_ACTION_BUTTON:Lcom/urbanairship/actions/Situation;

    goto :goto_0
.end method

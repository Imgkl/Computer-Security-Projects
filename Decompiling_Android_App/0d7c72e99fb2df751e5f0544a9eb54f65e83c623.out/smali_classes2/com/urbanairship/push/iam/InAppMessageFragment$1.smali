.class Lcom/urbanairship/push/iam/InAppMessageFragment$1;
.super Lcom/urbanairship/push/iam/Timer;
.source "InAppMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/iam/InAppMessageFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/iam/InAppMessageFragment;J)V
    .locals 0
    .param p2, "x0"    # J

    .prologue
    .line 155
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessageFragment$1;->this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;

    invoke-direct {p0, p2, p3}, Lcom/urbanairship/push/iam/Timer;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected onFinish()V
    .locals 4

    .prologue
    .line 158
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageFragment$1;->this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/urbanairship/push/iam/InAppMessageFragment;->dismiss(Z)V

    .line 159
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageFragment$1;->this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;

    # getter for: Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;
    invoke-static {v1}, Lcom/urbanairship/push/iam/InAppMessageFragment;->access$000(Lcom/urbanairship/push/iam/InAppMessageFragment;)Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageFragment$1;->this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;

    # getter for: Lcom/urbanairship/push/iam/InAppMessageFragment;->timer:Lcom/urbanairship/push/iam/Timer;
    invoke-static {v2}, Lcom/urbanairship/push/iam/InAppMessageFragment;->access$100(Lcom/urbanairship/push/iam/InAppMessageFragment;)Lcom/urbanairship/push/iam/Timer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/Timer;->getRunTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/urbanairship/push/iam/ResolutionEvent;->createTimedOutResolutionEvent(Lcom/urbanairship/push/iam/InAppMessage;J)Lcom/urbanairship/push/iam/ResolutionEvent;

    move-result-object v0

    .line 160
    .local v0, "resolutionEvent":Lcom/urbanairship/push/iam/ResolutionEvent;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 161
    return-void
.end method

.class Lcom/urbanairship/analytics/Analytics$1;
.super Lcom/urbanairship/analytics/ActivityMonitor$Listener;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/analytics/Analytics;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/analytics/ActivityMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/analytics/Analytics;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/urbanairship/analytics/Analytics;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/urbanairship/analytics/Analytics$1;->this$0:Lcom/urbanairship/analytics/Analytics;

    iput-object p2, p0, Lcom/urbanairship/analytics/Analytics$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/urbanairship/analytics/ActivityMonitor$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground(J)V
    .locals 3
    .param p1, "timeMS"    # J

    .prologue
    .line 123
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->this$0:Lcom/urbanairship/analytics/Analytics;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/urbanairship/analytics/Analytics;->access$002(Lcom/urbanairship/analytics/Analytics;Z)Z

    .line 124
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->this$0:Lcom/urbanairship/analytics/Analytics;

    new-instance v1, Lcom/urbanairship/analytics/AppBackgroundEvent;

    invoke-direct {v1, p1, p2}, Lcom/urbanairship/analytics/AppBackgroundEvent;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 127
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.urbanairship.analytics.APP_BACKGROUND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 130
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->this$0:Lcom/urbanairship/analytics/Analytics;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/Analytics;->setConversionSendId(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public onForeground(J)V
    .locals 3
    .param p1, "timeMS"    # J

    .prologue
    .line 110
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->this$0:Lcom/urbanairship/analytics/Analytics;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/Analytics;->startNewSession()V

    .line 112
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->this$0:Lcom/urbanairship/analytics/Analytics;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/urbanairship/analytics/Analytics;->access$002(Lcom/urbanairship/analytics/Analytics;Z)Z

    .line 115
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.urbanairship.analytics.APP_FOREGROUND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 118
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->this$0:Lcom/urbanairship/analytics/Analytics;

    new-instance v1, Lcom/urbanairship/analytics/AppForegroundEvent;

    invoke-direct {v1, p1, p2}, Lcom/urbanairship/analytics/AppForegroundEvent;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 119
    return-void
.end method

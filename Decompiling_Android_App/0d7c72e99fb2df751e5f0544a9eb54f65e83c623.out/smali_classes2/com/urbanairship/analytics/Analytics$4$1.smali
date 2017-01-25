.class Lcom/urbanairship/analytics/Analytics$4$1;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Lcom/urbanairship/UAirship$OnReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/analytics/Analytics$4;->onActivityStarted(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/analytics/Analytics$4;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$timeStamp:J


# direct methods
.method constructor <init>(Lcom/urbanairship/analytics/Analytics$4;Landroid/app/Activity;J)V
    .locals 1

    .prologue
    .line 345
    iput-object p1, p0, Lcom/urbanairship/analytics/Analytics$4$1;->this$0:Lcom/urbanairship/analytics/Analytics$4;

    iput-object p2, p0, Lcom/urbanairship/analytics/Analytics$4$1;->val$activity:Landroid/app/Activity;

    iput-wide p3, p0, Lcom/urbanairship/analytics/Analytics$4$1;->val$timeStamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirshipReady(Lcom/urbanairship/UAirship;)V
    .locals 6
    .param p1, "airship"    # Lcom/urbanairship/UAirship;

    .prologue
    .line 348
    invoke-virtual {p1}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/analytics/Analytics$4$1;->val$activity:Landroid/app/Activity;

    sget-object v2, Lcom/urbanairship/analytics/ActivityMonitor$Source;->AUTO_INSTRUMENTATION:Lcom/urbanairship/analytics/ActivityMonitor$Source;

    iget-wide v4, p0, Lcom/urbanairship/analytics/Analytics$4$1;->val$timeStamp:J

    invoke-static {v0, v1, v2, v4, v5}, Lcom/urbanairship/analytics/Analytics;->access$100(Lcom/urbanairship/analytics/Analytics;Landroid/app/Activity;Lcom/urbanairship/analytics/ActivityMonitor$Source;J)V

    .line 349
    return-void
.end method

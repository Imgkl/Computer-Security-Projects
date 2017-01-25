.class final Lcom/urbanairship/analytics/Analytics$2;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Lcom/urbanairship/UAirship$OnReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/analytics/Analytics;->activityStarted(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$timeMS:J


# direct methods
.method constructor <init>(Landroid/app/Activity;J)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/urbanairship/analytics/Analytics$2;->val$activity:Landroid/app/Activity;

    iput-wide p2, p0, Lcom/urbanairship/analytics/Analytics$2;->val$timeMS:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirshipReady(Lcom/urbanairship/UAirship;)V
    .locals 6
    .param p1, "airship"    # Lcom/urbanairship/UAirship;

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/analytics/Analytics$2;->val$activity:Landroid/app/Activity;

    sget-object v2, Lcom/urbanairship/analytics/ActivityMonitor$Source;->MANUAL_INSTRUMENTATION:Lcom/urbanairship/analytics/ActivityMonitor$Source;

    iget-wide v4, p0, Lcom/urbanairship/analytics/Analytics$2;->val$timeMS:J

    invoke-static {v0, v1, v2, v4, v5}, Lcom/urbanairship/analytics/Analytics;->access$100(Lcom/urbanairship/analytics/Analytics;Landroid/app/Activity;Lcom/urbanairship/analytics/ActivityMonitor$Source;J)V

    .line 148
    return-void
.end method

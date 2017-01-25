.class public Lcom/urbanairship/analytics/InstrumentedListActivity;
.super Landroid/app/ListActivity;
.source "InstrumentedListActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/urbanairship/analytics/InstrumentedListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Autopilot;->automaticTakeOff(Landroid/app/Application;)V

    .line 45
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 50
    invoke-static {p0}, Lcom/urbanairship/analytics/Analytics;->activityStarted(Landroid/app/Activity;)V

    .line 51
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 56
    invoke-static {p0}, Lcom/urbanairship/analytics/Analytics;->activityStopped(Landroid/app/Activity;)V

    .line 57
    return-void
.end method

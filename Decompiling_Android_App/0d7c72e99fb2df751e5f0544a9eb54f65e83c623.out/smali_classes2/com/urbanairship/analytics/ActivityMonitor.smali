.class Lcom/urbanairship/analytics/ActivityMonitor;
.super Ljava/lang/Object;
.source "ActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/analytics/ActivityMonitor$Listener;,
        Lcom/urbanairship/analytics/ActivityMonitor$Source;
    }
.end annotation


# static fields
.field private static final BACKGROUND_DELAY_MS:I = 0x7d0


# instance fields
.field private activityStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/urbanairship/analytics/ActivityState;",
            ">;"
        }
    .end annotation
.end field

.field private analyticsEnabled:Z

.field private currentSdkVersion:I

.field private isForeground:Z

.field private listener:Lcom/urbanairship/analytics/ActivityMonitor$Listener;

.field private minSdkVersion:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 1
    .param p1, "minSdkVersion"    # I
    .param p2, "currentSdkVersion"    # I
    .param p3, "analyticsEnabled"    # Z

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->activityStates:Landroid/util/SparseArray;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->isForeground:Z

    .line 69
    iput p1, p0, Lcom/urbanairship/analytics/ActivityMonitor;->minSdkVersion:I

    .line 70
    iput p2, p0, Lcom/urbanairship/analytics/ActivityMonitor;->currentSdkVersion:I

    .line 71
    iput-boolean p3, p0, Lcom/urbanairship/analytics/ActivityMonitor;->analyticsEnabled:Z

    .line 72
    return-void
.end method

.method private getActivityState(Landroid/app/Activity;)Lcom/urbanairship/analytics/ActivityState;
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 122
    iget-object v1, p0, Lcom/urbanairship/analytics/ActivityMonitor;->activityStates:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/analytics/ActivityState;

    .line 123
    .local v0, "state":Lcom/urbanairship/analytics/ActivityState;
    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/urbanairship/analytics/ActivityState;

    .end local v0    # "state":Lcom/urbanairship/analytics/ActivityState;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/urbanairship/analytics/ActivityMonitor;->minSdkVersion:I

    iget v3, p0, Lcom/urbanairship/analytics/ActivityMonitor;->currentSdkVersion:I

    iget-boolean v4, p0, Lcom/urbanairship/analytics/ActivityMonitor;->analyticsEnabled:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/urbanairship/analytics/ActivityState;-><init>(Ljava/lang/String;IIZ)V

    .line 125
    .restart local v0    # "state":Lcom/urbanairship/analytics/ActivityState;
    iget-object v1, p0, Lcom/urbanairship/analytics/ActivityMonitor;->activityStates:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    :cond_0
    return-object v0
.end method


# virtual methods
.method public activityStarted(Landroid/app/Activity;Lcom/urbanairship/analytics/ActivityMonitor$Source;J)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "source"    # Lcom/urbanairship/analytics/ActivityMonitor$Source;
    .param p3, "timeStamp"    # J

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/urbanairship/analytics/ActivityMonitor;->getActivityState(Landroid/app/Activity;)Lcom/urbanairship/analytics/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/urbanairship/analytics/ActivityState;->setStarted(Lcom/urbanairship/analytics/ActivityMonitor$Source;J)V

    .line 94
    invoke-virtual {p0}, Lcom/urbanairship/analytics/ActivityMonitor;->updateForegroundState()V

    .line 95
    return-void
.end method

.method public activityStopped(Landroid/app/Activity;Lcom/urbanairship/analytics/ActivityMonitor$Source;J)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "source"    # Lcom/urbanairship/analytics/ActivityMonitor$Source;
    .param p3, "timeStamp"    # J

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/urbanairship/analytics/ActivityMonitor;->getActivityState(Landroid/app/Activity;)Lcom/urbanairship/analytics/ActivityState;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4}, Lcom/urbanairship/analytics/ActivityState;->setStopped(Lcom/urbanairship/analytics/ActivityMonitor$Source;J)V

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 107
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/urbanairship/analytics/ActivityMonitor$1;

    invoke-direct {v1, p0}, Lcom/urbanairship/analytics/ActivityMonitor$1;-><init>(Lcom/urbanairship/analytics/ActivityMonitor;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    return-void
.end method

.method public setListener(Lcom/urbanairship/analytics/ActivityMonitor$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/urbanairship/analytics/ActivityMonitor$Listener;

    .prologue
    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iput-object p1, p0, Lcom/urbanairship/analytics/ActivityMonitor;->listener:Lcom/urbanairship/analytics/ActivityMonitor$Listener;

    .line 82
    monitor-exit p0

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateForegroundState()V
    .locals 10

    .prologue
    .line 136
    const-wide/16 v4, 0x0

    .line 137
    .local v4, "lastForegroundTime":J
    const-wide/16 v2, 0x0

    .line 139
    .local v2, "lastBackgroundTime":J
    const/4 v1, 0x0

    .line 141
    .local v1, "isAppForegrounded":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v7, p0, Lcom/urbanairship/analytics/ActivityMonitor;->activityStates:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 142
    iget-object v7, p0, Lcom/urbanairship/analytics/ActivityMonitor;->activityStates:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/urbanairship/analytics/ActivityState;

    .line 144
    .local v6, "state":Lcom/urbanairship/analytics/ActivityState;
    invoke-virtual {v6}, Lcom/urbanairship/analytics/ActivityState;->isForeground()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 145
    const/4 v1, 0x1

    .line 146
    invoke-virtual {v6}, Lcom/urbanairship/analytics/ActivityState;->getLastModifiedTime()J

    move-result-wide v8

    cmp-long v7, v8, v4

    if-lez v7, :cond_0

    .line 147
    invoke-virtual {v6}, Lcom/urbanairship/analytics/ActivityState;->getLastModifiedTime()J

    move-result-wide v4

    .line 141
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {v6}, Lcom/urbanairship/analytics/ActivityState;->getLastModifiedTime()J

    move-result-wide v8

    cmp-long v7, v8, v2

    if-lez v7, :cond_0

    .line 151
    invoke-virtual {v6}, Lcom/urbanairship/analytics/ActivityState;->getLastModifiedTime()J

    move-result-wide v2

    goto :goto_1

    .line 156
    .end local v6    # "state":Lcom/urbanairship/analytics/ActivityState;
    :cond_2
    iget-boolean v7, p0, Lcom/urbanairship/analytics/ActivityMonitor;->isForeground:Z

    if-eq v7, v1, :cond_4

    .line 157
    iput-boolean v1, p0, Lcom/urbanairship/analytics/ActivityMonitor;->isForeground:Z

    .line 159
    monitor-enter p0

    .line 160
    if-eqz v1, :cond_5

    .line 161
    :try_start_0
    iget-object v7, p0, Lcom/urbanairship/analytics/ActivityMonitor;->listener:Lcom/urbanairship/analytics/ActivityMonitor$Listener;

    if-eqz v7, :cond_3

    .line 162
    iget-object v7, p0, Lcom/urbanairship/analytics/ActivityMonitor;->listener:Lcom/urbanairship/analytics/ActivityMonitor$Listener;

    invoke-virtual {v7, v4, v5}, Lcom/urbanairship/analytics/ActivityMonitor$Listener;->onForeground(J)V

    .line 169
    :cond_3
    :goto_2
    monitor-exit p0

    .line 171
    :cond_4
    return-void

    .line 165
    :cond_5
    iget-object v7, p0, Lcom/urbanairship/analytics/ActivityMonitor;->listener:Lcom/urbanairship/analytics/ActivityMonitor$Listener;

    if-eqz v7, :cond_3

    .line 166
    iget-object v7, p0, Lcom/urbanairship/analytics/ActivityMonitor;->listener:Lcom/urbanairship/analytics/ActivityMonitor$Listener;

    invoke-virtual {v7, v2, v3}, Lcom/urbanairship/analytics/ActivityMonitor$Listener;->onBackground(J)V

    goto :goto_2

    .line 169
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

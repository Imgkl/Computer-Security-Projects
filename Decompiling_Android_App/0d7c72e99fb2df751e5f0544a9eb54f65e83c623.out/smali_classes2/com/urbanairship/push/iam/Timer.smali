.class abstract Lcom/urbanairship/push/iam/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# instance fields
.field private elapsedTimeMs:J

.field private final handler:Landroid/os/Handler;

.field private isStarted:Z

.field private remainingTimeMs:J

.field private startTimeMs:J

.field private final trigger:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(J)V
    .locals 1
    .param p1, "milliseconds"    # J

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/iam/Timer;->handler:Landroid/os/Handler;

    .line 42
    new-instance v0, Lcom/urbanairship/push/iam/Timer$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/push/iam/Timer$1;-><init>(Lcom/urbanairship/push/iam/Timer;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/Timer;->trigger:Ljava/lang/Runnable;

    .line 58
    iput-wide p1, p0, Lcom/urbanairship/push/iam/Timer;->remainingTimeMs:J

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/push/iam/Timer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/push/iam/Timer;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/urbanairship/push/iam/Timer;->isStarted:Z

    return v0
.end method


# virtual methods
.method getRunTime()J
    .locals 4

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/urbanairship/push/iam/Timer;->isStarted:Z

    if-eqz v0, :cond_0

    .line 101
    iget-wide v0, p0, Lcom/urbanairship/push/iam/Timer;->elapsedTimeMs:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/urbanairship/push/iam/Timer;->startTimeMs:J

    sub-long/2addr v0, v2

    .line 104
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/urbanairship/push/iam/Timer;->elapsedTimeMs:J

    goto :goto_0
.end method

.method protected abstract onFinish()V
.end method

.method start()V
    .locals 4

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/urbanairship/push/iam/Timer;->isStarted:Z

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/push/iam/Timer;->isStarted:Z

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/urbanairship/push/iam/Timer;->startTimeMs:J

    .line 72
    iget-wide v0, p0, Lcom/urbanairship/push/iam/Timer;->remainingTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/urbanairship/push/iam/Timer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/push/iam/Timer;->trigger:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/urbanairship/push/iam/Timer;->remainingTimeMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/push/iam/Timer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/push/iam/Timer;->trigger:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method stop()V
    .locals 8

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/urbanairship/push/iam/Timer;->isStarted:Z

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/urbanairship/push/iam/Timer;->startTimeMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/urbanairship/push/iam/Timer;->elapsedTimeMs:J

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/push/iam/Timer;->isStarted:Z

    .line 90
    iget-object v0, p0, Lcom/urbanairship/push/iam/Timer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/push/iam/Timer;->trigger:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 91
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/urbanairship/push/iam/Timer;->remainingTimeMs:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/urbanairship/push/iam/Timer;->startTimeMs:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/urbanairship/push/iam/Timer;->remainingTimeMs:J

    goto :goto_0
.end method

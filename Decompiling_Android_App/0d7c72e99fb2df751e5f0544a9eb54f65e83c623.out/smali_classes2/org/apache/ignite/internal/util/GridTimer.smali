.class public Lorg/apache/ignite/internal/util/GridTimer;
.super Ljava/lang/Object;
.source "GridTimer.java"


# static fields
.field private static final DEBUG_DATE_FMT:Ljava/text/SimpleDateFormat;


# instance fields
.field private end:J

.field private final name:Ljava/lang/String;

.field private final start:J

.field private threshold:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss,SS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/ignite/internal/util/GridTimer;->DEBUG_DATE_FMT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/GridTimer;->start:J

    .line 48
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridTimer;->name:Ljava/lang/String;

    .line 50
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/GridTimer;->threshold:J

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "threshold"    # J

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/GridTimer;->start:J

    .line 58
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridTimer;->name:Ljava/lang/String;

    .line 59
    iput-wide p2, p0, Lorg/apache/ignite/internal/util/GridTimer;->threshold:J

    .line 60
    return-void
.end method

.method private debug(Ljava/lang/String;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 146
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/util/GridTimer;->DEBUG_DATE_FMT:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "><DEBUG><"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    return-void
.end method


# virtual methods
.method public duration()J
    .locals 4

    .prologue
    .line 111
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/GridTimer;->end:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/ignite/internal/util/GridTimer;->end:J

    iget-wide v2, p0, Lorg/apache/ignite/internal/util/GridTimer;->start:J

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/util/GridTimer;->start:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public endTime()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/GridTimer;->end:J

    return-wide v0
.end method

.method public maxedOut()Z
    .locals 4

    .prologue
    .line 97
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/GridTimer;->threshold:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridTimer;->duration()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/util/GridTimer;->threshold:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridTimer;->name:Ljava/lang/String;

    return-object v0
.end method

.method public startTime()J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/GridTimer;->start:J

    return-wide v0
.end method

.method public stop()J
    .locals 4

    .prologue
    .line 68
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/GridTimer;->end:J

    .line 70
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridTimer;->maxedOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timer maxed out [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridTimer;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridTimer;->duration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/GridTimer;->debug(Ljava/lang/String;)V

    .line 73
    :cond_0
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/GridTimer;->end:J

    iget-wide v2, p0, Lorg/apache/ignite/internal/util/GridTimer;->start:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method stopped()Z
    .locals 4

    .prologue
    .line 104
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/GridTimer;->end:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopx()Z
    .locals 4

    .prologue
    .line 82
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/GridTimer;->end:J

    .line 84
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridTimer;->maxedOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timer maxed out [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridTimer;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridTimer;->duration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/GridTimer;->debug(Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x0

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public threshold()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/GridTimer;->threshold:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 152
    const-class v0, Lorg/apache/ignite/internal/util/GridTimer;

    const-string v1, "duration"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridTimer;->duration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

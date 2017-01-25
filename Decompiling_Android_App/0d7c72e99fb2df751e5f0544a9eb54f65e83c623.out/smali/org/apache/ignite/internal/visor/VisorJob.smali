.class public abstract Lorg/apache/ignite/internal/visor/VisorJob;
.super Lorg/apache/ignite/compute/ComputeJobAdapter;
.source "VisorJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/compute/ComputeJobAdapter;"
    }
.end annotation


# instance fields
.field protected debug:Z

.field protected transient ignite:Lorg/apache/ignite/internal/IgniteEx;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field

.field protected transient start:J


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Z)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "debug"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;Z)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lorg/apache/ignite/internal/visor/VisorJob;, "Lorg/apache/ignite/internal/visor/VisorJob<TA;TR;>;"
    .local p1, "arg":Ljava/lang/Object;, "TA;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/compute/ComputeJobAdapter;-><init>(Ljava/lang/Object;)V

    .line 54
    iput-boolean p2, p0, Lorg/apache/ignite/internal/visor/VisorJob;->debug:Z

    .line 55
    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lorg/apache/ignite/internal/visor/VisorJob;, "Lorg/apache/ignite/internal/visor/VisorJob<TA;TR;>;"
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/visor/VisorJob;->start:J

    .line 61
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/visor/VisorJob;->argument(I)Ljava/lang/Object;

    move-result-object v0

    .line 64
    .local v0, "arg":Ljava/lang/Object;, "TA;"
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/visor/VisorJob;->debug:Z

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lorg/apache/ignite/internal/visor/VisorJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteEx;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/visor/VisorJob;->start:J

    invoke-static {v1, v2, v4, v5}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->logStart(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Class;J)V

    .line 67
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/visor/VisorJob;->run(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 70
    iget-boolean v2, p0, Lorg/apache/ignite/internal/visor/VisorJob;->debug:Z

    if-eqz v2, :cond_1

    .line 71
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/VisorJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteEx;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/ignite/internal/visor/VisorJob;->start:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->logFinish(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Class;J)V

    :cond_1
    return-object v1

    .line 70
    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lorg/apache/ignite/internal/visor/VisorJob;->debug:Z

    if-eqz v2, :cond_2

    .line 71
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/VisorJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteEx;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/ignite/internal/visor/VisorJob;->start:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->logFinish(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Class;J)V

    :cond_2
    throw v1
.end method

.method protected abstract run(Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

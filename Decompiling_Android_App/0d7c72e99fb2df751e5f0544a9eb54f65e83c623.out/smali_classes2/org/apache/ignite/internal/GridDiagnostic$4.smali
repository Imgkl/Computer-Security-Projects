.class final Lorg/apache/ignite/internal/GridDiagnostic$4;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "GridDiagnostic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/GridDiagnostic;->runBackgroundCheck(Ljava/lang/String;Ljava/util/concurrent/Executor;Lorg/apache/ignite/IgniteLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    return-void
.end method


# virtual methods
.method public body()V
    .locals 3

    .prologue
    .line 110
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->allLocalMACs()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/apache/ignite/internal/GridDiagnostic$4;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "No live network interfaces detected. If IP-multicast discovery is used - make sure to add 127.0.0.1 as a local address."

    const-string v2, "No live network interfaces. Add 127.0.0.1 as a local address."

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    :cond_0
    return-void
.end method

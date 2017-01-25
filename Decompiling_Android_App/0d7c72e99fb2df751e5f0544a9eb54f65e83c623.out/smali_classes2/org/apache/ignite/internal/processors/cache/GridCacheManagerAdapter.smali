.class public Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;
.super Ljava/lang/Object;
.source "GridCacheManagerAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheManager",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field protected log:Lorg/apache/ignite/IgniteLogger;

.field private final starting:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->starting:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method protected context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method protected kernalStartInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache manager received onKernalStart() callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected kernalStopInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache manager received onKernalStop() callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected log()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method public final onKernalStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->onKernalStart0()V

    .line 99
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->kernalStartInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 101
    :cond_0
    return-void
.end method

.method protected onKernalStart0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter<TK;TV;>;"
    return-void
.end method

.method public final onKernalStop(Z)V
    .locals 2
    .param p1, "cancel"    # Z

    .prologue
    .line 105
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->starting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->onKernalStop0(Z)V

    .line 111
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->kernalStopInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onKernalStop0(Z)V
    .locals 0
    .param p1, "cancel"    # Z

    .prologue
    .line 127
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter<TK;TV;>;"
    return-void
.end method

.method public printMemoryStats()V
    .locals 0

    .prologue
    .line 132
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter<TK;TV;>;"
    return-void
.end method

.method public final start(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter<TK;TV;>;"
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->starting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method start is called more than once for manager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 43
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 45
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->logger(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    .line 49
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->start0()V

    .line 51
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->startInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 53
    :cond_2
    return-void
.end method

.method protected start0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter<TK;TV;>;"
    return-void
.end method

.method protected startInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache manager started: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final stop(Z)V
    .locals 2
    .param p1, "cancel"    # Z

    .prologue
    .line 78
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->starting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->stop0(Z)V

    .line 84
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->stopInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected stop0(Z)V
    .locals 0
    .param p1, "cancel"    # Z

    .prologue
    .line 93
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter<TK;TV;>;"
    return-void
.end method

.method protected stopInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache manager stopped: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

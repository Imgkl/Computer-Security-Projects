.class public Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;
.super Lorg/apache/ignite/internal/managers/GridManagerAdapter;
.source "GridCollisionManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/managers/GridManagerAdapter",
        "<",
        "Lorg/apache/ignite/spi/collision/CollisionSpi;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/SkipDaemon;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final extLsnr:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/spi/collision/CollisionExternalListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 3
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/ignite/spi/collision/CollisionSpi;

    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCollisionSpi()Lorg/apache/ignite/spi/collision/CollisionSpi;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/managers/GridManagerAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;[Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->extLsnr:Ljava/util/concurrent/atomic/AtomicReference;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->extLsnr:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method


# virtual methods
.method public onCollision(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/collision/CollisionJobContext;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/collision/CollisionJobContext;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/collision/CollisionJobContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "waitJobs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/collision/CollisionJobContext;>;"
    .local p2, "activeJobs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/collision/CollisionJobContext;>;"
    .local p3, "heldJobs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/collision/CollisionJobContext;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->enabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resolving job collisions [waitJobs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", activeJobs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 116
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/collision/CollisionSpi;

    new-instance v1, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager$2;

    invoke-direct {v1, p0, p2, p1, p3}, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager$2;-><init>(Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lorg/apache/ignite/spi/collision/CollisionSpi;->onCollision(Lorg/apache/ignite/spi/collision/CollisionContext;)V

    .line 130
    :cond_1
    return-void
.end method

.method public setCollisionExternalListener(Lorg/apache/ignite/spi/collision/CollisionExternalListener;)V
    .locals 3
    .param p1, "lsnr"    # Lorg/apache/ignite/spi/collision/CollisionExternalListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 94
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->enabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->extLsnr:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    sget-boolean v0, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Collision external listener has already been set (perhaps need to add support for multiple listeners)"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully set external collision listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 101
    :cond_1
    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->startSpi()V

    .line 50
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->enabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/collision/CollisionSpi;

    new-instance v1, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager$1;-><init>(Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;)V

    invoke-interface {v0, v1}, Lorg/apache/ignite/spi/collision/CollisionSpi;->setExternalCollisionListener(Lorg/apache/ignite/spi/collision/CollisionExternalListener;)V

    .line 63
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->startInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Collision resolution is disabled (all jobs will be activated upon arrival)."

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public stop(Z)V
    .locals 2
    .param p1, "cancel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isDaemon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->stopSpi()V

    .line 75
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->enabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/collision/CollisionSpi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/ignite/spi/collision/CollisionSpi;->setExternalCollisionListener(Lorg/apache/ignite/spi/collision/CollisionExternalListener;)V

    .line 78
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->stopInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unsetCollisionExternalListener()V
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/collision/CollisionSpi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/ignite/spi/collision/CollisionSpi;->setExternalCollisionListener(Lorg/apache/ignite/spi/collision/CollisionExternalListener;)V

    .line 88
    :cond_0
    return-void
.end method

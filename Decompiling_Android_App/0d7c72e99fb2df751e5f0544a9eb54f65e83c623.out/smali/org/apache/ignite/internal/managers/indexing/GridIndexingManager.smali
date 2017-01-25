.class public Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;
.super Lorg/apache/ignite/internal/managers/GridManagerAdapter;
.source "GridIndexingManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/managers/GridManagerAdapter",
        "<",
        "Lorg/apache/ignite/spi/indexing/IndexingSpi;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/SkipDaemon;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 3
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/ignite/spi/indexing/IndexingSpi;

    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getIndexingSpi()Lorg/apache/ignite/spi/indexing/IndexingSpi;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/managers/GridManagerAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;[Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 36
    new-instance v0, Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    .line 43
    return-void
.end method


# virtual methods
.method protected onKernalStop0(Z)V
    .locals 1
    .param p1, "cancel"    # Z

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isDaemon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->block()V

    goto :goto_0
.end method

.method public onSwap(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "spaceName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to process swap event (grid is stopping)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/indexing/IndexingSpi;

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/spi/indexing/IndexingSpi;->onSwap(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v0
.end method

.method public onUnswap(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "spaceName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to process swap event (grid is stopping)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/indexing/IndexingSpi;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/ignite/spi/indexing/IndexingSpi;->onUnswap(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v0
.end method

.method public query(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;)Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;
    .locals 3
    .param p1, "space"    # Ljava/lang/String;
    .param p3, "filters"    # Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;",
            ")",
            "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 143
    .local p2, "params":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->enabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    const-string v2, "Indexing SPI is not configured."

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to execute query (grid is stopping)."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/spi/indexing/IndexingSpi;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/ignite/spi/indexing/IndexingSpi;->query(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;)Ljava/util/Iterator;

    move-result-object v0

    .line 152
    .local v0, "res":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    if-nez v0, :cond_2

    .line 153
    new-instance v1, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;

    invoke-direct {v1}, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    :goto_0
    return-object v1

    .line 155
    :cond_2
    :try_start_1
    new-instance v1, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager$1;-><init>(Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;Ljava/util/Iterator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto :goto_0

    .end local v0    # "res":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v1
.end method

.method public remove(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "space"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 117
    sget-boolean v0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->enabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    if-nez v0, :cond_2

    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to remove from index (grid is stopping)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/indexing/IndexingSpi;

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/spi/indexing/IndexingSpi;->remove(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v0
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Indexing is disabled (to enable please configure GridIndexingSpi)."

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 52
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->startSpi()V

    .line 54
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->startInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 56
    :cond_1
    return-void
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
    .line 70
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isDaemon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->stopSpi()V

    .line 75
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->stopInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public store(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 6
    .param p1, "space"    # Ljava/lang/String;
    .param p4, "expirationTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;TV;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 90
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "val":Ljava/lang/Object;, "TV;"
    sget-boolean v0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 91
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 93
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->enabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    :goto_0
    return-void

    .line 96
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    if-nez v0, :cond_3

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to write to index (grid is stopping)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_3
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 101
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Storing key to cache query index [key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 103
    :cond_4
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/indexing/IndexingSpi;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/apache/ignite/spi/indexing/IndexingSpi;->store(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v0
.end method

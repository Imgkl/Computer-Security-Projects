.class public Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;
.super Lorg/apache/ignite/spi/IgniteSpiAdapter;
.source "CacheCheckpointSpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;
.implements Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpiMBean;


# annotations
.annotation runtime Lorg/apache/ignite/spi/IgniteSpiMultipleInstancesSupport;
    value = true
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DFLT_CACHE_NAME:Ljava/lang/String; = "checkpoints"


# instance fields
.field private cacheName:Ljava/lang/String;

.field private evtLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field

.field private lsnr:Lorg/apache/ignite/spi/checkpoint/CheckpointListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const-class v0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;-><init>()V

    .line 106
    const-string v0, "checkpoints"

    iput-object v0, p0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->cacheName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;)Lorg/apache/ignite/spi/checkpoint/CheckpointListener;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->lsnr:Lorg/apache/ignite/spi/checkpoint/CheckpointListener;

    return-object v0
.end method


# virtual methods
.method public getCacheName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method public loadCheckpoint(Ljava/lang/String;)[B
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 192
    sget-boolean v1, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 195
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->cacheName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lorg/apache/ignite/spi/IgniteSpiContext;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B
    :try_end_0
    .catch Ljavax/cache/CacheException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljavax/cache/CacheException;
    new-instance v1, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load checkpoint data [key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected onContextDestroyed0()V
    .locals 2

    .prologue
    .line 182
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->evtLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {p0}, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v0

    .line 185
    .local v0, "ctx":Lorg/apache/ignite/spi/IgniteSpiContext;
    if-eqz v0, :cond_0

    .line 186
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->evtLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    invoke-interface {v0, v1}, Lorg/apache/ignite/spi/IgniteSpiContext;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;)Z

    .line 188
    .end local v0    # "ctx":Lorg/apache/ignite/spi/IgniteSpiContext;
    :cond_0
    return-void
.end method

.method protected onContextInitialized0(Lorg/apache/ignite/spi/IgniteSpiContext;)V
    .locals 3
    .param p1, "spiCtx"    # Lorg/apache/ignite/spi/IgniteSpiContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p0}, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi$1;-><init>(Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;)V

    iput-object v1, p0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->evtLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/spi/IgniteSpiContext;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)V

    .line 169
    return-void

    .line 150
    nop

    :array_0
    .array-data 4
        0x41
        0x46
    .end array-data
.end method

.method public removeCheckpoint(Ljava/lang/String;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 225
    sget-boolean v2, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 228
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->cacheName:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Lorg/apache/ignite/spi/IgniteSpiContext;->remove(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/cache/CacheException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 233
    :cond_1
    :goto_0
    return v1

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljavax/cache/CacheException;
    iget-object v2, p0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove checkpoint data [key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public saveCheckpoint(Ljava/lang/String;[BJZ)Z
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "state"    # [B
    .param p3, "timeout"    # J
    .param p5, "overwrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 205
    sget-boolean v0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 206
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 209
    :cond_1
    if-eqz p5, :cond_2

    .line 210
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->cacheName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lorg/apache/ignite/spi/IgniteSpiContext;->put(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 215
    :goto_0
    return v7

    :cond_2
    invoke-virtual {p0}, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->cacheName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lorg/apache/ignite/spi/IgniteSpiContext;->putIfAbsent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/cache/CacheException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v7

    :goto_1
    move v7, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 217
    :catch_0
    move-exception v6

    .line 218
    .local v6, "e":Ljavax/cache/CacheException;
    new-instance v0, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save checkpoint data [key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", stateSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setCacheName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 123
    iput-object p1, p0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->cacheName:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setCheckpointListener(Lorg/apache/ignite/spi/checkpoint/CheckpointListener;)V
    .locals 0
    .param p1, "lsnr"    # Lorg/apache/ignite/spi/checkpoint/CheckpointListener;

    .prologue
    .line 239
    iput-object p1, p0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->lsnr:Lorg/apache/ignite/spi/checkpoint/CheckpointListener;

    .line 240
    return-void
.end method

.method public spiStart(Ljava/lang/String;)V
    .locals 3
    .param p1, "gridName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->cacheName:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    const-string v1, "!F.isEmpty(cacheName)"

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->assertParameter(ZLjava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->startStopwatch()V

    .line 139
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "cacheName"

    iget-object v2, p0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->cacheName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 142
    :cond_0
    const-class v0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpiMBean;

    invoke-virtual {p0, p1, p0, v0}, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->registerMBean(Ljava/lang/String;Lorg/apache/ignite/spi/IgniteSpiManagementMBean;Ljava/lang/Class;)V

    .line 144
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->startInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 146
    :cond_1
    return-void

    .line 133
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public spiStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0}, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->unregisterMBean()V

    .line 176
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->stopInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 178
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    const-class v0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

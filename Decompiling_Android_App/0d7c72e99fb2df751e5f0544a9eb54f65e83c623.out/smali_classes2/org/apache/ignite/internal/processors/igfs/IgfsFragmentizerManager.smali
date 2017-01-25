.class public Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;
.super Lorg/apache/ignite/internal/processors/igfs/IgfsManager;
.source "IgfsFragmentizerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$IdentityHashSet;,
        Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;,
        Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;
    }
.end annotation


# static fields
.field private static final FRAGMENTIZER_CHECK_INTERVAL:I = 0xbb8

.field private static final MESSAGE_SEND_RETRY_COUNT:I = 0x3

.field private static final MESSAGE_SEND_RETRY_INTERVAL:I = 0x3e8

.field private static final MSG_OFFER_TIMEOUT:I = 0x3e8


# instance fields
.field private volatile fragmentizerCrd:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;

.field private volatile fragmentizerEnabled:Z

.field private fragmentizerWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;

.field private rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

.field private volatile stopping:Z

.field private topic:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsManager;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->fragmentizerEnabled:Z

    .line 75
    new-instance v0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    .line 812
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;Lorg/apache/ignite/events/DiscoveryEvent;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;
    .param p1, "x1"    # Lorg/apache/ignite/events/DiscoveryEvent;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->checkLaunchCoordinator(Lorg/apache/ignite/events/DiscoveryEvent;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->topic:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;
    .param p1, "x1"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->fileForFragmentizer(Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->sendWithRetries(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;)V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->processFragmentizerRequest(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;)V

    return-void
.end method

.method private checkLaunchCoordinator(Lorg/apache/ignite/events/DiscoveryEvent;)V
    .locals 9
    .param p1, "discoEvt"    # Lorg/apache/ignite/events/DiscoveryEvent;

    .prologue
    .line 191
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 194
    :try_start_0
    iget-boolean v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->stopping:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v6, :cond_0

    .line 225
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    .line 227
    :goto_0
    return-void

    .line 197
    :cond_0
    :try_start_1
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->fragmentizerCrd:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;

    if-nez v6, :cond_5

    .line 198
    const-wide v2, 0x7fffffffffffffffL

    .line 200
    .local v2, "minNodeOrder":J
    invoke-virtual {p1}, Lorg/apache/ignite/events/DiscoveryEvent;->topologyNodes()Ljava/util/Collection;

    move-result-object v5

    .line 202
    .local v5, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/cluster/ClusterNode;

    .line 203
    .local v4, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gez v6, :cond_1

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v6, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->igfsNode(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 204
    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v2

    goto :goto_1

    .line 207
    .end local v4    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_2
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/internal/IgniteEx;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    .line 209
    .local v1, "locNode":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_5

    .line 210
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 211
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Detected local node to be the eldest IGFS node in topology, starting fragmentizer coordinator thread [discoEvt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", locNode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 214
    :cond_3
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 215
    :try_start_2
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->fragmentizerCrd:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->stopping:Z

    if-nez v6, :cond_4

    .line 216
    new-instance v6, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;

    invoke-direct {v6, p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;)V

    iput-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->fragmentizerCrd:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;

    .line 218
    new-instance v6, Lorg/apache/ignite/thread/IgniteThread;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->fragmentizerCrd:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;

    invoke-direct {v6, v7}, Lorg/apache/ignite/thread/IgniteThread;-><init>(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    invoke-virtual {v6}, Lorg/apache/ignite/thread/IgniteThread;->start()V

    .line 220
    :cond_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "locNode":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v2    # "minNodeOrder":J
    .end local v5    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_5
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto/16 :goto_0

    .line 220
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "locNode":Lorg/apache/ignite/cluster/ClusterNode;
    .restart local v2    # "minNodeOrder":J
    .restart local v5    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 225
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "locNode":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v2    # "minNodeOrder":J
    .end local v5    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :catchall_1
    move-exception v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v6
.end method

.method private deleteRange(Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;)Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .param p1, "range"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;",
            ")",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$3;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$3;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;)V

    return-object v0
.end method

.method private fileForFragmentizer(Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;)",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 687
    .local p1, "exclude":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteUuid;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->fragmentizerEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->meta()Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fileForFragmentizer(Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processFragmentizerRequest(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;)V
    .locals 11
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x5d

    .line 244
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;->finishUnmarshal(Lorg/apache/ignite/marshaller/Marshaller;Ljava/lang/ClassLoader;)V

    .line 246
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;->fragmentRanges()Ljava/util/Collection;

    move-result-object v5

    .line 247
    .local v5, "ranges":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    .line 249
    .local v1, "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->meta()Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v2

    .line 251
    .local v2, "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-nez v2, :cond_1

    .line 252
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 253
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to find file info for fragmentizer request: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 313
    :cond_0
    return-void

    .line 258
    :cond_1
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 259
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Moving file ranges for fragmentizer request [req="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", fileInfo="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 261
    :cond_2
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    .line 265
    .local v4, "range":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    :try_start_0
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->status()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 268
    :pswitch_0
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->meta()Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {p0, v4, v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->updateRange(Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;I)Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->updateInfo(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v6

    .line 270
    .local v6, "updated":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-nez v6, :cond_4

    .line 271
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->data()Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v2, v4, v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->cleanBlocks(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;Z)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/igfs/IgfsInvalidRangeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    .end local v6    # "updated":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Lorg/apache/ignite/internal/processors/igfs/IgfsInvalidRangeException;
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 309
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to update file range [range="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "fileId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", err="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsInvalidRangeException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 281
    .end local v0    # "e":Lorg/apache/ignite/internal/processors/igfs/IgfsInvalidRangeException;
    :cond_4
    :pswitch_1
    :try_start_1
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->data()Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-result-object v7

    invoke-virtual {v7, v2, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->spreadBlocks(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;)V

    .line 284
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->meta()Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v7

    const/4 v8, 0x2

    invoke-direct {p0, v4, v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->updateRange(Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;I)Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->updateInfo(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v6

    .line 286
    .restart local v6    # "updated":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-nez v6, :cond_5

    .line 287
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->data()Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v2, v4, v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->cleanBlocks(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;Z)V

    goto/16 :goto_0

    .line 297
    .end local v6    # "updated":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_5
    :pswitch_2
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->data()Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v4, v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->cleanBlocks(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;Z)V

    .line 300
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->meta()Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v7

    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->deleteRange(Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;)Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->updateInfo(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v6

    .line 302
    .restart local v6    # "updated":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-nez v6, :cond_3

    .line 303
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->data()Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v2, v4, v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->cleanBlocks(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;Z)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/igfs/IgfsInvalidRangeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendWithRetries(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;)V
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 165
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 167
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->topic:Ljava/lang/Object;

    sget-object v4, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    invoke-virtual {v2, p1, v3, p2, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->send(Ljava/util/UUID;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->alive(Ljava/util/UUID;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 173
    new-instance v2, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send message (node left the grid) [nodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 176
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 177
    throw v0

    .line 179
    :cond_2
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateRange(Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;I)Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .param p1, "range"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;",
            "I)",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$2;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;I)V

    return-object v0
.end method


# virtual methods
.method protected onKernalStart0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->isFragmentizerEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localJoinEvent()Lorg/apache/ignite/events/DiscoveryEvent;

    move-result-object v0

    .line 113
    .local v0, "locJoinEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->checkLaunchCoordinator(Lorg/apache/ignite/events/DiscoveryEvent;)V

    .line 115
    .end local v0    # "locJoinEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    :cond_0
    return-void
.end method

.method protected onKernalStop0(Z)V
    .locals 6
    .param p1, "cancel"    # Z

    .prologue
    .line 120
    const/4 v1, 0x0

    .line 125
    .local v1, "interrupted":Z
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    const-wide/16 v4, 0xc8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->tryWriteLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    .line 138
    if-eqz v1, :cond_0

    .line 139
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 141
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->stopping:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeUnlock()V

    .line 147
    monitor-enter p0

    .line 148
    :try_start_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->fragmentizerCrd:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;

    if-eqz v2, :cond_1

    .line 149
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->fragmentizerCrd:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->cancel()V

    .line 150
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 152
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->fragmentizerWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;

    if-eqz v2, :cond_2

    .line 153
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->fragmentizerWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->cancel()V

    .line 155
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->fragmentizerCrd:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Lorg/apache/ignite/internal/util/worker/GridWorker;Lorg/apache/ignite/IgniteLogger;)Z

    .line 156
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->fragmentizerWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Lorg/apache/ignite/internal/util/worker/GridWorker;Lorg/apache/ignite/IgniteLogger;)Z

    .line 157
    return-void

    .line 128
    :cond_3
    const-wide/16 v2, 0xc8

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 133
    .local v0, "ignore":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 134
    goto :goto_0

    .line 144
    .end local v0    # "ignore":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeUnlock()V

    throw v2

    .line 150
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method protected start0()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->isFragmentizerEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$1;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$1;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;)V

    const/16 v3, 0xb

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0xc

    aput v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;I[I)V

    .line 96
    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->fragmentizerWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;

    .line 98
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getName()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "igfsName":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_IGFS:Lorg/apache/ignite/internal/GridTopic;

    :goto_1
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->topic:Ljava/lang/Object;

    .line 102
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->topic:Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->fragmentizerWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 104
    new-instance v1, Lorg/apache/ignite/thread/IgniteThread;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->fragmentizerWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;

    invoke-direct {v1, v2}, Lorg/apache/ignite/thread/IgniteThread;-><init>(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    invoke-virtual {v1}, Lorg/apache/ignite/thread/IgniteThread;->start()V

    goto :goto_0

    .line 100
    :cond_1
    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_IGFS:Lorg/apache/ignite/internal/GridTopic;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/GridTopic;->topic(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1
.end method

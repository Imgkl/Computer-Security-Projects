.class public Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
.super Lorg/apache/ignite/internal/processors/igfs/IgfsManager;
.source "IgfsMetaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdatePath;,
        Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;,
        Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;,
        Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$PathDescriptor;,
        Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

.field private cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;

.field private volatile delWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;

.field private evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

.field private id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private locNode:Lorg/apache/ignite/cluster/ClusterNode;

.field private log:Lorg/apache/ignite/IgniteLogger;

.field private metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCache",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private metaCacheStartLatch:Ljava/util/concurrent/CountDownLatch;

.field private sampling:Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsManager;-><init>()V

    .line 83
    new-instance v0, Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    .line 2986
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCacheStartLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/internal/processors/cache/GridCache;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/igfs/IgfsException;)Lorg/apache/ignite/IgniteCheckedException;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/igfs/IgfsException;

    .prologue
    .line 54
    invoke-static {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fsException(Lorg/apache/ignite/igfs/IgfsException;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    .param p1, "x1"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct/range {p0 .. p5}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->moveNonTx(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    .param p1, "x1"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->softDeleteNonTx(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    .param p1, "x1"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "x2"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->updatePropertiesNonTx(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/igfs/IgfsPath;ZLjava/util/Map;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    .param p1, "x1"    # Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    .param p2, "x2"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p3, "x3"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .param p4, "x4"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p5, "x5"    # Z
    .param p6, "x6"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct/range {p0 .. p6}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->synchronize(Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/igfs/IgfsPath;ZLjava/util/Map;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->locNode:Lorg/apache/ignite/cluster/ClusterNode;

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/String;)Lorg/apache/ignite/IgniteCheckedException;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fsException(Ljava/lang/String;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    .param p1, "x1"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->putIfAbsentNonTx(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    return-object v0
.end method

.method private directoryListing(Lorg/apache/ignite/lang/IgniteUuid;Z)Ljava/util/Map;
    .locals 3
    .param p1, "fileId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "skipTx"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 671
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 673
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->getAllOutTx(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-object v0, v1

    .line 676
    .local v0, "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :goto_0
    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    :goto_1
    return-object v1

    .line 673
    .end local v0    # "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-object v0, v1

    goto :goto_0

    .line 676
    .restart local v0    # "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_2
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing()Ljava/util/Map;

    move-result-object v1

    goto :goto_1
.end method

.method private fileForFragmentizer0(Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .locals 7
    .param p1, "parentId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteUuid;",
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

    .prologue
    .local p2, "exclude":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteUuid;>;"
    const/4 v5, 0x0

    .line 630
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v3

    .line 633
    .local v3, "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-nez v3, :cond_0

    move-object v1, v5

    .line 659
    :goto_0
    return-object v1

    .line 636
    :cond_0
    sget-boolean v6, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 638
    :cond_1
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing()Ljava/util/Map;

    move-result-object v4

    .line 640
    .local v4, "listing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    .line 641
    .local v0, "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->isFile()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 642
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v1

    .line 644
    .local v1, "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-eqz v1, :cond_2

    .line 645
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->fileMap()Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->fileMap()Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 652
    .end local v1    # "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_3
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fileForFragmentizer0(Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v1

    .line 654
    .restart local v1    # "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-eqz v1, :cond_2

    goto :goto_0

    .end local v0    # "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    .end local v1    # "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_4
    move-object v1, v5

    .line 659
    goto :goto_0
.end method

.method private fileId(Lorg/apache/ignite/igfs/IgfsPath;Z)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 4
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "skipTx"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 201
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fileIds(Lorg/apache/ignite/igfs/IgfsPath;Z)Ljava/util/List;

    move-result-object v0

    .line 203
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/lang/IgniteUuid;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file IDs [path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 205
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteUuid;

    return-object v1
.end method

.method private fileId(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Z)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 4
    .param p1, "parentId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "skipTx"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 240
    invoke-direct {p0, p1, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->directoryListing(Lorg/apache/ignite/lang/IgniteUuid;Z)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    .line 242
    .local v0, "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    if-nez v0, :cond_1

    .line 243
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing file ID [parentId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fileName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 246
    :cond_0
    const/4 v1, 0x0

    .line 249
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    goto :goto_0
.end method

.method private fileIds(Lorg/apache/ignite/igfs/IgfsPath;Z)Ljava/util/List;
    .locals 6
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "skipTx"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 286
    sget-boolean v5, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 289
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/igfs/IgfsPath;->components()Ljava/util/List;

    move-result-object v0

    .line 292
    .local v0, "components":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 294
    .local v3, "ids":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/lang/IgniteUuid;>;"
    sget-object v5, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->ROOT_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    sget-object v1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->ROOT_ID:Lorg/apache/ignite/lang/IgniteUuid;

    .line 298
    .local v1, "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 299
    .local v4, "s":Ljava/lang/String;
    sget-boolean v5, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 301
    :cond_1
    if-eqz v1, :cond_2

    .line 302
    invoke-direct {p0, v1, v4, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fileId(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Z)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    .line 304
    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    .end local v4    # "s":Ljava/lang/String;
    :cond_3
    return-object v3
.end method

.method private static fsException(Ljava/lang/String;)Lorg/apache/ignite/IgniteCheckedException;
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2665
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Lorg/apache/ignite/igfs/IgfsException;

    invoke-direct {v1, p0}, Lorg/apache/ignite/igfs/IgfsException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static fsException(Lorg/apache/ignite/igfs/IgfsException;)Lorg/apache/ignite/IgniteCheckedException;
    .locals 1
    .param p0, "err"    # Lorg/apache/ignite/igfs/IgfsException;

    .prologue
    .line 2673
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v0, p0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private varargs lockIds([Lorg/apache/ignite/lang/IgniteUuid;)Ljava/util/Map;
    .locals 7
    .param p1, "fileIds"    # [Lorg/apache/ignite/lang/IgniteUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 547
    sget-boolean v4, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 548
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    if-eqz p1, :cond_1

    array-length v4, p1

    if-gtz v4, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 551
    :cond_2
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 554
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 556
    .local v1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteUuid;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 557
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Locking file ids: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 560
    :cond_3
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v4, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->getAll(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    .line 562
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 563
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Locked file ids: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 566
    :cond_4
    sget-object v4, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->ROOT_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {v1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->ROOT_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 567
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>()V

    .line 569
    .local v0, "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    sget-object v5, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->ROOT_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {v4, v5, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putxIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 571
    new-instance v3, Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-direct {v3, v2}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>(Ljava/util/Map;)V

    .line 573
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    sget-object v4, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->ROOT_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    .line 577
    .end local v0    # "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    .restart local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    :cond_5
    return-object v2
.end method

.method private moveNonTx(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 10
    .param p1, "fileId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "srcFileName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "srcParentId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p4, "destFileName"    # Ljava/lang/String;
    .param p5, "destParentId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 821
    sget-boolean v6, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 822
    :cond_0
    sget-boolean v6, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    if-nez p1, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 823
    :cond_1
    sget-boolean v6, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    if-nez p2, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 824
    :cond_2
    sget-boolean v6, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v6, :cond_3

    if-nez p3, :cond_3

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 825
    :cond_3
    sget-boolean v6, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v6, :cond_4

    if-nez p4, :cond_4

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 826
    :cond_4
    sget-boolean v6, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v6, :cond_5

    if-nez p5, :cond_5

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 828
    :cond_5
    invoke-virtual {p3, p5}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 829
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 830
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File is moved to itself [fileId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", fileName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", parentId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 888
    :cond_6
    :goto_0
    return-void

    .line 837
    :cond_7
    const/4 v6, 0x3

    new-array v6, v6, [Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    aput-object p5, v6, v7

    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->lockIds([Lorg/apache/ignite/lang/IgniteUuid;)Ljava/util/Map;

    move-result-object v3

    .line 839
    .local v3, "infoMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    .line 841
    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 843
    .local v5, "srcInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-nez v5, :cond_8

    .line 844
    new-instance v6, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to lock source directory (not found?) [srcParentId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fsException(Lorg/apache/ignite/igfs/IgfsException;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v6

    throw v6

    .line 847
    :cond_8
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_9

    .line 848
    new-instance v6, Lorg/apache/ignite/igfs/IgfsPathIsNotDirectoryException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Source is not a directory: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/igfs/IgfsPathIsNotDirectoryException;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fsException(Lorg/apache/ignite/igfs/IgfsException;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v6

    throw v6

    .line 850
    :cond_9
    invoke-interface {v3, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 852
    .local v1, "destInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-nez v1, :cond_a

    .line 853
    new-instance v6, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to lock destination directory (not found?) [destParentId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fsException(Lorg/apache/ignite/igfs/IgfsException;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v6

    throw v6

    .line 856
    :cond_a
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_b

    .line 857
    new-instance v6, Lorg/apache/ignite/igfs/IgfsPathIsNotDirectoryException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Destination is not a directory: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/igfs/IgfsPathIsNotDirectoryException;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fsException(Lorg/apache/ignite/igfs/IgfsException;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v6

    throw v6

    .line 859
    :cond_b
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 861
    .local v2, "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-nez v2, :cond_c

    .line 862
    new-instance v6, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to lock target file (not found?) [fileId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fsException(Lorg/apache/ignite/igfs/IgfsException;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v6

    throw v6

    .line 865
    :cond_c
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    .line 866
    .local v4, "srcEntry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    .line 869
    .local v0, "destEntry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual {v6, p1}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 870
    :cond_d
    new-instance v6, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to remove file name from the source directory (file not found) [fileId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", srcFileName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", srcParentId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", srcEntry="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fsException(Lorg/apache/ignite/igfs/IgfsException;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v6

    throw v6

    .line 875
    :cond_e
    if-eqz v0, :cond_f

    .line 876
    new-instance v6, Lorg/apache/ignite/igfs/IgfsPathAlreadyExistsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to add file name into the destination  directory (file already exists) [fileId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", destFileName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", destParentId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", destEntry="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/igfs/IgfsPathAlreadyExistsException;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fsException(Lorg/apache/ignite/igfs/IgfsException;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v6

    throw v6

    .line 880
    :cond_f
    sget-boolean v6, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v6, :cond_10

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    invoke-interface {v6, p3}, Lorg/apache/ignite/internal/processors/cache/GridCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_10

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 881
    :cond_10
    sget-boolean v6, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v6, :cond_11

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    invoke-interface {v6, p5}, Lorg/apache/ignite/internal/processors/cache/GridCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_11

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 884
    :cond_11
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    new-instance v7, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {v7, p2, v4, v8, v9}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;ZLorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$1;)V

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, p3, v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;

    .line 887
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    new-instance v7, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, p4, v4, v8, v9}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;ZLorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$1;)V

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, p5, v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;

    goto/16 :goto_0
.end method

.method private putIfAbsentNonTx(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 10
    .param p1, "parentId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "newFileInfo"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 732
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 733
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Locking parent id [parentId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", fileName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", newFileInfo="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 736
    :cond_0
    invoke-direct {p0, v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    .line 739
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v2

    .line 741
    .local v2, "parentInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    sget-boolean v5, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    invoke-direct {p0, v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 743
    :cond_1
    if-nez v2, :cond_2

    .line 744
    new-instance v4, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to lock parent directory (not found): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fsException(Lorg/apache/ignite/igfs/IgfsException;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v4

    throw v4

    .line 746
    :cond_2
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_3

    .line 747
    new-instance v4, Lorg/apache/ignite/igfs/IgfsPathIsNotDirectoryException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parent file is not a directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/igfs/IgfsPathIsNotDirectoryException;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fsException(Lorg/apache/ignite/igfs/IgfsException;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v4

    throw v4

    .line 749
    :cond_3
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing()Ljava/util/Map;

    move-result-object v3

    .line 751
    .local v3, "parentListing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    sget-boolean v5, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v5, :cond_4

    if-nez v3, :cond_4

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 753
    :cond_4
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    .line 755
    .local v0, "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    sget-boolean v5, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v5, :cond_5

    invoke-direct {p0, v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 757
    :cond_5
    if-eqz v0, :cond_6

    .line 758
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    .line 769
    :goto_0
    return-object v4

    .line 760
    :cond_6
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    .line 762
    .local v1, "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v5, v1, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putxIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 763
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to add file details into cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fsException(Ljava/lang/String;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v4

    throw v4

    .line 765
    :cond_7
    sget-boolean v5, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v5, :cond_8

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    invoke-interface {v5, p1}, Lorg/apache/ignite/internal/processors/cache/GridCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_8

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 767
    :cond_8
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    new-instance v6, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;

    new-instance v7, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    invoke-direct {v7, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)V

    invoke-direct {v6, p2, v7, v9, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;ZLorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$1;)V

    new-array v7, v9, [Ljava/lang/Object;

    invoke-interface {v5, p1, v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;

    goto :goto_0
.end method

.method private putx(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteClosure;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<TK;TV;>;TK;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TV;TV;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p1, "cache":Lorg/apache/ignite/internal/processors/cache/CacheProjection;, "Lorg/apache/ignite/internal/processors/cache/CacheProjection<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "c":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<TV;TV;>;"
    const/4 v3, 0x0

    .line 2569
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2571
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2572
    .local v1, "oldVal":Ljava/lang/Object;, "TV;"
    invoke-interface {p3, v1}, Lorg/apache/ignite/lang/IgniteClosure;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2574
    .local v0, "newVal":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_1

    new-array v2, v3, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {p1, p2, v2}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->removex(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v2

    :goto_0
    return v2

    :cond_1
    new-array v2, v3, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {p1, p2, v0, v2}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->putx(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v2

    goto :goto_0
.end method

.method private removeIfEmptyNonTx(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/igfs/IgfsPath;Z)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .locals 10
    .param p1, "parentId"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p4, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p5, "rmvLocked"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/16 v9, 0x5d

    .line 951
    sget-boolean v6, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 952
    :cond_0
    sget-boolean v6, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    if-nez p1, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 953
    :cond_1
    sget-boolean v6, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    if-nez p2, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 954
    :cond_2
    sget-boolean v6, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v6, :cond_3

    if-nez p3, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 955
    :cond_3
    sget-boolean v6, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v6, :cond_4

    sget-object v6, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->ROOT_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v6, p3}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 957
    :cond_4
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 958
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remove file: [parentId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", fileName= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", fileId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 961
    :cond_5
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v6, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 962
    .local v1, "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v6, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 964
    .local v4, "parentInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-eqz v1, :cond_6

    if-nez v4, :cond_7

    .line 965
    :cond_6
    if-eqz v4, :cond_b

    .line 966
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    .line 969
    .local v0, "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual {v6, p3}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 970
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to remove file (file system is in inconsistent state) [fileInfo="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", fileName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", fileId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 977
    .end local v0    # "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    :cond_7
    sget-boolean v6, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v6, :cond_8

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_8

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 979
    :cond_8
    if-nez p5, :cond_9

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->lockId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 980
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to remove file (file is opened for writing) [fileName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fileId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lockId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->lockId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fsException(Ljava/lang/String;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v5

    throw v5

    .line 984
    :cond_9
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 985
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing()Ljava/util/Map;

    move-result-object v2

    .line 987
    .local v2, "listing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 988
    new-instance v5, Lorg/apache/ignite/igfs/IgfsDirectoryNotEmptyException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to remove file (directory is not empty) [fileId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", listing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/ignite/igfs/IgfsDirectoryNotEmptyException;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fsException(Lorg/apache/ignite/igfs/IgfsException;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v5

    throw v5

    .line 993
    .end local v2    # "listing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    :cond_a
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    .line 995
    .local v3, "listingEntry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual {v6, p3}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 1005
    .end local v3    # "listingEntry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    :cond_b
    :goto_0
    return-object v5

    .line 999
    .restart local v3    # "listingEntry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    :cond_c
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->softDeleteNonTx(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/lang/IgniteUuid;

    .line 1003
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    new-instance v7, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdatePath;

    invoke-direct {v7, p4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdatePath;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$1;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v6, p3, v7, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;

    .line 1005
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->builder(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo$Builder;

    move-result-object v5

    invoke-virtual {v5, p4}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo$Builder;->path(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo$Builder;->build()Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v5

    goto :goto_0
.end method

.method private softDeleteNonTx(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 20
    .param p1, "parentId"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "id"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1062
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1066
    :cond_0
    if-nez p1, :cond_7

    .line 1068
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    sget-object v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->ROOT_ID:Lorg/apache/ignite/lang/IgniteUuid;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1070
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    sget-object v3, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->ROOT_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 1072
    .local v16, "rootInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-nez v16, :cond_2

    .line 1073
    const/4 v15, 0x0

    .line 1124
    .end local v16    # "rootInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :goto_0
    return-object v15

    .line 1076
    .restart local v16    # "rootInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    sget-object v3, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->TRASH_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1077
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    sget-object v3, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->TRASH_ID:Lorg/apache/ignite/lang/IgniteUuid;

    new-instance v4, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    sget-object v5, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->TRASH_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(Lorg/apache/ignite/lang/IgniteUuid;)V

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->put(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    .line 1079
    :cond_3
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing()Ljava/util/Map;

    move-result-object v17

    .line 1081
    .local v17, "rootListing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1082
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v13, v2, [Lorg/apache/ignite/lang/IgniteUuid;

    .line 1084
    .local v13, "lockIds":[Lorg/apache/ignite/lang/IgniteUuid;
    const/4 v10, 0x0

    .line 1086
    .local v10, "i":I
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    .line 1087
    .local v8, "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "i":I
    .local v11, "i":I
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    aput-object v2, v13, v10

    move v10, v11

    .end local v11    # "i":I
    .restart local v10    # "i":I
    goto :goto_1

    .line 1090
    .end local v8    # "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->lockIds([Lorg/apache/ignite/lang/IgniteUuid;)Ljava/util/Map;

    .line 1093
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 1095
    .local v18, "transferListing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1097
    new-instance v14, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(Ljava/util/Map;)V

    .line 1099
    .local v14, "newInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v2, v3, v14, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->put(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    .line 1102
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    sget-object v3, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->TRASH_ID:Lorg/apache/ignite/lang/IgniteUuid;

    new-instance v4, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/lang/IgniteUuid;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    invoke-direct {v6, v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)V

    const/4 v7, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v4, v5, v6, v7, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;ZLorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$1;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;

    .line 1106
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1107
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    sget-object v5, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->ROOT_ID:Lorg/apache/ignite/lang/IgniteUuid;

    new-instance v6, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    const/4 v7, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v6, v2, v3, v7, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;ZLorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$1;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;

    goto :goto_2

    .line 1109
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    :cond_5
    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v15

    .line 1110
    .local v15, "resId":Lorg/apache/ignite/lang/IgniteUuid;
    goto/16 :goto_0

    .line 1112
    .end local v10    # "i":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "lockIds":[Lorg/apache/ignite/lang/IgniteUuid;
    .end local v14    # "newInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v15    # "resId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v18    # "transferListing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    :cond_6
    const/4 v15, 0x0

    .restart local v15    # "resId":Lorg/apache/ignite/lang/IgniteUuid;
    goto/16 :goto_0

    .line 1116
    .end local v15    # "resId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v16    # "rootInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v17    # "rootListing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    sget-object v3, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->TRASH_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_8

    .line 1117
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    sget-object v3, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->TRASH_ID:Lorg/apache/ignite/lang/IgniteUuid;

    new-instance v4, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    sget-object v5, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->TRASH_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(Lorg/apache/ignite/lang/IgniteUuid;)V

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->put(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    .line 1119
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/lang/IgniteUuid;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->TRASH_ID:Lorg/apache/ignite/lang/IgniteUuid;

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->moveNonTx(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 1121
    move-object/from16 v15, p3

    .restart local v15    # "resId":Lorg/apache/ignite/lang/IgniteUuid;
    goto/16 :goto_0
.end method

.method private synchronize(Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/igfs/IgfsPath;ZLjava/util/Map;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .locals 17
    .param p1, "fs"    # Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    .param p2, "startPath"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p3, "startPathInfo"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .param p4, "endPath"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p5, "strict"    # Z
    .param p6    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
            ">;)",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2259
    .local p6, "created":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2260
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2262
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    .line 2264
    move-object/from16 v15, p3

    .line 2266
    .local v15, "parentInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    invoke-virtual/range {p4 .. p4}, Lorg/apache/ignite/igfs/IgfsPath;->components()Ljava/util/List;

    move-result-object v8

    .line 2268
    .local v8, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v10, p2

    .line 2270
    .local v10, "curPath":Lorg/apache/ignite/igfs/IgfsPath;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/igfs/IgfsPath;->components()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    .local v13, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_7

    .line 2271
    new-instance v11, Lorg/apache/ignite/igfs/IgfsPath;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v11, v10, v2}, Lorg/apache/ignite/igfs/IgfsPath;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Ljava/lang/String;)V

    .line 2273
    .end local v10    # "curPath":Lorg/apache/ignite/igfs/IgfsPath;
    .local v11, "curPath":Lorg/apache/ignite/igfs/IgfsPath;
    if-eqz p6, :cond_3

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2275
    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "parentInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    check-cast v15, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 2270
    .restart local v15    # "parentInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :goto_1
    add-int/lit8 v13, v13, 0x1

    move-object v10, v11

    .end local v11    # "curPath":Lorg/apache/ignite/igfs/IgfsPath;
    .restart local v10    # "curPath":Lorg/apache/ignite/igfs/IgfsPath;
    goto :goto_0

    .line 2281
    .end local v10    # "curPath":Lorg/apache/ignite/igfs/IgfsPath;
    .restart local v11    # "curPath":Lorg/apache/ignite/igfs/IgfsPath;
    :cond_3
    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;->info(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsFile;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 2287
    .local v16, "status":Lorg/apache/ignite/igfs/IgfsFile;
    if-eqz v16, :cond_4

    .line 2288
    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/igfs/IgfsFile;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Lorg/apache/ignite/igfs/IgfsPath;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2289
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create path the locally because secondary file system directory structure was modified concurrently and the path is not a directory as expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2283
    .end local v16    # "status":Lorg/apache/ignite/igfs/IgfsFile;
    :catch_0
    move-exception v12

    .line 2284
    .local v12, "e":Lorg/apache/ignite/IgniteException;
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get path information: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v12}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2294
    .end local v12    # "e":Lorg/apache/ignite/IgniteException;
    .restart local v16    # "status":Lorg/apache/ignite/igfs/IgfsFile;
    :cond_4
    if-eqz p5, :cond_5

    .line 2295
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create path locally due to secondary file system exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2298
    :cond_5
    if-eqz p6, :cond_6

    .line 2299
    invoke-virtual {v11}, Lorg/apache/ignite/igfs/IgfsPath;->parent()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2301
    :cond_6
    const/4 v15, 0x0

    move-object v10, v11

    .line 2321
    .end local v11    # "curPath":Lorg/apache/ignite/igfs/IgfsPath;
    .end local v15    # "parentInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v16    # "status":Lorg/apache/ignite/igfs/IgfsFile;
    .restart local v10    # "curPath":Lorg/apache/ignite/igfs/IgfsPath;
    :cond_7
    return-object v15

    .line 2305
    .end local v10    # "curPath":Lorg/apache/ignite/igfs/IgfsPath;
    .restart local v11    # "curPath":Lorg/apache/ignite/igfs/IgfsPath;
    .restart local v15    # "parentInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .restart local v16    # "status":Lorg/apache/ignite/igfs/IgfsFile;
    :cond_8
    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/igfs/IgfsFile;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v9, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    const/4 v2, 0x1

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/igfs/IgfsFile;->properties()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v9, v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(ZLjava/util/Map;)V

    .line 2309
    .local v9, "curInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :goto_2
    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v9}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->putIfAbsentNonTx(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v14

    .line 2311
    .local v14, "oldId":Lorg/apache/ignite/lang/IgniteUuid;
    if-eqz v14, :cond_9

    .line 2312
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v9

    .line 2314
    :cond_9
    if-eqz p6, :cond_a

    .line 2315
    move-object/from16 v0, p6

    invoke-interface {v0, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2317
    :cond_a
    move-object v15, v9

    goto/16 :goto_1

    .line 2305
    .end local v9    # "curInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v14    # "oldId":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_b
    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getBlockSize()I

    move-result v3

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/igfs/IgfsFile;->length()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->igfs()Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v11, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->evictExclude(Lorg/apache/ignite/igfs/IgfsPath;Z)Z

    move-result v6

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/igfs/IgfsFile;->properties()Ljava/util/Map;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(IJZLjava/util/Map;)V

    move-object v9, v2

    goto :goto_2
.end method

.method private varargs synchronizeAndExecute(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;ZLjava/util/Collection;[Lorg/apache/ignite/igfs/IgfsPath;)Ljava/lang/Object;
    .locals 37
    .param p2, "fs"    # Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    .param p3, "strict"    # Z
    .param p4    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "paths"    # [Lorg/apache/ignite/igfs/IgfsPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask",
            "<TT;>;",
            "Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;",
            "Z",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;[",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2363
    .local p1, "task":Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;, "Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask<TT;>;"
    .local p4, "extraLockIds":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteUuid;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2364
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p2, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2365
    :cond_1
    sget-boolean v3, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    array-length v3, v0

    if-gtz v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2368
    :cond_3
    move-object/from16 v0, p5

    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 2369
    invoke-static/range {p5 .. p5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 2371
    :cond_4
    const/4 v14, 0x0

    .line 2373
    .local v14, "finished":Z
    const/16 v35, 0x0

    .line 2375
    :goto_0
    if-nez v14, :cond_25

    .line 2377
    new-instance v32, Ljava/util/ArrayList;

    move-object/from16 v0, p5

    array-length v3, v0

    move-object/from16 v0, v32

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2379
    .local v32, "pathIds":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/apache/ignite/lang/IgniteUuid;>;>;"
    move-object/from16 v10, p5

    .local v10, "arr$":[Lorg/apache/ignite/igfs/IgfsPath;
    array-length v0, v10

    move/from16 v25, v0

    .local v25, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    aget-object v7, v10, v16

    .line 2380
    .local v7, "path":Lorg/apache/ignite/igfs/IgfsPath;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fileIds(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2379
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 2383
    .end local v7    # "path":Lorg/apache/ignite/igfs/IgfsPath;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    sget-object v4, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v6, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-interface {v3, v4, v6}, Lorg/apache/ignite/internal/processors/cache/GridCache;->txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v36

    .line 2387
    .local v36, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_start_0
    new-instance v34, Ljava/util/HashMap;

    invoke-direct/range {v34 .. v34}, Ljava/util/HashMap;-><init>()V

    .line 2389
    .local v34, "pathToParent":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;>;"
    new-instance v33, Ljava/util/HashMap;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashMap;-><init>()V

    .line 2391
    .local v33, "pathToId":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/lang/IgniteUuid;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    move-object/from16 v0, p5

    array-length v3, v0

    if-ge v15, v3, :cond_c

    .line 2392
    aget-object v7, p5, v15

    .line 2395
    .restart local v7    # "path":Lorg/apache/ignite/igfs/IgfsPath;
    move-object/from16 v0, v32

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    .line 2397
    .local v19, "ids":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/lang/IgniteUuid;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_a

    .line 2399
    invoke-virtual {v7}, Lorg/apache/ignite/igfs/IgfsPath;->parent()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v30

    .line 2400
    .local v30, "parentPath":Lorg/apache/ignite/igfs/IgfsPath;
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/apache/ignite/lang/IgniteUuid;

    .line 2402
    .local v29, "parentId":Lorg/apache/ignite/lang/IgniteUuid;
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v24, v3, -0x3

    .local v24, "j":I
    :goto_3
    if-ltz v24, :cond_6

    .line 2403
    if-eqz v29, :cond_8

    .line 2411
    :cond_6
    sget-boolean v3, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v3, :cond_9

    if-eqz v30, :cond_7

    if-nez v29, :cond_9

    :cond_7
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2542
    .end local v7    # "path":Lorg/apache/ignite/igfs/IgfsPath;
    .end local v15    # "i":I
    .end local v16    # "i$":I
    .end local v19    # "ids":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/lang/IgniteUuid;>;"
    .end local v24    # "j":I
    .end local v29    # "parentId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v30    # "parentPath":Lorg/apache/ignite/igfs/IgfsPath;
    .end local v33    # "pathToId":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/lang/IgniteUuid;>;"
    .end local v34    # "pathToParent":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;>;"
    :catch_0
    move-exception v12

    .line 2543
    .local v12, "e":Lorg/apache/ignite/IgniteCheckedException;
    if-nez v14, :cond_24

    .line 2544
    const/4 v14, 0x1

    .line 2546
    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;->onFailure(Ljava/lang/Exception;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v35

    .line 2552
    .local v35, "res":Ljava/lang/Object;, "TT;"
    invoke-interface/range {v36 .. v36}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto/16 :goto_0

    .line 2406
    .end local v12    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v35    # "res":Ljava/lang/Object;, "TT;"
    .restart local v7    # "path":Lorg/apache/ignite/igfs/IgfsPath;
    .restart local v15    # "i":I
    .restart local v16    # "i$":I
    .restart local v19    # "ids":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/lang/IgniteUuid;>;"
    .restart local v24    # "j":I
    .restart local v29    # "parentId":Lorg/apache/ignite/lang/IgniteUuid;
    .restart local v30    # "parentPath":Lorg/apache/ignite/igfs/IgfsPath;
    .restart local v33    # "pathToId":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/lang/IgniteUuid;>;"
    .restart local v34    # "pathToParent":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;>;"
    :cond_8
    :try_start_2
    invoke-virtual/range {v30 .. v30}, Lorg/apache/ignite/igfs/IgfsPath;->parent()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v30

    .line 2407
    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    .end local v29    # "parentId":Lorg/apache/ignite/lang/IgniteUuid;
    check-cast v29, Lorg/apache/ignite/lang/IgniteUuid;

    .line 2402
    .restart local v29    # "parentId":Lorg/apache/ignite/lang/IgniteUuid;
    add-int/lit8 v24, v24, -0x1

    goto :goto_3

    .line 2413
    :cond_9
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2415
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2418
    .end local v24    # "j":I
    .end local v29    # "parentId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v30    # "parentPath":Lorg/apache/ignite/igfs/IgfsPath;
    :cond_a
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/apache/ignite/lang/IgniteUuid;

    .line 2420
    .local v31, "pathId":Lorg/apache/ignite/lang/IgniteUuid;
    if-eqz v31, :cond_b

    .line 2421
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2391
    :cond_b
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 2424
    .end local v7    # "path":Lorg/apache/ignite/igfs/IgfsPath;
    .end local v19    # "ids":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/lang/IgniteUuid;>;"
    .end local v31    # "pathId":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_c
    if-nez p4, :cond_d

    invoke-interface/range {v33 .. v33}, Ljava/util/Map;->size()I

    move-result v3

    :goto_4
    new-array v0, v3, [Lorg/apache/ignite/lang/IgniteUuid;

    move-object/from16 v26, v0

    .line 2427
    .local v26, "lockArr":[Lorg/apache/ignite/lang/IgniteUuid;
    const/16 v20, 0x0

    .line 2429
    .local v20, "idx":I
    invoke-interface/range {v33 .. v33}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    move/from16 v21, v20

    .end local v20    # "idx":I
    .local v21, "idx":I
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/ignite/lang/IgniteUuid;

    .line 2430
    .local v17, "id":Lorg/apache/ignite/lang/IgniteUuid;
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "idx":I
    .restart local v20    # "idx":I
    aput-object v17, v26, v21

    move/from16 v21, v20

    .end local v20    # "idx":I
    .restart local v21    # "idx":I
    goto :goto_5

    .line 2424
    .end local v17    # "id":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v21    # "idx":I
    .end local v26    # "lockArr":[Lorg/apache/ignite/lang/IgniteUuid;
    .local v16, "i$":I
    :cond_d
    invoke-interface/range {v33 .. v33}, Ljava/util/Map;->size()I

    move-result v3

    invoke-interface/range {p4 .. p4}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_4

    .line 2432
    .local v16, "i$":Ljava/util/Iterator;
    .restart local v21    # "idx":I
    .restart local v26    # "lockArr":[Lorg/apache/ignite/lang/IgniteUuid;
    :cond_e
    if-eqz p4, :cond_f

    .line 2433
    invoke-interface/range {p4 .. p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/ignite/lang/IgniteUuid;

    .line 2434
    .restart local v17    # "id":Lorg/apache/ignite/lang/IgniteUuid;
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "idx":I
    .restart local v20    # "idx":I
    aput-object v17, v26, v21

    move/from16 v21, v20

    .end local v20    # "idx":I
    .restart local v21    # "idx":I
    goto :goto_6

    .end local v17    # "id":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_f
    move/from16 v20, v21

    .line 2437
    .end local v21    # "idx":I
    .restart local v20    # "idx":I
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->lockIds([Lorg/apache/ignite/lang/IgniteUuid;)Ljava/util/Map;

    move-result-object v18

    .line 2439
    .local v18, "idToInfo":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    if-eqz p4, :cond_10

    .line 2440
    invoke-interface/range {p4 .. p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/ignite/lang/IgniteUuid;

    .line 2441
    .restart local v17    # "id":Lorg/apache/ignite/lang/IgniteUuid;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    .line 2552
    .end local v15    # "i":I
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "id":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v18    # "idToInfo":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    .end local v20    # "idx":I
    .end local v26    # "lockArr":[Lorg/apache/ignite/lang/IgniteUuid;
    .end local v33    # "pathToId":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/lang/IgniteUuid;>;"
    .end local v34    # "pathToParent":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;>;"
    :catchall_0
    move-exception v3

    invoke-interface/range {v36 .. v36}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    throw v3

    .line 2445
    .restart local v15    # "i":I
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v18    # "idToInfo":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    .restart local v20    # "idx":I
    .restart local v26    # "lockArr":[Lorg/apache/ignite/lang/IgniteUuid;
    .restart local v33    # "pathToId":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/lang/IgniteUuid;>;"
    .restart local v34    # "pathToParent":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;>;"
    :cond_10
    const/4 v11, 0x0

    .line 2447
    .local v11, "changed":Lorg/apache/ignite/igfs/IgfsPath;
    :try_start_3
    invoke-interface/range {v33 .. v33}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_11
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 2448
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/lang/IgniteUuid;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/igfs/IgfsPath;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fileId(Lorg/apache/ignite/igfs/IgfsPath;Z)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-static {v4, v3}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 2450
    :cond_12
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "changed":Lorg/apache/ignite/igfs/IgfsPath;
    check-cast v11, Lorg/apache/ignite/igfs/IgfsPath;

    .line 2456
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/lang/IgniteUuid;>;"
    .restart local v11    # "changed":Lorg/apache/ignite/igfs/IgfsPath;
    :cond_13
    if-eqz v11, :cond_14

    .line 2457
    const/4 v14, 0x1

    .line 2459
    new-instance v3, Lorg/apache/ignite/igfs/IgfsConcurrentModificationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File system entry has been modified concurrently: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/igfs/IgfsConcurrentModificationException;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fsException(Lorg/apache/ignite/igfs/IgfsException;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v3

    throw v3

    .line 2463
    :cond_14
    const/16 v28, 0x0

    .line 2466
    .local v28, "newParents":Z
    const/4 v15, 0x0

    :goto_8
    move-object/from16 v0, p5

    array-length v3, v0

    if-ge v15, v3, :cond_15

    .line 2467
    aget-object v3, p5, v15

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fileIds(Lorg/apache/ignite/igfs/IgfsPath;Z)Ljava/util/List;

    move-result-object v27

    .line 2469
    .local v27, "newIds":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/lang/IgniteUuid;>;"
    move-object/from16 v0, v32

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, v27

    invoke-interface {v3, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-nez v3, :cond_16

    .line 2470
    const/16 v28, 0x1

    .line 2476
    .end local v27    # "newIds":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/lang/IgniteUuid;>;"
    :cond_15
    if-eqz v28, :cond_17

    .line 2552
    invoke-interface/range {v36 .. v36}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto/16 :goto_0

    .line 2466
    .restart local v27    # "newIds":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/lang/IgniteUuid;>;"
    :cond_16
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 2480
    .end local v27    # "newIds":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/lang/IgniteUuid;>;"
    :cond_17
    :try_start_4
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 2482
    .local v23, "infos":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    .line 2484
    .local v9, "created":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    move-object/from16 v10, p5

    array-length v0, v10

    move/from16 v25, v0

    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_9
    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_23

    aget-object v7, v10, v16

    .line 2485
    .restart local v7    # "path":Lorg/apache/ignite/igfs/IgfsPath;
    invoke-virtual {v7}, Lorg/apache/ignite/igfs/IgfsPath;->parent()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v30

    .line 2487
    .restart local v30    # "parentPath":Lorg/apache/ignite/igfs/IgfsPath;
    move-object/from16 v0, v33

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2488
    move-object/from16 v0, v33

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/lang/IgniteUuid;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2490
    if-eqz v30, :cond_18

    .line 2491
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/lang/IgniteUuid;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v3

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2484
    :cond_18
    :goto_a
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 2494
    :cond_19
    move-object/from16 v0, v34

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/igfs/IgfsPath;

    .line 2496
    .local v5, "firstParentPath":Lorg/apache/ignite/igfs/IgfsPath;
    sget-boolean v3, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v3, :cond_1a

    if-nez v5, :cond_1a

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2497
    :cond_1a
    sget-boolean v3, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v3, :cond_1b

    move-object/from16 v0, v33

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1b

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2499
    :cond_1b
    move-object/from16 v0, v33

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move/from16 v8, p3

    invoke-direct/range {v3 .. v9}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->synchronize(Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/igfs/IgfsPath;ZLjava/util/Map;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v22

    .line 2506
    .local v22, "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    sget-boolean v3, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v3, :cond_1d

    if-eqz p3, :cond_1c

    if-nez v22, :cond_1d

    :cond_1c
    if-eqz p3, :cond_1d

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2508
    :cond_1d
    if-eqz v22, :cond_1e

    .line 2509
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2511
    :cond_1e
    if-eqz v30, :cond_18

    .line 2512
    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lorg/apache/ignite/igfs/IgfsPath;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 2513
    move-object/from16 v0, v33

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 2515
    :cond_1f
    sget-boolean v3, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v3, :cond_21

    if-eqz p3, :cond_20

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_21

    :cond_20
    if-eqz p3, :cond_21

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2517
    :cond_21
    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 2518
    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 2521
    :cond_22
    invoke-virtual {v9}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_a

    .line 2529
    .end local v5    # "firstParentPath":Lorg/apache/ignite/igfs/IgfsPath;
    .end local v7    # "path":Lorg/apache/ignite/igfs/IgfsPath;
    .end local v22    # "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v30    # "parentPath":Lorg/apache/ignite/igfs/IgfsPath;
    :cond_23
    const/4 v14, 0x1

    .line 2532
    :try_start_5
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;->onSuccess(Ljava/util/Map;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v35

    .line 2540
    .restart local v35    # "res":Ljava/lang/Object;, "TT;"
    :goto_b
    :try_start_6
    invoke-interface/range {v36 .. v36}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V
    :try_end_6
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2552
    invoke-interface/range {v36 .. v36}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto/16 :goto_0

    .line 2534
    .end local v35    # "res":Ljava/lang/Object;, "TT;"
    :catch_1
    move-exception v12

    .line 2535
    .local v12, "e":Ljava/lang/Exception;
    :try_start_7
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;->onFailure(Ljava/lang/Exception;)Ljava/lang/Object;
    :try_end_7
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v35

    .restart local v35    # "res":Ljava/lang/Object;, "TT;"
    goto :goto_b

    .line 2549
    .end local v9    # "created":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    .end local v11    # "changed":Lorg/apache/ignite/igfs/IgfsPath;
    .end local v15    # "i":I
    .end local v16    # "i$":I
    .end local v18    # "idToInfo":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    .end local v20    # "idx":I
    .end local v23    # "infos":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    .end local v26    # "lockArr":[Lorg/apache/ignite/lang/IgniteUuid;
    .end local v28    # "newParents":Z
    .end local v33    # "pathToId":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/lang/IgniteUuid;>;"
    .end local v34    # "pathToParent":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;>;"
    .end local v35    # "res":Ljava/lang/Object;, "TT;"
    .local v12, "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_24
    :try_start_8
    throw v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2556
    .end local v10    # "arr$":[Lorg/apache/ignite/igfs/IgfsPath;
    .end local v12    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v25    # "len$":I
    .end local v32    # "pathIds":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/apache/ignite/lang/IgniteUuid;>;>;"
    .end local v36    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_25
    return-object v35
.end method

.method private varargs synchronizeAndExecute(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Z[Lorg/apache/ignite/igfs/IgfsPath;)Ljava/lang/Object;
    .locals 6
    .param p2, "fs"    # Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    .param p3, "strict"    # Z
    .param p4, "paths"    # [Lorg/apache/ignite/igfs/IgfsPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask",
            "<TT;>;",
            "Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;",
            "Z[",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2341
    .local p1, "task":Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;, "Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask<TT;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->synchronizeAndExecute(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;ZLjava/util/Collection;[Lorg/apache/ignite/igfs/IgfsPath;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private updatePropertiesNonTx(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .locals 15
    .param p1, "parentId"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "fileId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 1313
    .local p4, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v11, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v11, :cond_0

    if-nez p2, :cond_0

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 1314
    :cond_0
    sget-boolean v11, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v11, :cond_1

    invoke-static/range {p4 .. p4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v11, Ljava/lang/AssertionError;

    const-string v12, "Expects not-empty file\'s properties"

    invoke-direct {v11, v12}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v11

    .line 1315
    :cond_1
    sget-boolean v11, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v11, :cond_2

    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    move-result v11

    if-nez v11, :cond_2

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 1317
    :cond_2
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v11}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1318
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Update file properties [fileId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", props="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x5d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1325
    :cond_3
    if-nez p1, :cond_5

    .line 1326
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v8

    .line 1327
    .local v8, "oldInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    const/4 v9, 0x0

    .line 1339
    .local v9, "parentInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_4
    sget-boolean v11, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v11, :cond_7

    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    move-result v11

    if-nez v11, :cond_7

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11
    :try_end_0
    .catch Lorg/apache/ignite/internal/util/lang/GridClosureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1380
    .end local v8    # "oldInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v9    # "parentInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :catch_0
    move-exception v1

    .line 1381
    .local v1, "e":Lorg/apache/ignite/internal/util/lang/GridClosureException;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cast(Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v11

    throw v11

    .line 1330
    .end local v1    # "e":Lorg/apache/ignite/internal/util/lang/GridClosureException;
    :cond_5
    const/4 v11, 0x2

    :try_start_1
    new-array v11, v11, [Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    const/4 v12, 0x1

    aput-object p2, v11, v12

    invoke-direct {p0, v11}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->lockIds([Lorg/apache/ignite/lang/IgniteUuid;)Ljava/util/Map;

    move-result-object v6

    .line 1332
    .local v6, "locked":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 1333
    .restart local v8    # "oldInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    move-object/from16 v0, p1

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 1335
    .restart local v9    # "parentInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-nez v9, :cond_4

    .line 1336
    const/4 v7, 0x0

    .line 1378
    .end local v6    # "locked":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    :cond_6
    :goto_0
    return-object v7

    .line 1341
    :cond_7
    if-nez v8, :cond_8

    .line 1342
    const/4 v7, 0x0

    goto :goto_0

    .line 1344
    :cond_8
    if-eqz v9, :cond_a

    .line 1345
    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing()Ljava/util/Map;

    move-result-object v5

    .line 1347
    .local v5, "listing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    move-object/from16 v0, p3

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    .line 1349
    .local v3, "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 1350
    :cond_9
    const/4 v7, 0x0

    goto :goto_0

    .line 1353
    .end local v3    # "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    .end local v5    # "listing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    :cond_a
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->properties()Ljava/util/Map;

    move-result-object v10

    .line 1355
    .local v10, "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v10, :cond_b

    new-instance v10, Lorg/apache/ignite/internal/util/GridLeanMap;

    .end local v10    # "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->size()I

    move-result v11

    invoke-direct {v10, v11}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>(I)V

    .line 1357
    .restart local v10    # "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1358
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_c

    .line 1360
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1355
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_b
    new-instance v11, Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-direct {v11, v10}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>(Ljava/util/Map;)V

    move-object v10, v11

    goto :goto_1

    .line 1363
    .restart local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1366
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_d
    new-instance v7, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-direct {v7, v8, v10}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Ljava/util/Map;)V

    .line 1368
    .local v7, "newInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    const/4 v12, 0x0

    new-array v12, v12, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-object/from16 v0, p2

    invoke-interface {v11, v0, v7, v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putx(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    .line 1370
    if-eqz p1, :cond_6

    .line 1371
    new-instance v3, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    invoke-direct {v3, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)V

    .line 1373
    .restart local v3    # "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    sget-boolean v11, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v11, :cond_e

    iget-object v11, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Lorg/apache/ignite/internal/processors/cache/GridCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_e

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 1375
    :cond_e
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    new-instance v12, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-direct {v12, v0, v3, v13, v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;ZLorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$1;)V

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-interface {v11, v0, v12, v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;
    :try_end_1
    .catch Lorg/apache/ignite/internal/util/lang/GridClosureException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private validTxState(Z)Z
    .locals 6
    .param p1, "inTx"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2584
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCache;->tx()Lorg/apache/ignite/transactions/Transaction;

    move-result-object v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-ne p1, v2, :cond_1

    .line 2586
    .local v0, "txState":Z
    :goto_1
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2

    const-string v1, "Method cannot be called outside transaction "

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "[tx="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCache;->tx()Lorg/apache/ignite/transactions/Transaction;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", threadId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .end local v0    # "txState":Z
    :cond_0
    move v2, v1

    .line 2584
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 2586
    .restart local v0    # "txState":Z
    :cond_2
    const-string v1, "Method cannot be called in transaction "

    goto :goto_2

    .line 2590
    :cond_3
    return v0
.end method


# virtual methods
.method public appendDual(Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;I)Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;
    .locals 4
    .param p1, "fs"    # Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    .param p2, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p3, "bufSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1760
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1762
    :try_start_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1822
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v1

    .line 1763
    :cond_0
    :try_start_1
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1765
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$4;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$4;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;I)V

    .line 1819
    .local v0, "task":Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;, "Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask<Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;>;"
    const/4 v1, 0x1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/ignite/igfs/IgfsPath;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->synchronizeAndExecute(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Z[Lorg/apache/ignite/igfs/IgfsPath;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1822
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v1

    .line 1826
    .end local v0    # "task":Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;, "Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask<Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;>;"
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to append to file in DUAL mode because Grid is stopping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method awaitInit()V
    .locals 2

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCacheStartLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Lorg/apache/ignite/IgniteInterruptedException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteInterruptedException;-><init>(Ljava/lang/InterruptedException;)V

    throw v1
.end method

.method public createDual(Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;ZLjava/util/Map;ZISJLorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;
    .locals 18
    .param p1, "fs"    # Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    .param p2, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p3, "simpleCreate"    # Z
    .param p4    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "overwrite"    # Z
    .param p6, "bufSize"    # I
    .param p7, "replication"    # S
    .param p8, "blockSize"    # J
    .param p10, "affKey"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZISJ",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ")",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1605
    .local p4, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1607
    :try_start_0
    sget-boolean v3, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1742
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v3

    .line 1608
    :cond_0
    :try_start_1
    sget-boolean v3, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p2, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1611
    :cond_1
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 1613
    .local v13, "pendingEvts":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/events/IgfsEvent;>;"
    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;

    move-object/from16 v3, p0

    move/from16 v4, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-object/from16 v12, p4

    move-object/from16 v14, p10

    invoke-direct/range {v2 .. v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;ZLorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;ZISJLjava/util/Map;Ljava/util/Deque;Lorg/apache/ignite/lang/IgniteUuid;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1734
    .local v2, "task":Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;, "Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask<Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;>;"
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_2
    new-array v4, v4, [Lorg/apache/ignite/igfs/IgfsPath;

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/igfs/IgfsPath;->parent()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1, v3, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->synchronizeAndExecute(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Z[Lorg/apache/ignite/igfs/IgfsPath;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1737
    :try_start_3
    invoke-interface {v13}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/ignite/events/IgfsEvent;

    .line 1738
    .local v15, "evt":Lorg/apache/ignite/events/IgfsEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    invoke-virtual {v4, v15}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1742
    .end local v15    # "evt":Lorg/apache/ignite/events/IgfsEvent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v3

    .line 1737
    .end local v16    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-interface {v13}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/ignite/events/IgfsEvent;

    .line 1738
    .restart local v15    # "evt":Lorg/apache/ignite/events/IgfsEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    invoke-virtual {v4, v15}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    goto :goto_1

    .end local v15    # "evt":Lorg/apache/ignite/events/IgfsEvent;
    :cond_3
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1746
    .end local v2    # "task":Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;, "Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask<Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;>;"
    .end local v13    # "pendingEvts":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/events/IgfsEvent;>;"
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create file in DUAL mode because Grid is stopping: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method delete(Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;)Ljava/util/Collection;
    .locals 20
    .param p1, "parentId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1137
    .local p2, "listing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1139
    :try_start_0
    sget-boolean v17, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v17, :cond_0

    if-nez p1, :cond_0

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1206
    :catchall_0
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v17

    .line 1140
    :cond_0
    :try_start_1
    sget-boolean v17, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v17, :cond_1

    if-nez p2, :cond_1

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1141
    :cond_1
    sget-boolean v17, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v17, :cond_2

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    move-result v17

    if-nez v17, :cond_2

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1143
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-object/from16 v17, v0

    sget-object v18, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v19, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-interface/range {v17 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCache;->txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v16

    .line 1146
    .local v16, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_start_2
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 1149
    .local v15, "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteUuid;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    new-array v4, v0, [Lorg/apache/ignite/lang/IgniteUuid;

    .line 1151
    .local v4, "allIds":[Lorg/apache/ignite/lang/IgniteUuid;
    const/16 v17, 0x0

    aput-object p1, v4, v17

    .line 1153
    const/4 v9, 0x1

    .line 1155
    .local v9, "i":I
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    move v10, v9

    .end local v9    # "i":I
    .local v10, "i":I
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    .line 1156
    .local v5, "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v17

    aput-object v17, v4, v10

    move v10, v9

    .end local v9    # "i":I
    .restart local v10    # "i":I
    goto :goto_0

    .line 1158
    .end local v5    # "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->lockIds([Lorg/apache/ignite/lang/IgniteUuid;)Ljava/util/Map;

    move-result-object v12

    .line 1160
    .local v12, "locks":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 1163
    .local v14, "parentInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-eqz v14, :cond_8

    .line 1164
    new-instance v13, Ljava/util/HashMap;

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing()Ljava/util/Map;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v17

    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v13, v0, v1}, Ljava/util/HashMap;-><init>(IF)V

    .line 1167
    .local v13, "newListing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing()Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1170
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1171
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    .line 1173
    .local v7, "entryId":Lorg/apache/ignite/lang/IgniteUuid;
    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 1175
    .local v8, "entryInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-eqz v8, :cond_6

    .line 1177
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isFile()Z

    move-result v17

    if-nez v17, :cond_5

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing()Ljava/util/Map;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1178
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v7, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->remove(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    .line 1180
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    invoke-interface {v15, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 1202
    .end local v4    # "allIds":[Lorg/apache/ignite/lang/IgniteUuid;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    .end local v7    # "entryId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v8    # "entryInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v10    # "i":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "locks":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    .end local v13    # "newListing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    .end local v14    # "parentInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v15    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteUuid;>;"
    :catchall_1
    move-exception v17

    :try_start_3
    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    throw v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1187
    .restart local v4    # "allIds":[Lorg/apache/ignite/lang/IgniteUuid;
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    .restart local v7    # "entryId":Lorg/apache/ignite/lang/IgniteUuid;
    .restart local v8    # "entryInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .restart local v10    # "i":I
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "locks":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    .restart local v13    # "newListing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    .restart local v14    # "parentInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .restart local v15    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteUuid;>;"
    :cond_6
    :try_start_4
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    invoke-interface {v15, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1194
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    .end local v7    # "entryId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v8    # "entryInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-object/from16 v17, v0

    new-instance v18, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-object/from16 v0, v18

    invoke-direct {v0, v13, v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(Ljava/util/Map;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putx(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    .line 1197
    .end local v13    # "newListing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    :cond_8
    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1202
    :try_start_5
    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v15

    .line 1210
    .end local v4    # "allIds":[Lorg/apache/ignite/lang/IgniteUuid;
    .end local v10    # "i":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "locks":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    .end local v14    # "parentInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v15    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteUuid;>;"
    .end local v16    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_9
    new-instance v17, Ljava/lang/IllegalStateException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failed to perform delete because Grid is stopping [parentId="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", listing="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x5d

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17
.end method

.method delete(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z
    .locals 9
    .param p1, "parentId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1224
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1226
    :try_start_0
    sget-boolean v5, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1260
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v5

    .line 1228
    :cond_0
    :try_start_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    sget-object v6, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v7, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-interface {v5, v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCache;->txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 1231
    .local v4, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    const/4 v3, 0x0

    .line 1233
    .local v3, "res":Z
    const/4 v5, 0x2

    :try_start_2
    new-array v5, v5, [Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-direct {p0, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->lockIds([Lorg/apache/ignite/lang/IgniteUuid;)Ljava/util/Map;

    move-result-object v0

    .line 1236
    .local v0, "infos":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1237
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 1239
    .local v2, "parentInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    sget-boolean v5, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-nez v2, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1256
    .end local v0    # "infos":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    .end local v2    # "parentInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :catchall_1
    move-exception v5

    :try_start_3
    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1241
    .restart local v0    # "infos":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    .restart local v2    # "parentInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    .line 1243
    .local v1, "listingEntry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    if-eqz v1, :cond_2

    .line 1244
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    new-instance v6, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v6, p2, v1, v7, v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListing;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;ZLorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$1;)V

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, p1, v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;

    .line 1246
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    const/4 v6, 0x0

    new-array v6, v6, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v5, p3, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->remove(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    .line 1248
    const/4 v3, 0x1

    .line 1251
    .end local v1    # "listingEntry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    .end local v2    # "parentInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_3
    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1256
    :try_start_5
    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1260
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return v3

    .line 1264
    .end local v0    # "infos":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    .end local v3    # "res":Z
    .end local v4    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to perform delete because Grid is stopping [parentId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public deleteDual(Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;Z)Z
    .locals 7
    .param p1, "fs"    # Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    .param p2, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p3, "recursive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2134
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2136
    :try_start_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2182
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v0

    .line 2137
    :cond_0
    :try_start_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2139
    :cond_1
    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$9;

    invoke-direct {v1, p0, p2, p1, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$9;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Z)V

    .line 2175
    .local v1, "task":Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;, "Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    sget-object v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->TRASH_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    const/4 v0, 0x1

    new-array v5, v0, [Lorg/apache/ignite/igfs/IgfsPath;

    const/4 v0, 0x0

    aput-object p2, v5, v0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->synchronizeAndExecute(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;ZLjava/util/Collection;[Lorg/apache/ignite/igfs/IgfsPath;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 2177
    .local v6, "res":Ljava/lang/Boolean;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->delWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->signal()V

    .line 2179
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 2182
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return v0

    .line 2186
    .end local v1    # "task":Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;, "Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask<Ljava/lang/Boolean;>;"
    .end local v6    # "res":Ljava/lang/Boolean;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete in DUAL mode because Grid is stopping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public directoryListing(Lorg/apache/ignite/lang/IgniteUuid;)Ljava/util/Map;
    .locals 3
    .param p1, "fileId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 588
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->directoryListing(Lorg/apache/ignite/lang/IgniteUuid;Z)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 593
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v0

    .line 597
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get directory listing because Grid is stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exists(Lorg/apache/ignite/lang/IgniteUuid;)Z
    .locals 3
    .param p1, "fileId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    :try_start_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v0

    .line 323
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 326
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return v0

    .line 323
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 330
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to check file system entry existence because Grid is stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fileForFragmentizer(Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .locals 2
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

    .prologue
    .line 608
    .local p1, "exclude":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteUuid;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    :try_start_0
    sget-object v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->ROOT_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-direct {p0, v0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fileForFragmentizer0(Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 613
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v0

    .line 617
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to get file for framentizer because Grid is stopping."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fileId(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 3
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    :try_start_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v0

    .line 182
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fileId(Lorg/apache/ignite/igfs/IgfsPath;Z)Lorg/apache/ignite/lang/IgniteUuid;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 185
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v0

    .line 189
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get file ID because Grid is stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fileId(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 3
    .param p1, "parentId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fileId(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Z)Lorg/apache/ignite/lang/IgniteUuid;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 222
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v0

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get file ID because Grid is stopping [parentId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fileIds(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/List;
    .locals 3
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    :try_start_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v0

    .line 265
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fileIds(Lorg/apache/ignite/igfs/IgfsPath;Z)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 268
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v0

    .line 272
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get file IDS because Grid is stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .locals 4
    .param p1, "fileId"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 342
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 344
    if-nez p1, :cond_0

    .line 345
    const/4 v0, 0x0

    .line 356
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    :goto_0
    return-object v0

    .line 347
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 350
    .local v0, "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-nez v0, :cond_1

    sget-object v1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->ROOT_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    sget-object v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->ROOT_ID:Lorg/apache/ignite/lang/IgniteUuid;

    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .end local v0    # "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>()V

    .restart local v0    # "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    invoke-interface {v1, v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putxIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto :goto_0

    .end local v0    # "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v1

    .line 360
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get file info because Grid is stopping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public infos(Ljava/util/Collection;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 371
    .local p1, "fileIds":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteUuid;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 373
    :try_start_0
    sget-boolean v3, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v3

    .line 374
    :cond_0
    :try_start_1
    sget-boolean v3, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 376
    :cond_1
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 377
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 395
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    :goto_0
    return-object v1

    .line 379
    :cond_2
    :try_start_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v3, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->getAll(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    .line 382
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    sget-object v3, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->ROOT_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->ROOT_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 383
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>()V

    .line 385
    .local v0, "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    sget-object v4, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->ROOT_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {v3, v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putxIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 387
    new-instance v2, Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-direct {v2, v1}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>(Ljava/util/Map;)V

    .line 389
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    sget-object v3, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->ROOT_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v2

    .line 395
    .end local v0    # "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    :cond_3
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto :goto_0

    .line 399
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get file infos because Grid is stopping: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public lock(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .locals 8
    .param p1, "fileId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 410
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 412
    :try_start_0
    sget-boolean v5, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v5

    .line 413
    :cond_0
    :try_start_1
    sget-boolean v5, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-nez p1, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 415
    :cond_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    sget-object v6, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v7, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-interface {v5, v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCache;->txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 419
    .local v4, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_start_2
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v2

    .line 421
    .local v2, "oldInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-nez v2, :cond_2

    .line 422
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to lock file (file not found): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Lorg/apache/ignite/internal/util/lang/GridClosureException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 434
    .end local v2    # "oldInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Lorg/apache/ignite/internal/util/lang/GridClosureException;
    :try_start_3
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cast(Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v5

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 438
    .end local v0    # "e":Lorg/apache/ignite/internal/util/lang/GridClosureException;
    :catchall_1
    move-exception v5

    :try_start_4
    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 424
    .restart local v2    # "oldInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_2
    :try_start_5
    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->lockInfo(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v1

    .line 426
    .local v1, "newInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    const/4 v6, 0x0

    new-array v6, v6, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v5, p1, v1, v6}, Lorg/apache/ignite/internal/processors/cache/GridCache;->putx(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v3

    .line 428
    .local v3, "put":Z
    sget-boolean v5, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    if-nez v3, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Value was not stored in cache [fileId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", newInfo="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 430
    :cond_3
    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V
    :try_end_5
    .catch Lorg/apache/ignite/internal/util/lang/GridClosureException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 438
    :try_start_6
    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 442
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v1

    .line 446
    .end local v1    # "newInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v2    # "oldInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v3    # "put":Z
    .end local v4    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to obtain lock because Grid is stopping: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public lockInfo(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .locals 4
    .param p1, "info"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 457
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 459
    :try_start_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v0

    .line 461
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->lockId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 462
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to lock file (file is being concurrently written) [fileId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lockId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->lockId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->modificationTime()J

    move-result-wide v2

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/lang/IgniteUuid;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v0

    .line 472
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get lock info because Grid is stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method metaCacheNodes()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCache;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cacheNodes(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 163
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v0

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to get meta cache nodes because Grid is stopping."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mkdirsDual(Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)Z
    .locals 8
    .param p1, "fs"    # Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    .param p2, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p3, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 1951
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1953
    :try_start_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2016
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v1

    .line 1954
    :cond_0
    :try_start_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1955
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez p3, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1957
    :cond_2
    invoke-virtual {p2}, Lorg/apache/ignite/igfs/IgfsPath;->parent()Lorg/apache/ignite/igfs/IgfsPath;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-nez v2, :cond_3

    .line 2016
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    :goto_0
    return v1

    .line 1961
    :cond_3
    :try_start_2
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 1963
    .local v5, "pendingEvts":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/events/IgfsEvent;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$7;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;Ljava/util/Deque;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2008
    .local v0, "task":Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;, "Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask<Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_3
    new-array v2, v2, [Lorg/apache/ignite/igfs/IgfsPath;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lorg/apache/ignite/igfs/IgfsPath;->parent()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->synchronizeAndExecute(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Z[Lorg/apache/ignite/igfs/IgfsPath;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    .line 2011
    :try_start_4
    invoke-interface {v5}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/events/IgfsEvent;

    .line 2012
    .local v6, "evt":Lorg/apache/ignite/events/IgfsEvent;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2016
    .end local v6    # "evt":Lorg/apache/ignite/events/IgfsEvent;
    :cond_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto :goto_0

    .line 2011
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v1

    :try_start_5
    invoke-interface {v5}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/events/IgfsEvent;

    .line 2012
    .restart local v6    # "evt":Lorg/apache/ignite/events/IgfsEvent;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    goto :goto_2

    .end local v6    # "evt":Lorg/apache/ignite/events/IgfsEvent;
    :cond_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2020
    .end local v0    # "task":Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;, "Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask<Ljava/lang/Boolean;>;"
    .end local v5    # "pendingEvts":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/events/IgfsEvent;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create directory in DUAL mode because Grid is stopping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public move(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 4
    .param p1, "fileId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "srcFileName"    # Ljava/lang/String;
    .param p3, "srcParentId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p4, "destFileName"    # Ljava/lang/String;
    .param p5, "destParentId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 784
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 786
    :try_start_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v1

    .line 788
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    sget-object v2, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v3, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-interface {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCache;->txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 791
    .local v0, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_start_2
    invoke-direct/range {p0 .. p5}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->moveNonTx(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 793
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 796
    :try_start_3
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 800
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    .line 807
    return-void

    .line 796
    :catchall_1
    move-exception v1

    :try_start_4
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 804
    .end local v0    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to move file system entry because Grid is stopping [fileId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", srcFileName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", srcParentId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", destFileName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", destParentId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected onKernalStart0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getMetaCacheName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->cache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    .line 114
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getMetaCacheName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->startFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$1;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)V

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 123
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCache;->cache()Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    .line 125
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->locNode:Lorg/apache/ignite/cluster/ClusterNode;

    .line 128
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsContext;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->delWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;

    .line 130
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->delWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->start()V

    .line 131
    return-void
.end method

.method protected onKernalStop0(Z)V
    .locals 2
    .param p1, "cancel"    # Z

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->delWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;

    .line 137
    .local v0, "delWorker0":Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->cancel()V

    .line 140
    :cond_0
    if-eqz v0, :cond_1

    .line 142
    :try_start_0
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->block()V

    .line 150
    return-void

    .line 144
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public openDual(Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;I)Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryInputStreamDescriptor;
    .locals 5
    .param p1, "fs"    # Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    .param p2, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p3, "bufSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1841
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1843
    :try_start_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1886
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v2

    .line 1844
    :cond_0
    :try_start_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1847
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fileId(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v0

    .line 1849
    .local v0, "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-eqz v0, :cond_3

    .line 1850
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isFile()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1851
    new-instance v2, Lorg/apache/ignite/igfs/IgfsPathIsDirectoryException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open file (not a file): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/igfs/IgfsPathIsDirectoryException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fsException(Lorg/apache/ignite/igfs/IgfsException;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v2

    throw v2

    .line 1854
    :cond_2
    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryInputStreamDescriptor;

    invoke-interface {p1, p2, p3}, Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;->open(Lorg/apache/ignite/igfs/IgfsPath;I)Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryInputStreamDescriptor;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1886
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    :goto_0
    return-object v2

    .line 1858
    :cond_3
    :try_start_2
    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$5;

    invoke-direct {v1, p0, p2, p1, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$5;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;I)V

    .line 1883
    .local v1, "task":Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;, "Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask<Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryInputStreamDescriptor;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/ignite/igfs/IgfsPath;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-direct {p0, v1, p1, v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->synchronizeAndExecute(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Z[Lorg/apache/ignite/igfs/IgfsPath;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryInputStreamDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1886
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto :goto_0

    .line 1890
    .end local v0    # "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v1    # "task":Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;, "Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask<Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryInputStreamDescriptor;>;"
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open file in DUAL mode because Grid is stopping: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public pendingDeletes()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1275
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1277
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    sget-object v3, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->TRASH_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 1279
    .local v1, "trashInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-eqz v1, :cond_0

    .line 1280
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing()Ljava/util/Map;

    move-result-object v0

    .line 1282
    .local v0, "listing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1283
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$2;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$2;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)V

    const/4 v4, 0x0

    new-array v4, v4, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v2, v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1294
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    .end local v0    # "listing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    :goto_0
    return-object v2

    .line 1291
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1294
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto :goto_0

    .end local v1    # "trashInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v2

    .line 1298
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to get pending deletes because Grid is stopping."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public putIfAbsent(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 5
    .param p1, "parentId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "newFileInfo"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 690
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 692
    :try_start_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v2

    .line 693
    :cond_0
    :try_start_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 694
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez p2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 695
    :cond_2
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    if-nez p3, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 697
    :cond_3
    const/4 v0, 0x0

    .line 699
    .local v0, "res":Lorg/apache/ignite/lang/IgniteUuid;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    sget-object v3, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v4, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCache;->txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 702
    .local v1, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->putIfAbsentNonTx(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    .line 704
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 707
    :try_start_3
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 713
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v0

    .line 707
    :catchall_1
    move-exception v2

    :try_start_4
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 717
    .end local v0    # "res":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v1    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to put file because Grid is stopping [parentId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fileName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newFileInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeIfEmpty(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/igfs/IgfsPath;Z)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .locals 5
    .param p1, "parentId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p4, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p5, "rmvLocked"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 904
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 906
    :try_start_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v2

    .line 908
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    sget-object v3, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v4, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCache;->txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 911
    .local v1, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    if-eqz p1, :cond_1

    .line 912
    const/4 v2, 0x3

    :try_start_2
    new-array v2, v2, [Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->TRASH_ID:Lorg/apache/ignite/lang/IgniteUuid;

    aput-object v4, v2, v3

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->lockIds([Lorg/apache/ignite/lang/IgniteUuid;)Ljava/util/Map;

    .line 916
    :goto_0
    invoke-direct/range {p0 .. p5}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->removeIfEmptyNonTx(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/igfs/IgfsPath;Z)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v0

    .line 918
    .local v0, "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V

    .line 920
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->delWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->signal()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 925
    :try_start_3
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 929
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v0

    .line 914
    .end local v0    # "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_1
    const/4 v2, 0x2

    :try_start_4
    new-array v2, v2, [Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->TRASH_ID:Lorg/apache/ignite/lang/IgniteUuid;

    aput-object v4, v2, v3

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->lockIds([Lorg/apache/ignite/lang/IgniteUuid;)Ljava/util/Map;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 925
    :catchall_1
    move-exception v2

    :try_start_5
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 933
    .end local v1    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove file system entry because Grid is stopping [parentId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fileName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fileId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public renameDual(Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;)Z
    .locals 8
    .param p1, "fs"    # Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    .param p2, "src"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p3, "dest"    # Lorg/apache/ignite/igfs/IgfsPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2035
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2037
    :try_start_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2115
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v1

    .line 2038
    :cond_0
    :try_start_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2039
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez p3, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2041
    :cond_2
    invoke-virtual {p2}, Lorg/apache/ignite/igfs/IgfsPath;->parent()Lorg/apache/ignite/igfs/IgfsPath;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-nez v2, :cond_3

    .line 2115
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    :goto_0
    return v1

    .line 2045
    :cond_3
    :try_start_2
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 2047
    .local v5, "pendingEvts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/events/IgfsEvent;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2107
    .local v0, "task":Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;, "Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask<Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_3
    new-array v2, v2, [Lorg/apache/ignite/igfs/IgfsPath;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->synchronizeAndExecute(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Z[Lorg/apache/ignite/igfs/IgfsPath;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    .line 2110
    :try_start_4
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/events/IgfsEvent;

    .line 2111
    .local v6, "evt":Lorg/apache/ignite/events/IgfsEvent;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2115
    .end local v6    # "evt":Lorg/apache/ignite/events/IgfsEvent;
    :cond_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto :goto_0

    .line 2110
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v1

    :try_start_5
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/events/IgfsEvent;

    .line 2111
    .restart local v6    # "evt":Lorg/apache/ignite/events/IgfsEvent;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    goto :goto_2

    .end local v6    # "evt":Lorg/apache/ignite/events/IgfsEvent;
    :cond_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2119
    .end local v0    # "task":Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;, "Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask<Ljava/lang/Boolean;>;"
    .end local v5    # "pendingEvts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/events/IgfsEvent;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to rename in DUAL mode because Grid is stopping [src="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dest="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sampling()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1563
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1565
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    .line 1567
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->sampling:Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1569
    .local v0, "val":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1572
    .end local v0    # "val":Ljava/lang/Object;
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v0

    .line 1569
    .restart local v0    # "val":Ljava/lang/Object;
    :cond_1
    :try_start_1
    check-cast v0, Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1572
    .end local v0    # "val":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v1

    .line 1576
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get sampling flag because Grid is stopping."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sampling(Ljava/lang/Boolean;)Z
    .locals 6
    .param p1, "val"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1530
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1532
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    .line 1534
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    sget-object v4, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v5, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-interface {v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCache;->txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 1537
    .local v1, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    if-eqz p1, :cond_1

    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->sampling:Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v3, v4, p1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCache;->put(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    move-result-object v0

    .line 1539
    .local v0, "prev":Ljava/lang/Object;
    :goto_0
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V

    .line 1541
    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 1544
    :cond_0
    :try_start_2
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1548
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return v2

    .line 1537
    .end local v0    # "prev":Ljava/lang/Object;
    :cond_1
    :try_start_3
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->sampling:Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCache;->remove(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1544
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1548
    .end local v1    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v2

    .line 1552
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to set sampling flag because Grid is stopping."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method softDelete(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 5
    .param p1, "parentId"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "pathName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "pathId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1018
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1020
    :try_start_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1043
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v2

    .line 1022
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    sget-object v3, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v4, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCache;->txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 1025
    .local v1, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    if-nez p1, :cond_1

    .line 1026
    const/4 v2, 0x2

    :try_start_2
    new-array v2, v2, [Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->TRASH_ID:Lorg/apache/ignite/lang/IgniteUuid;

    aput-object v4, v2, v3

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->lockIds([Lorg/apache/ignite/lang/IgniteUuid;)Ljava/util/Map;

    .line 1030
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->softDeleteNonTx(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    .line 1032
    .local v0, "resId":Lorg/apache/ignite/lang/IgniteUuid;
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V

    .line 1034
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->delWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteWorker;->signal()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1039
    :try_start_3
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1043
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v0

    .line 1028
    .end local v0    # "resId":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_1
    const/4 v2, 0x3

    :try_start_4
    new-array v2, v2, [Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->TRASH_ID:Lorg/apache/ignite/lang/IgniteUuid;

    aput-object v4, v2, v3

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->lockIds([Lorg/apache/ignite/lang/IgniteUuid;)Ljava/util/Map;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 1039
    :catchall_1
    move-exception v2

    :try_start_5
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1047
    .end local v1    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to perform soft delete because Grid is stopping [parentId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pathName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pathId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected start0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCacheStartLatch:Ljava/util/concurrent/CountDownLatch;

    .line 101
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;

    .line 103
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    .line 105
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsSamplingKey;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsSamplingKey;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->sampling:Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;

    .line 107
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/GridKernalContext;->log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->log:Lorg/apache/ignite/IgniteLogger;

    .line 108
    return-void
.end method

.method public synchronizeFileDual(Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .locals 5
    .param p1, "fs"    # Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    .param p2, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1903
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1904
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1906
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1909
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fileId(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1911
    .local v0, "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-eqz v0, :cond_2

    .line 1931
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    .end local v0    # "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :goto_0
    return-object v0

    .line 1915
    .restart local v0    # "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_2
    :try_start_1
    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$6;

    invoke-direct {v1, p0, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$6;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;Lorg/apache/ignite/igfs/IgfsPath;)V

    .line 1928
    .local v1, "task":Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;, "Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask<Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/ignite/igfs/IgfsPath;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-direct {p0, v1, p1, v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->synchronizeAndExecute(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Z[Lorg/apache/ignite/igfs/IgfsPath;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1931
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    move-object v0, v2

    goto :goto_0

    .end local v0    # "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v1    # "task":Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;, "Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask<Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v2

    .line 1935
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to synchronize file because Grid is stopping: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public unlock(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;J)V
    .locals 12
    .param p1, "info"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .param p2, "modificationTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 483
    sget-boolean v8, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    invoke-direct {p0, v9}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 484
    :cond_0
    sget-boolean v8, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    if-nez p1, :cond_1

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 486
    :cond_1
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 488
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->lockId()Lorg/apache/ignite/lang/IgniteUuid;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 490
    .local v3, "lockId":Lorg/apache/ignite/lang/IgniteUuid;
    if-nez v3, :cond_2

    .line 532
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    .line 537
    :goto_0
    return-void

    .line 494
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    .line 496
    .local v2, "interrupted":Z
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    .line 498
    .local v1, "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    sget-object v9, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v10, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-interface {v8, v9, v10}, Lorg/apache/ignite/internal/processors/cache/GridCache;->txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .line 502
    .local v7, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_start_2
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v5

    .line 504
    .local v5, "oldInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-nez v5, :cond_3

    .line 505
    new-instance v8, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to unlock file (file not found): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fsException(Lorg/apache/ignite/igfs/IgfsException;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v8

    throw v8
    :try_end_2
    .catch Lorg/apache/ignite/internal/util/lang/GridClosureException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 519
    .end local v5    # "oldInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Lorg/apache/ignite/internal/util/lang/GridClosureException;
    :try_start_3
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cast(Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v8

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 523
    .end local v0    # "e":Lorg/apache/ignite/internal/util/lang/GridClosureException;
    :catchall_0
    move-exception v8

    :try_start_4
    invoke-interface {v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    .line 525
    sget-boolean v9, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v9, :cond_8

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    move-result v9

    if-nez v9, :cond_8

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 532
    .end local v1    # "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v2    # "interrupted":Z
    .end local v3    # "lockId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v7    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :catchall_1
    move-exception v8

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v8

    .line 507
    .restart local v1    # "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    .restart local v2    # "interrupted":Z
    .restart local v3    # "lockId":Lorg/apache/ignite/lang/IgniteUuid;
    .restart local v5    # "oldInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .restart local v7    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_3
    :try_start_5
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->lockId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->lockId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 508
    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to unlock file (inconsistent file lock ID) [fileId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", lockId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->lockId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", actualLockId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->lockId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 511
    :cond_4
    new-instance v4, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    const/4 v8, 0x0

    invoke-direct {v4, v5, v8, p2, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/lang/IgniteUuid;J)V

    .line 513
    .local v4, "newInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    const/4 v9, 0x0

    new-array v9, v9, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v8, v1, v4, v9}, Lorg/apache/ignite/internal/processors/cache/GridCache;->putx(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v6

    .line 515
    .local v6, "put":Z
    sget-boolean v8, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v8, :cond_5

    if-nez v6, :cond_5

    new-instance v8, Ljava/lang/AssertionError;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Value was not stored in cache [fileId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", newInfo="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 517
    :cond_5
    invoke-interface {v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V
    :try_end_5
    .catch Lorg/apache/ignite/internal/util/lang/GridClosureException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 523
    :try_start_6
    invoke-interface {v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    .line 525
    sget-boolean v8, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v8, :cond_6

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    move-result v8

    if-nez v8, :cond_6

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 527
    :cond_6
    if-eqz v2, :cond_7

    .line 528
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 532
    :cond_7
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto/16 :goto_0

    .line 527
    .end local v4    # "newInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v5    # "oldInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v6    # "put":Z
    :cond_8
    if-eqz v2, :cond_9

    .line 528
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    :cond_9
    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 536
    .end local v1    # "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v2    # "interrupted":Z
    .end local v3    # "lockId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v7    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_a
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to unlock file system entry because Grid is stopping: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public updateDual(Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .locals 4
    .param p1, "fs"    # Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    .param p2, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2200
    .local p3, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2201
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2202
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2204
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2206
    :try_start_0
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$10;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$10;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Ljava/util/Map;)V

    .line 2229
    .local v0, "task":Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;, "Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask<Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/ignite/igfs/IgfsPath;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->synchronizeAndExecute(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Z[Lorg/apache/ignite/igfs/IgfsPath;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2232
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v1

    .end local v0    # "task":Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;, "Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask<Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v1

    .line 2236
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update in DUAL mode because Grid is stopping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public updateInfo(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .locals 9
    .param p1, "fileId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
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
    .local p2, "c":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    const/4 v5, 0x0

    .line 1462
    sget-boolean v6, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1463
    :cond_0
    sget-boolean v6, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    if-nez p1, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1464
    :cond_1
    sget-boolean v6, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    if-nez p2, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1466
    :cond_2
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1468
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1469
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Update file info [fileId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1471
    :cond_3
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    invoke-interface {v6, p1}, Lorg/apache/ignite/internal/processors/cache/GridCache;->isLockedByThread(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v6

    if-eqz v6, :cond_5

    move-object v4, v5

    .line 1476
    .local v4, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :goto_0
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :try_end_1
    .catch Lorg/apache/ignite/internal/util/lang/GridClosureException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 1478
    .local v3, "oldInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-nez v3, :cond_6

    .line 1509
    if-eqz v4, :cond_4

    .line 1510
    :try_start_2
    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1514
    :cond_4
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    :goto_1
    return-object v5

    .line 1471
    .end local v3    # "oldInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v4    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_5
    :try_start_3
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    sget-object v7, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v8, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-interface {v6, v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCache;->txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    goto :goto_0

    .line 1481
    .restart local v3    # "oldInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .restart local v4    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_6
    :try_start_4
    invoke-interface {p2, v3}, Lorg/apache/ignite/lang/IgniteClosure;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 1483
    .local v2, "newInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-nez v2, :cond_8

    .line 1484
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to update file info with null value [oldInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", newInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", c="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fsException(Ljava/lang/String;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v5

    throw v5
    :try_end_4
    .catch Lorg/apache/ignite/internal/util/lang/GridClosureException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1505
    .end local v2    # "newInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v3    # "oldInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :catch_0
    move-exception v1

    .line 1506
    .local v1, "e":Lorg/apache/ignite/internal/util/lang/GridClosureException;
    :try_start_5
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cast(Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v5

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1509
    .end local v1    # "e":Lorg/apache/ignite/internal/util/lang/GridClosureException;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_7

    .line 1510
    :try_start_6
    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    :cond_7
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1514
    .end local v4    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :catchall_1
    move-exception v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v5

    .line 1487
    .restart local v2    # "newInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .restart local v3    # "oldInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .restart local v4    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_8
    :try_start_7
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1488
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to update file info (file IDs differ) [oldInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", newInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", c="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fsException(Ljava/lang/String;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v5

    throw v5

    .line 1491
    :cond_9
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isDirectory()Z

    move-result v5

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isDirectory()Z

    move-result v6

    if-eq v5, v6, :cond_a

    .line 1492
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to update file info (file types differ) [oldInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", newInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", c="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fsException(Ljava/lang/String;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v5

    throw v5

    .line 1495
    :cond_a
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    invoke-interface {v5, p1, v3, v2}, Lorg/apache/ignite/internal/processors/cache/GridCache;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 1497
    .local v0, "b":Z
    sget-boolean v5, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v5, :cond_b

    if-nez v0, :cond_b

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inconsistent transaction state [oldInfo="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", newInfo="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", c="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 1500
    :cond_b
    if-eqz v4, :cond_c

    .line 1501
    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V
    :try_end_7
    .catch Lorg/apache/ignite/internal/util/lang/GridClosureException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1509
    :cond_c
    if-eqz v4, :cond_d

    .line 1510
    :try_start_8
    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1514
    :cond_d
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    move-object v5, v2

    goto/16 :goto_1

    .line 1518
    .end local v0    # "b":Z
    .end local v2    # "newInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v3    # "oldInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v4    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_e
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to update file system entry info because Grid is stopping: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public updateParentListingAsync(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;JJ)V
    .locals 12
    .param p1, "parentId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "fileId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "lenDelta"    # J
    .param p6, "modificationTime"    # J

    .prologue
    .line 1434
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1436
    :try_start_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1444
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v0

    .line 1438
    :cond_0
    :try_start_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1440
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;

    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    move-object v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v10}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;JJJLorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$1;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invokeAsync(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1444
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    .line 1450
    return-void

    .line 1448
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to update parent listing because Grid is stopping [parentId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fileId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateProperties(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .locals 5
    .param p1, "parentId"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "fileId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 1397
    .local p4, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1399
    :try_start_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1415
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v2

    .line 1401
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    sget-object v3, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v4, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCache;->txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 1404
    .local v1, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_start_2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->updatePropertiesNonTx(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v0

    .line 1406
    .local v0, "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1411
    :try_start_3
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1415
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v0

    .line 1411
    .end local v0    # "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :catchall_1
    move-exception v2

    :try_start_4
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1419
    .end local v1    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to update properties because Grid is stopping [parentId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fileId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fileName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", props="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public updateTimes(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;JJ)V
    .locals 20
    .param p1, "parentId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "fileId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "accessTime"    # J
    .param p6, "modificationTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2605
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2607
    :try_start_0
    sget-boolean v4, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->validTxState(Z)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2652
    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v4

    .line 2610
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    sget-object v5, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v6, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-interface {v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCache;->txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v18

    .line 2613
    .local v18, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    const/4 v4, 0x2

    :try_start_2
    new-array v4, v4, [Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->lockIds([Lorg/apache/ignite/lang/IgniteUuid;)Ljava/util/Map;

    move-result-object v16

    .line 2615
    .local v16, "infoMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 2617
    .local v3, "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-nez v3, :cond_1

    .line 2618
    new-instance v4, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to update times (path was not found): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fsException(Lorg/apache/ignite/igfs/IgfsException;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v4

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2648
    .end local v3    # "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v16    # "infoMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    :catchall_1
    move-exception v4

    :try_start_3
    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2621
    .restart local v3    # "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .restart local v16    # "infoMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    :cond_1
    :try_start_4
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 2623
    .local v17, "parentInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-nez v17, :cond_2

    .line 2624
    new-instance v4, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to update times (parent was not found): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fsException(Lorg/apache/ignite/igfs/IgfsException;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v4

    throw v4

    .line 2627
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing()Ljava/util/Map;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    .line 2630
    .local v15, "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2631
    :cond_3
    new-instance v4, Lorg/apache/ignite/igfs/IgfsConcurrentModificationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to update times (file concurrently modified): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/igfs/IgfsConcurrentModificationException;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fsException(Lorg/apache/ignite/igfs/IgfsException;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v4

    throw v4

    .line 2634
    :cond_4
    sget-boolean v4, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->$assertionsDisabled:Z

    if-nez v4, :cond_5

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2636
    :cond_5
    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    const-wide/16 v4, -0x1

    cmp-long v4, p4, v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->accessTime()J

    move-result-wide v4

    :goto_0
    const-wide/16 v6, -0x1

    cmp-long v6, p6, v6

    if-nez v6, :cond_7

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->modificationTime()J

    move-result-wide v6

    :goto_1
    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;JJ)V

    .line 2640
    .local v2, "updated":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-object/from16 v0, p2

    invoke-interface {v4, v0, v2, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putx(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    .line 2642
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    new-instance v5, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;

    const-wide/16 v8, 0x0

    const/4 v14, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    invoke-direct/range {v5 .. v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdateListingEntry;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;JJJLorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$1;)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;

    .line 2645
    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2648
    :try_start_5
    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2652
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    .line 2658
    return-void

    .end local v2    # "updated":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_6
    move-wide/from16 v4, p4

    .line 2636
    goto :goto_0

    :cond_7
    move-wide/from16 v6, p6

    goto :goto_1

    .line 2656
    .end local v3    # "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v15    # "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    .end local v16    # "infoMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    .end local v17    # "parentInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v18    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_8
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to update times because Grid is stopping [parentId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fileId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fileName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

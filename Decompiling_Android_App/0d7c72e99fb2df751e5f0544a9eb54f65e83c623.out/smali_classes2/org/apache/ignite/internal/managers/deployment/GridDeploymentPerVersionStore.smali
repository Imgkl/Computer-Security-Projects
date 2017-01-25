.class public Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;
.super Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStoreAdapter;
.source "GridDeploymentPerVersionStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;",
            ">;>;"
        }
    .end annotation
.end field

.field private final deadClsLdrs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;"
        }
    .end annotation
.end field

.field private discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

.field private final loadRmtLock:Lorg/apache/ignite/internal/util/GridStripedLock;

.field private final missedRsrcCacheSize:I

.field private final mux:Ljava/lang/Object;

.field private final rsrcCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/spi/deployment/DeploymentSpi;Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;)V
    .locals 3
    .param p1, "spi"    # Lorg/apache/ignite/spi/deployment/DeploymentSpi;
    .param p2, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p3, "comm"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStoreAdapter;-><init>(Lorg/apache/ignite/spi/deployment/DeploymentSpi;Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;)V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->cache:Ljava/util/Map;

    .line 51
    new-instance v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;

    const/16 v1, 0x400

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;-><init>(II)V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->deadClsLdrs:Ljava/util/Collection;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;

    .line 69
    new-instance v0, Lorg/apache/ignite/internal/util/GridStripedLock;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridStripedLock;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->loadRmtLock:Lorg/apache/ignite/internal/util/GridStripedLock;

    .line 79
    invoke-interface {p2}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPeerClassLoadingMissedResourcesCacheSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->missedRsrcCacheSize:I

    .line 81
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->rsrcCache:Ljava/util/concurrent/ConcurrentMap;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->cache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;Ljava/util/UUID;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Ljava/util/Collection;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->recordUndeployed(Ljava/util/UUID;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->deadClsLdrs:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->rsrcCache:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private addParticipant(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;)Z
    .locals 9
    .param p1, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    .param p2, "meta"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;

    .prologue
    const/4 v4, 0x0

    const/16 v8, 0x5d

    .line 757
    sget-boolean v2, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 758
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 760
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 762
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->checkModeMatch(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v4

    .line 794
    :goto_0
    return v2

    .line 765
    :cond_3
    invoke-virtual {p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->participants()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 766
    invoke-virtual {p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->participants()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 767
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    invoke-virtual {v3, v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 768
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {p1, v2, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->addParticipant(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;)Z

    .line 770
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 771
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added new participant [nodeId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", clsLdrId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", seqNum="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v2}, Lorg/apache/ignite/lang/IgniteUuid;->localId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 774
    :cond_5
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 775
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipped participant (node left?) [nodeId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", clsLdrId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", seqNum="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v2}, Lorg/apache/ignite/lang/IgniteUuid;->localId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 780
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->deployMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/configuration/DeploymentMode;->CONTINUOUS:Lorg/apache/ignite/configuration/DeploymentMode;

    if-eq v2, v3, :cond_7

    invoke-virtual {p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->participants()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_9

    .line 781
    :cond_7
    invoke-virtual {p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->senderNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->addParticipant(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 782
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create shared mode deployment (requested class loader was already undeployed, did sender node leave grid?) [clsLdrId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", senderNodeId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->senderNodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    move v2, v4

    .line 786
    goto/16 :goto_0

    .line 789
    :cond_8
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 790
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added new participant [nodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->senderNodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clsLdrId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", seqNum="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->sequenceNumber()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 794
    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method private checkLoadRemoteClass(Ljava/lang/String;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;)Z
    .locals 25
    .param p1, "clsName"    # Ljava/lang/String;
    .param p2, "meta"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;

    .prologue
    .line 622
    sget-boolean v3, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 623
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p2, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 624
    :cond_1
    sget-boolean v3, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->participants()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 627
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->rsrcCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map;

    .line 629
    .local v20, "ldrRsrcCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v20, :cond_3

    .line 630
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Boolean;

    .line 632
    .local v23, "res":Ljava/lang/Boolean;
    if-eqz v23, :cond_3

    .line 633
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    .line 716
    .end local v23    # "res":Ljava/lang/Boolean;
    :goto_0
    return v19

    .line 637
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->deadClsLdrs:Ljava/util/Collection;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 638
    const/16 v19, 0x0

    goto :goto_0

    .line 640
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1f

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/lang/IgniteUuid;->hashCode()I

    move-result v4

    add-int v21, v3, v4

    .line 642
    .local v21, "lockId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->loadRmtLock:Lorg/apache/ignite/internal/util/GridStripedLock;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/util/GridStripedLock;->lock(I)V

    .line 646
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->rsrcCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object/from16 v20, v0

    .line 648
    if-eqz v20, :cond_5

    .line 649
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Boolean;

    .line 651
    .restart local v23    # "res":Ljava/lang/Boolean;
    if-eqz v23, :cond_5

    .line 652
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v19

    .line 716
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->loadRmtLock:Lorg/apache/ignite/internal/util/GridStripedLock;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/util/GridStripedLock;->unlock(I)V

    goto :goto_0

    .line 656
    .end local v23    # "res":Ljava/lang/Boolean;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->deadClsLdrs:Ljava/util/Collection;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-eqz v3, :cond_6

    .line 657
    const/16 v19, 0x0

    .line 716
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->loadRmtLock:Lorg/apache/ignite/internal/util/GridStripedLock;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/util/GridStripedLock;->unlock(I)V

    goto :goto_0

    .line 660
    :cond_6
    :try_start_2
    new-instance v2, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/lang/IgniteUuid;->fromUuid(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->userVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->deploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    if-eqz v8, :cond_9

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->senderNodeId()Ljava/util/UUID;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->comm:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v12}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkTimeout()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v15}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v15

    invoke-virtual {v15}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPeerClassLoadingLocalClassPathExclude()[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-direct/range {v2 .. v18}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/configuration/DeploymentMode;ZLorg/apache/ignite/internal/GridKernalContext;Ljava/lang/ClassLoader;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/UUID;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;JLorg/apache/ignite/IgniteLogger;[Ljava/lang/String;IZZ)V

    .line 677
    .local v2, "temp":Ljava/lang/ClassLoader;
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->classNameToResourceName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v22

    .line 680
    .local v22, "path":Ljava/lang/String;
    const/16 v24, 0x0

    .line 683
    .local v24, "rsrcIn":Ljava/io/InputStream;
    :try_start_3
    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v24

    .line 685
    if-eqz v24, :cond_a

    const/16 v19, 0x1

    .line 690
    .local v19, "found":Z
    :goto_2
    if-nez v19, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->missedRsrcCacheSize:I

    if-lez v3, :cond_c

    .line 691
    :cond_7
    if-nez v20, :cond_8

    .line 692
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->rsrcCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    new-instance v5, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v5}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    invoke-static {v3, v4, v5}, Lorg/apache/ignite/internal/util/typedef/F;->addIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object/from16 v20, v0

    .line 698
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->deadClsLdrs:Ljava/util/Collection;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 699
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->rsrcCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 701
    const/16 v19, 0x0

    .line 712
    .end local v19    # "found":Z
    :try_start_4
    invoke-static/range {v24 .. v24}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 716
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->loadRmtLock:Lorg/apache/ignite/internal/util/GridStripedLock;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/util/GridStripedLock;->unlock(I)V

    goto/16 :goto_0

    .line 660
    .end local v2    # "temp":Ljava/lang/ClassLoader;
    .end local v22    # "path":Ljava/lang/String;
    .end local v24    # "rsrcIn":Ljava/io/InputStream;
    :cond_9
    :try_start_5
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridClassLoader()Ljava/lang/ClassLoader;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v8

    goto/16 :goto_1

    .line 685
    .restart local v2    # "temp":Ljava/lang/ClassLoader;
    .restart local v22    # "path":Ljava/lang/String;
    .restart local v24    # "rsrcIn":Ljava/io/InputStream;
    :cond_a
    const/16 v19, 0x0

    goto :goto_2

    .line 705
    .restart local v19    # "found":Z
    :cond_b
    :try_start_6
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 712
    :cond_c
    :try_start_7
    invoke-static/range {v24 .. v24}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 716
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->loadRmtLock:Lorg/apache/ignite/internal/util/GridStripedLock;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/util/GridStripedLock;->unlock(I)V

    goto/16 :goto_0

    .line 712
    .end local v19    # "found":Z
    :catchall_0
    move-exception v3

    :try_start_8
    invoke-static/range {v24 .. v24}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 716
    .end local v2    # "temp":Ljava/lang/ClassLoader;
    .end local v22    # "path":Ljava/lang/String;
    .end local v24    # "rsrcIn":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->loadRmtLock:Lorg/apache/ignite/internal/util/GridStripedLock;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/util/GridStripedLock;->unlock(I)V

    throw v3
.end method

.method private checkModeMatch(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;)Z
    .locals 3
    .param p1, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    .param p2, "meta"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;

    .prologue
    .line 805
    invoke-interface {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->deployMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->deploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 806
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received invalid deployment mode (will not deploy, make sure that all nodes executing the same classes in shared mode have identical GridDeploymentMode parameter) [mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->deploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->deployMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 810
    const/4 v0, 0x0

    .line 813
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkRedeploy(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;)V
    .locals 12
    .param p1, "meta"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;

    .prologue
    .line 822
    sget-boolean v7, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 824
    :cond_0
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->cache:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 825
    .local v1, "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    .line 826
    .local v0, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->undeployed()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->pendingUndeploy()Z

    move-result v7

    if-nez v7, :cond_2

    .line 827
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkTimeout()J

    move-result-wide v8

    .line 830
    .local v8, "undeployTimeout":J
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->hasParticipants()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->deployMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v7

    sget-object v10, Lorg/apache/ignite/configuration/DeploymentMode;->CONTINUOUS:Lorg/apache/ignite/configuration/DeploymentMode;

    if-ne v7, v10, :cond_2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->className()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->existingDeployedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->userVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->userVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 839
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->onUndeployScheduled()V

    .line 841
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 842
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Deployment was scheduled for undeploy: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 845
    :cond_3
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v10

    add-long v2, v10, v8

    .line 848
    .local v2, "endTime":J
    move-object v6, v0

    .line 850
    .local v6, "undep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    const-wide/16 v10, 0x0

    cmp-long v7, v2, v10

    if-lez v7, :cond_2

    .line 851
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->timeout()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v7

    new-instance v10, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$3;

    invoke-direct {v10, p0, v6, v2, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$3;-><init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;J)V

    invoke-virtual {v7, v10}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    goto/16 :goto_0

    .line 901
    .end local v0    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    .end local v1    # "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .end local v2    # "endTime":J
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "undep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    .end local v8    # "undeployTimeout":J
    :cond_4
    return-void
.end method

.method private createNewDeployment(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;Z)Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    .locals 22
    .param p1, "meta"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;
    .param p2, "isCache"    # Z

    .prologue
    .line 950
    sget-boolean v5, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 952
    :cond_0
    sget-boolean v5, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->parentLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 954
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ignite/lang/IgniteUuid;->fromUuid(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    .line 958
    .local v3, "ldrId":Lorg/apache/ignite/lang/IgniteUuid;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->deploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/configuration/DeploymentMode;->CONTINUOUS:Lorg/apache/ignite/configuration/DeploymentMode;

    if-eq v5, v6, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->participants()Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_8

    .line 962
    :cond_2
    new-instance v2, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->userVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->deploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    if-eqz v8, :cond_3

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->senderNodeId()Ljava/util/UUID;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->comm:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v12}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkTimeout()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v15}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v15

    invoke-virtual {v15}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPeerClassLoadingLocalClassPathExclude()[Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPeerClassLoadingMissedResourcesCacheSize()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->deploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v17

    sget-object v18, Lorg/apache/ignite/configuration/DeploymentMode;->CONTINUOUS:Lorg/apache/ignite/configuration/DeploymentMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v17, 0x1

    :goto_1
    const/16 v18, 0x0

    invoke-direct/range {v2 .. v18}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/configuration/DeploymentMode;ZLorg/apache/ignite/internal/GridKernalContext;Ljava/lang/ClassLoader;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/UUID;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;JLorg/apache/ignite/IgniteLogger;[Ljava/lang/String;IZZ)V

    .line 979
    .local v2, "clsLdr":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->participants()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 980
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->participants()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 981
    .local v20, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/UUID;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v2, v5, v6}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->register(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;)V

    goto :goto_2

    .line 962
    .end local v2    # "clsLdr":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;
    .end local v20    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    .end local v21    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    goto :goto_0

    :cond_4
    const/16 v17, 0x0

    goto :goto_1

    .line 983
    .restart local v2    # "clsLdr":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 984
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Created class loader in CONTINUOUS mode or without participants [ldr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", meta="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1017
    :cond_6
    :goto_3
    new-instance v4, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->deploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->userVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->alias()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v5, p0

    move-object v7, v2

    move-object v8, v3

    invoke-direct/range {v4 .. v10}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;-><init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;Lorg/apache/ignite/configuration/DeploymentMode;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    .local v4, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1021
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Created new deployment: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1023
    :cond_7
    if-eqz p2, :cond_b

    .line 1024
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->cache:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->userVersion()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v5, v6, v7}, Lorg/apache/ignite/internal/util/typedef/F;->addIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    .line 1026
    .local v19, "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    sget-boolean v5, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->$assertionsDisabled:Z

    if-nez v5, :cond_a

    if-nez v19, :cond_a

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 988
    .end local v2    # "clsLdr":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;
    .end local v4    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    .end local v19    # "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    :cond_8
    sget-boolean v5, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->$assertionsDisabled:Z

    if-nez v5, :cond_9

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->deploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/configuration/DeploymentMode;->SHARED:Lorg/apache/ignite/configuration/DeploymentMode;

    if-eq v5, v6, :cond_9

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 993
    :cond_9
    new-instance v2, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->userVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->deploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->participants()Ljava/util/Map;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->comm:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkTimeout()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v14}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v14

    invoke-virtual {v14}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPeerClassLoadingLocalClassPathExclude()[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v15}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v15

    invoke-virtual {v15}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPeerClassLoadingMissedResourcesCacheSize()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v2 .. v17}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/configuration/DeploymentMode;ZLorg/apache/ignite/internal/GridKernalContext;Ljava/lang/ClassLoader;Ljava/util/Map;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;JLorg/apache/ignite/IgniteLogger;[Ljava/lang/String;IZZ)V

    .line 1009
    .restart local v2    # "clsLdr":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1010
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Created classloader in SHARED mode with participants [ldr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", meta="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1028
    .restart local v4    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    .restart local v19    # "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    :cond_a
    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1030
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1031
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Added deployment to cache: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->cache:Ljava/util/Map;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1034
    .end local v19    # "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    :cond_b
    return-object v4
.end method

.method private hasAnyParticipant(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;Ljava/util/Map;)Z
    .locals 4
    .param p1, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 604
    .local p2, "participants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 606
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 607
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {p1, v2, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->hasParticipant(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 608
    const/4 v2, 0x1

    .line 611
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isDeadClassLoader(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;)Z
    .locals 3
    .param p1, "meta"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;

    .prologue
    .line 737
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 739
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->deadClsLdrs:Ljava/util/Collection;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 740
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 741
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring request for obsolete class loader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 743
    :cond_1
    const/4 v0, 0x1

    .line 746
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recordUndeployed(Ljava/util/UUID;Ljava/util/Collection;)V
    .locals 3
    .param p1, "nodeId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 727
    .local p2, "undeployed":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 728
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    .line 729
    .local v0, "d":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->recordUndeployed(Ljava/util/UUID;)V

    goto :goto_0

    .line 730
    .end local v0    # "d":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method


# virtual methods
.method public addParticipants(Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 570
    .local p1, "allParticipants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    .local p2, "addedParticipants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;

    monitor-enter v8

    .line 571
    :try_start_0
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->cache:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 572
    .local v2, "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    .line 573
    .local v1, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->undeployed()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->pendingUndeploy()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->deployMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v7

    sget-object v9, Lorg/apache/ignite/configuration/DeploymentMode;->CONTINUOUS:Lorg/apache/ignite/configuration/DeploymentMode;

    if-eq v7, v9, :cond_1

    .line 576
    invoke-direct {p0, v1, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->hasAnyParticipant(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;Ljava/util/Map;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 577
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 578
    .local v0, "added":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/UUID;

    .line 580
    .local v6, "nodeId":Ljava/util/UUID;
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 583
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v1, v6, v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->hasParticipant(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v1, v6, v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->addParticipant(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 585
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 586
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Explicitly added participant [dep="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", nodeId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ldrId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 593
    .end local v0    # "added":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    .end local v1    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    .end local v2    # "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "nodeId":Ljava/util/UUID;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_3
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 594
    return-void
.end method

.method public bridge synthetic explicitDeploy(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStoreAdapter;->explicitDeploy(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v0

    return-object v0
.end method

.method public explicitUndeploy(Ljava/util/UUID;Ljava/lang/String;)V
    .locals 9
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "rsrcName"    # Ljava/lang/String;

    .prologue
    .line 905
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 907
    .local v4, "undeployed":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;

    monitor-enter v6

    .line 908
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->cache:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 909
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 911
    .local v1, "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 912
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    .line 915
    .local v0, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->hasName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 916
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->undeployed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 917
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->undeploy()V

    .line 919
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->onRemoved()V

    .line 922
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 924
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 926
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 927
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Undeployed per-version class loader: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    .line 934
    .end local v0    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 935
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 937
    .end local v1    # "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .end local v2    # "i1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;>;"
    .end local v3    # "i2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v2    # "i1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;>;"
    :cond_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 939
    const/4 v5, 0x0

    invoke-direct {p0, v5, v4}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->recordUndeployed(Ljava/util/UUID;Ljava/util/Collection;)V

    .line 940
    return-void
.end method

.method public getDeployment(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .locals 23
    .param p1, "meta"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 257
    sget-boolean v18, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->$assertionsDisabled:Z

    if-nez v18, :cond_0

    if-nez p1, :cond_0

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 259
    :cond_0
    sget-boolean v18, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->$assertionsDisabled:Z

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v18

    if-nez v18, :cond_1

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 262
    :cond_1
    sget-boolean v18, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->$assertionsDisabled:Z

    if-nez v18, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v18

    if-nez v18, :cond_2

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 263
    :cond_2
    sget-boolean v18, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->$assertionsDisabled:Z

    if-nez v18, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->senderNodeId()Ljava/util/UUID;

    move-result-object v18

    if-nez v18, :cond_3

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 264
    :cond_3
    sget-boolean v18, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->$assertionsDisabled:Z

    if-nez v18, :cond_4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->sequenceNumber()J

    move-result-wide v18

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-gez v18, :cond_4

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 265
    :cond_4
    sget-boolean v18, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->$assertionsDisabled:Z

    if-nez v18, :cond_5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->parentLoader()Ljava/lang/ClassLoader;

    move-result-object v18

    if-eqz v18, :cond_5

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 267
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Starting to peer-load class based on deployment metadata: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 270
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->participants()Ljava/util/Map;

    move-result-object v18

    if-nez v18, :cond_d

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->className()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->checkLoadRemoteClass(Ljava/lang/String;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;)Z

    move-result v18

    if-nez v18, :cond_d

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Skipping deployment check as remote node does not have required class: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 274
    :cond_7
    const/4 v6, 0x0

    .line 563
    :cond_8
    :goto_0
    return-object v6

    .line 507
    .local v6, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    .local v8, "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .local v9, "depsToCheck":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .local v12, "i$":Ljava/util/Iterator;
    :cond_9
    const/16 v17, 0x0

    .line 509
    .local v17, "retry":Z
    :try_start_0
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_a
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    .line 511
    .local v5, "d":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->senderNodeId()Ljava/util/UUID;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->hasParticipant(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v18

    if-eqz v18, :cond_39

    .line 512
    move-object v6, v5

    .line 514
    const/16 v17, 0x0

    .line 525
    .end local v5    # "d":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    :cond_b
    if-eqz v17, :cond_3a

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Retrying due to concurrency issues: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 530
    :cond_c
    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 278
    .end local v6    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    .end local v8    # "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .end local v9    # "depsToCheck":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v17    # "retry":Z
    :cond_d
    const/4 v9, 0x0

    .line 280
    .restart local v9    # "depsToCheck":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    const/4 v6, 0x0

    .line 282
    .restart local v6    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 284
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->isDeadClassLoader(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 285
    const/4 v5, 0x0

    monitor-exit v19

    move-object v6, v5

    goto :goto_0

    .line 287
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->participants()Ljava/util/Map;

    move-result-object v18

    if-eqz v18, :cond_15

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->participants()Ljava/util/Map;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_15

    .line 288
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    .line 290
    .local v15, "participants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->participants()Ljava/util/Map;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_f
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 292
    .local v11, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v18

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 294
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->deploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v18

    sget-object v20, Lorg/apache/ignite/configuration/DeploymentMode;->CONTINUOUS:Lorg/apache/ignite/configuration/DeploymentMode;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_f

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Local node is in participants (most probably, GridConfiguration.getPeerClassLoadingLocalClassPathExclude() is not used properly [locNodeId="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", meta="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x5d

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    .line 395
    .end local v11    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "participants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    :catchall_0
    move-exception v18

    :goto_3
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v18

    .line 303
    .restart local v11    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v15    # "participants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    :cond_10
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v20

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/UUID;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v18

    if-eqz v18, :cond_f

    .line 304
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 307
    .end local v11    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    :cond_11
    invoke-interface {v15}, Ljava/util/Map;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_13

    .line 309
    new-instance v14, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;-><init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    .end local p1    # "meta":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;
    .local v14, "meta":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;
    :try_start_3
    invoke-virtual {v14, v15}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->participants(Ljava/util/Map;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_40

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Created new meta with updated participants: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-object/from16 p1, v14

    .line 333
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "meta":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;
    .end local v15    # "participants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    .restart local p1    # "meta":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;
    :cond_12
    :goto_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->cache:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->userVersion()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 335
    .restart local v8    # "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    if-eqz v8, :cond_22

    .line 336
    sget-boolean v18, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->$assertionsDisabled:Z

    if-nez v18, :cond_17

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_17

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 317
    .end local v8    # "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v15    # "participants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_14

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "All participants has gone: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 322
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->deploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v18

    sget-object v20, Lorg/apache/ignite/configuration/DeploymentMode;->CONTINUOUS:Lorg/apache/ignite/configuration/DeploymentMode;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_12

    .line 323
    const/4 v5, 0x0

    monitor-exit v19

    move-object v6, v5

    goto/16 :goto_0

    .line 326
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "participants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->senderNodeId()Ljava/util/UUID;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v18

    if-nez v18, :cond_12

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_16

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Sender node has gone: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 330
    :cond_16
    const/4 v5, 0x0

    monitor-exit v19

    move-object v6, v5

    goto/16 :goto_0

    .line 338
    .restart local v8    # "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    :cond_17
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_18
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    .line 339
    .restart local v5    # "d":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->senderNodeId()Ljava/util/UUID;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->hasParticipant(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v18

    if-nez v18, :cond_19

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->senderNodeId()Ljava/util/UUID;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 342
    :cond_19
    move-object v6, v5

    .line 348
    .end local v5    # "d":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    :cond_1a
    if-nez v6, :cond_20

    .line 349
    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->checkRedeploy(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;)V

    .line 353
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v12

    move-object v10, v9

    .end local v9    # "depsToCheck":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .local v10, "depsToCheck":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    :cond_1b
    :goto_5
    :try_start_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    .line 354
    .restart local v5    # "d":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->pendingUndeploy()Z

    move-result v18

    if-nez v18, :cond_3f

    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->undeployed()Z

    move-result v18

    if-nez v18, :cond_3f

    .line 355
    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->participants()Ljava/util/Map;

    move-result-object v16

    .line 357
    .local v16, "parties":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    if-eqz v16, :cond_1d

    .line 358
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->senderNodeId()Ljava/util/UUID;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/lang/IgniteUuid;

    .line 360
    .local v13, "ldrId":Lorg/apache/ignite/lang/IgniteUuid;
    if-eqz v13, :cond_1d

    .line 361
    sget-boolean v18, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->$assertionsDisabled:Z

    if-nez v18, :cond_1c

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1c

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 395
    .end local v5    # "d":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    .end local v13    # "ldrId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v16    # "parties":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    :catchall_1
    move-exception v18

    move-object v9, v10

    .end local v10    # "depsToCheck":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .restart local v9    # "depsToCheck":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    goto/16 :goto_3

    .line 363
    .end local v9    # "depsToCheck":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .restart local v5    # "d":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    .restart local v10    # "depsToCheck":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .restart local v13    # "ldrId":Lorg/apache/ignite/lang/IgniteUuid;
    .restart local v16    # "parties":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Skipping deployment (loaders on remote node are different) [dep="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", meta="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x5d

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 371
    .end local v13    # "ldrId":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_1d
    if-nez v10, :cond_3e

    .line 372
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 374
    .end local v10    # "depsToCheck":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .restart local v9    # "depsToCheck":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    :goto_6
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_1e

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Adding deployment to check: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 377
    :cond_1e
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v16    # "parties":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    :goto_7
    move-object v10, v9

    .line 379
    .end local v9    # "depsToCheck":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .restart local v10    # "depsToCheck":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    goto/16 :goto_5

    .line 382
    .end local v5    # "d":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    :cond_1f
    if-nez v10, :cond_3d

    .line 383
    const/16 v18, 0x0

    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->createNewDeployment(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;Z)Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    move-result-object v6

    .line 385
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v9, v10

    .line 395
    .end local v10    # "depsToCheck":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .restart local v9    # "depsToCheck":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    :cond_20
    :goto_8
    :try_start_8
    monitor-exit v19
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 397
    if-eqz v6, :cond_23

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_21

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Found SHARED or CONTINUOUS deployment after first check: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 402
    :cond_21
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->className()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->alias()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->deployedClass(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 404
    .local v4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v4, :cond_8

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to load peer class (ignore if class got undeployed during preloading) [alias="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->alias()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", dep="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x5d

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 408
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 390
    .end local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_22
    :try_start_9
    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->checkRedeploy(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;)V

    .line 393
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->createNewDeployment(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;Z)Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v6

    goto/16 :goto_8

    .line 414
    :cond_23
    sget-boolean v18, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->$assertionsDisabled:Z

    if-nez v18, :cond_24

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->parentLoader()Ljava/lang/ClassLoader;

    move-result-object v18

    if-eqz v18, :cond_24

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 415
    :cond_24
    sget-boolean v18, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->$assertionsDisabled:Z

    if-nez v18, :cond_25

    if-nez v9, :cond_25

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 416
    :cond_25
    sget-boolean v18, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->$assertionsDisabled:Z

    if-nez v18, :cond_26

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_26

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 425
    :cond_26
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_27
    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    .line 428
    .restart local v5    # "d":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->className()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->alias()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->deployedClass(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 430
    .restart local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_2b

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 432
    :try_start_a
    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->undeployed()Z

    move-result v18

    if-nez v18, :cond_2a

    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->pendingUndeploy()Z

    move-result v18

    if-nez v18, :cond_2a

    .line 433
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->addParticipant(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;)Z

    move-result v18

    if-nez v18, :cond_28

    .line 434
    const/4 v6, 0x0

    monitor-exit v19

    goto/16 :goto_0

    .line 442
    .end local v6    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    :catchall_2
    move-exception v18

    monitor-exit v19
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v18

    .line 436
    .restart local v6    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    :cond_28
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_29

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Acquired deployment after verifying it\'s availability on existing nodes [depCls="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", dep="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", meta="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x5d

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 440
    :cond_29
    monitor-exit v19

    move-object v6, v5

    goto/16 :goto_0

    .line 442
    :cond_2a
    monitor-exit v19
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_9

    .line 444
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_27

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Deployment cannot be reused (class does not exist on participating nodes) [dep="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", meta="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x5d

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 452
    .end local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "d":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    :cond_2c
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2d
    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_36

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    .line 456
    .restart local v5    # "d":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->participants()Ljava/util/Map;

    move-result-object v18

    if-nez v18, :cond_2e

    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->sampleClassName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->checkLoadRemoteClass(Ljava/lang/String;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;)Z

    move-result v18

    if-eqz v18, :cond_35

    .line 457
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 458
    :try_start_c
    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->undeployed()Z

    move-result v18

    if-nez v18, :cond_2f

    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->pendingUndeploy()Z

    move-result v18

    if-eqz v18, :cond_30

    .line 459
    :cond_2f
    monitor-exit v19

    goto :goto_a

    .line 470
    .end local v6    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    :catchall_3
    move-exception v18

    monitor-exit v19
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v18

    .line 463
    .restart local v6    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    :cond_30
    :try_start_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->addParticipant(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;)Z

    move-result v18

    if-nez v18, :cond_32

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_31

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to add participant to deployment [meta="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", dep="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x5d

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 468
    :cond_31
    const/4 v6, 0x0

    monitor-exit v19

    goto/16 :goto_0

    .line 470
    :cond_32
    monitor-exit v19
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 472
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->className()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->alias()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->deployedClass(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 474
    .local v7, "depCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v7, :cond_33

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to peer load class after loading it as a resource [alias="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->alias()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", dep="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x5d

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 478
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 481
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_34

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Acquired deployment class after verifying other class availability on sender node [depCls="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", rndCls="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->sampleClassName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", sampleClsName="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->sampleClassName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", meta="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x5d

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    :cond_34
    move-object v6, v5

    .line 486
    goto/16 :goto_0

    .line 488
    .end local v7    # "depCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_2d

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Deployment cannot be reused (random class could not be loaded from sender node) [dep="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", meta="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x5d

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 493
    .end local v5    # "d":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 494
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_37

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "None of the existing class-loaders fits (will try to create a new one): "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 498
    :cond_37
    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->isDeadClassLoader(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;)Z

    move-result v18

    if-eqz v18, :cond_38

    .line 499
    const/4 v5, 0x0

    monitor-exit v19

    move-object v6, v5

    goto/16 :goto_0

    .line 502
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->cache:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->userVersion()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    check-cast v8, Ljava/util/List;

    .line 504
    .restart local v8    # "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    if-eqz v8, :cond_3c

    .line 505
    sget-boolean v18, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->$assertionsDisabled:Z

    if-nez v18, :cond_9

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_9

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 549
    .end local v8    # "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    :catchall_4
    move-exception v18

    monitor-exit v19
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v18

    .line 521
    .restart local v5    # "d":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    .restart local v8    # "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .restart local v17    # "retry":Z
    :cond_39
    :try_start_f
    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->pendingUndeploy()Z

    move-result v18

    if-nez v18, :cond_a

    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->undeployed()Z

    move-result v18

    if-nez v18, :cond_a

    invoke-interface {v9, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 522
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 533
    .end local v5    # "d":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    :cond_3a
    if-nez v6, :cond_3b

    .line 535
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->createNewDeployment(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;Z)Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    move-result-object v6

    .line 537
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_3b

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Adding new deployment within second check [dep="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", meta="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x5d

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 549
    .end local v17    # "retry":Z
    :cond_3b
    :goto_b
    monitor-exit v19
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 551
    if-eqz v6, :cond_8

    .line 553
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->className()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->alias()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->deployedClass(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 555
    .restart local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v4, :cond_8

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to load peer class (ignore if class got undeployed during preloading) [alias="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->alias()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", dep="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x5d

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 559
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 544
    .end local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3c
    const/16 v18, 0x1

    :try_start_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->createNewDeployment(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;Z)Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    move-result-object v6

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_3b

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Created new deployment within second check [dep="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", meta="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x5d

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto/16 :goto_b

    .line 395
    .end local v8    # "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .end local p1    # "meta":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;
    .restart local v14    # "meta":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;
    .restart local v15    # "participants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    :catchall_5
    move-exception v18

    move-object/from16 p1, v14

    .end local v14    # "meta":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;
    .restart local p1    # "meta":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;
    goto/16 :goto_3

    .end local v9    # "depsToCheck":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .end local v15    # "participants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    .restart local v8    # "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .restart local v10    # "depsToCheck":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    :cond_3d
    move-object v9, v10

    .end local v10    # "depsToCheck":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .restart local v9    # "depsToCheck":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    goto/16 :goto_8

    .end local v9    # "depsToCheck":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .restart local v5    # "d":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    .restart local v10    # "depsToCheck":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .restart local v16    # "parties":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    :cond_3e
    move-object v9, v10

    .end local v10    # "depsToCheck":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .restart local v9    # "depsToCheck":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    goto/16 :goto_6

    .end local v9    # "depsToCheck":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .end local v16    # "parties":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    .restart local v10    # "depsToCheck":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    :cond_3f
    move-object v9, v10

    .end local v10    # "depsToCheck":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .restart local v9    # "depsToCheck":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    goto/16 :goto_7

    .end local v5    # "d":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    .end local v8    # "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .end local p1    # "meta":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;
    .restart local v14    # "meta":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;
    .restart local v15    # "participants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    :cond_40
    move-object/from16 p1, v14

    .end local v14    # "meta":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;
    .restart local p1    # "meta":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;
    goto/16 :goto_4
.end method

.method public getDeployment(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .locals 6
    .param p1, "ldrId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 246
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 247
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->flat(Ljava/lang/Iterable;)Lorg/apache/ignite/internal/util/lang/GridIterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v4, 0x0

    new-instance v5, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$2;

    invoke-direct {v5, p0, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$2;-><init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;Lorg/apache/ignite/lang/IgniteUuid;)V

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lorg/apache/ignite/internal/util/typedef/F;->find(Ljava/lang/Iterable;Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    monitor-exit v1

    return-object v0

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDeployments()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 235
    .local v1, "deps":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;

    monitor-enter v6

    .line 236
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->cache:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 237
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    .line 238
    .local v0, "d":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 239
    .end local v0    # "d":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    return-object v1
.end method

.method public onKernalStart()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 174
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 176
    .local v6, "undeployed":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;

    monitor-enter v8

    .line 177
    :try_start_0
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->cache:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 178
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 180
    .local v1, "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 181
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    .line 183
    .local v0, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->getParticipantNodeIds()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/UUID;

    .line 184
    .local v5, "nodeId":Ljava/util/UUID;
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    if-nez v7, :cond_2

    .line 185
    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->removeParticipant(Ljava/util/UUID;)V

    goto :goto_2

    .line 213
    .end local v0    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    .end local v1    # "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "i1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;>;"
    .end local v4    # "i2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .end local v5    # "nodeId":Ljava/util/UUID;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 187
    .restart local v0    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    .restart local v1    # "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "i1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;>;"
    .restart local v4    # "i2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->hasParticipants()Z

    move-result v7

    if-nez v7, :cond_5

    .line 188
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->deployMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v7

    sget-object v9, Lorg/apache/ignite/configuration/DeploymentMode;->SHARED:Lorg/apache/ignite/configuration/DeploymentMode;

    if-ne v7, v9, :cond_4

    .line 189
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->undeployed()Z

    move-result v7

    if-nez v7, :cond_1

    .line 190
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->undeploy()V

    .line 193
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 195
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->onRemoved()V

    .line 197
    invoke-interface {v6, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 200
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Undeployed class loader as there are no participating nodes: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 203
    :cond_4
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 204
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Preserving deployment without node participants: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 206
    :cond_5
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 207
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Keeping deployment as it still has participants: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 210
    .end local v0    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 211
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 213
    .end local v1    # "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .end local v4    # "i2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    :cond_7
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    const/4 v7, 0x0

    invoke-direct {p0, v7, v6}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->recordUndeployed(Ljava/util/UUID;Ljava/util/Collection;)V

    .line 217
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 218
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Registered deployment discovery listener: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 219
    :cond_8
    return-void
.end method

.method public onKernalStop()V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z

    .line 226
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistered deployment discovery listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 229
    :cond_0
    return-void
.end method

.method public start()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$1;-><init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    .line 143
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/16 v2, 0xc

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xb

    aput v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;I[I)V

    .line 145
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->startInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 147
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 7

    .prologue
    .line 151
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 153
    .local v0, "cp":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;

    monitor-enter v6

    .line 154
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->cache:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 155
    .local v2, "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    .line 157
    .local v1, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->undeploy()V

    .line 159
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    .end local v1    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    .end local v2    # "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 162
    :cond_1
    :try_start_1
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->cache:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 163
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    .line 166
    .restart local v1    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->recordUndeployed(Ljava/util/UUID;)V

    goto :goto_1

    .line 168
    .end local v1    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 169
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->stopInfo()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 170
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1039
    const-class v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

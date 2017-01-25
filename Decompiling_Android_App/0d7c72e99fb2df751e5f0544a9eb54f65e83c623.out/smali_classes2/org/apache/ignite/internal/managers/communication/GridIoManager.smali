.class public Lorg/apache/ignite/internal/managers/communication/GridIoManager;
.super Lorg/apache/ignite/internal/managers/GridManagerAdapter;
.source "GridIoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/managers/communication/GridIoManager$8;,
        Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;,
        Lorg/apache/ignite/internal/managers/communication/GridIoManager$ConcurrentHashMap0;,
        Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;,
        Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;,
        Lorg/apache/ignite/internal/managers/communication/GridIoManager$ArrayListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/managers/GridManagerAdapter",
        "<",
        "Lorg/apache/ignite/spi/communication/CommunicationSpi",
        "<",
        "Ljava/io/Serializable;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final MAX_CLOSED_TOPICS:I = 0x2800


# instance fields
.field private affPool:Ljava/util/concurrent/ExecutorService;

.field private final busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

.field private final closedTopics:Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private commLsnr:Lorg/apache/ignite/spi/communication/CommunicationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/spi/communication/CommunicationListener",
            "<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field private final discoDelay:J

.field private discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

.field private final disconnectLsnrs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/managers/communication/GridDisconnectListener;",
            ">;"
        }
    .end annotation
.end field

.field private formatter:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

.field private final locNodeId:Ljava/util/UUID;

.field private final lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final lsnrMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/internal/managers/communication/GridMessageListener;",
            ">;"
        }
    .end annotation
.end field

.field private final marsh:Lorg/apache/ignite/marshaller/Marshaller;

.field private marshCachePool:Ljava/util/concurrent/ExecutorService;

.field private mgmtPool:Ljava/util/concurrent/ExecutorService;

.field private msgFactory:Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;

.field private final msgSetMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private p2pPool:Ljava/util/concurrent/ExecutorService;

.field private pubPool:Ljava/util/concurrent/ExecutorService;

.field private volatile started:Z

.field private stopping:Z

.field private sysPool:Ljava/util/concurrent/ExecutorService;

.field private utilityCachePool:Ljava/util/concurrent/ExecutorService;

.field private final waitMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lorg/jsr166/ConcurrentLinkedDeque8",
            "<",
            "Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 6
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    const/16 v1, 0x2800

    .line 139
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/ignite/spi/communication/CommunicationSpi;

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCommunicationSpi()Lorg/apache/ignite/spi/communication/CommunicationSpi;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/managers/GridManagerAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;[Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 62
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->lsnrMap:Ljava/util/concurrent/ConcurrentMap;

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->disconnectLsnrs:Ljava/util/Collection;

    .line 92
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->msgSetMap:Ljava/util/concurrent/ConcurrentMap;

    .line 102
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->waitMap:Ljava/util/concurrent/ConcurrentMap;

    .line 112
    new-instance v0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    .line 115
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 121
    new-instance v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;

    const/high16 v3, 0x3f400000    # 0.75f

    const/16 v4, 0x100

    sget-object v5, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->PER_SEGMENT_Q_OPTIMIZED_RMV:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;-><init>(IIFILorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->closedTopics:Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;

    .line 141
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->locNodeId:Ljava/util/UUID;

    .line 143
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDiscoveryStartupDelay()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->discoDelay:J

    .line 145
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/managers/communication/GridIoManager;Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Lorg/apache/ignite/lang/IgniteRunnable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/managers/communication/GridIoMessage;
    .param p3, "x3"    # Lorg/apache/ignite/lang/IgniteRunnable;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->onMessage0(Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Lorg/apache/ignite/lang/IgniteRunnable;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->lsnrMap:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/apache/ignite/internal/managers/communication/GridIoManager;Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Ljava/util/UUID;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;
    .param p1, "x1"    # Lorg/apache/ignite/internal/managers/communication/GridIoMessage;
    .param p2, "x2"    # Ljava/util/UUID;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->processRegularMessage0(Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Ljava/util/UUID;)V

    return-void
.end method

.method static synthetic access$1700(Lorg/apache/ignite/internal/managers/communication/GridIoManager;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;
    .param p1, "x1"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
    .param p2, "x2"    # Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->unwindMessageSet(Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    return-void
.end method

.method static synthetic access$1800(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->disconnectLsnrs:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/marshaller/Marshaller;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->msgFactory:Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->waitMap:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->msgSetMap:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->closedTopics:Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;

    return-object v0
.end method

.method private onMessage0(Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Lorg/apache/ignite/lang/IgniteRunnable;)V
    .locals 8
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Lorg/apache/ignite/internal/managers/communication/GridIoMessage;
    .param p3, "msgC"    # Lorg/apache/ignite/lang/IgniteRunnable;

    .prologue
    .line 436
    sget-boolean v5, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 437
    :cond_0
    sget-boolean v5, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-nez p2, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 439
    :cond_1
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 442
    :try_start_0
    iget-boolean v5, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->stopping:Z

    if-eqz v5, :cond_3

    .line 443
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 444
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received communication message while stopping (will ignore) [nodeId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", msg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 522
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    .line 524
    :goto_0
    return-void

    .line 451
    :cond_3
    :try_start_1
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    .line 453
    .local v2, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v2, :cond_5

    .line 454
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 455
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring message from dead node [senderId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", msg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 522
    :cond_4
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    .line 460
    :cond_5
    :try_start_2
    invoke-virtual {p2}, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->topic()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    .line 461
    invoke-virtual {p2}, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->topicOrdinal()I

    move-result v4

    .line 463
    .local v4, "topicOrd":I
    if-ltz v4, :cond_8

    invoke-static {v4}, Lorg/apache/ignite/internal/GridTopic;->fromOrdinal(I)Lorg/apache/ignite/internal/GridTopic;

    move-result-object v5

    :goto_1
    invoke-virtual {p2, v5}, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->topic(Ljava/lang/Object;)V

    .line 466
    .end local v4    # "topicOrd":I
    :cond_6
    iget-boolean v5, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->started:Z

    if-nez v5, :cond_b

    .line 467
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 470
    :try_start_3
    iget-boolean v5, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->started:Z

    if-nez v5, :cond_a

    .line 472
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 473
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding message to waiting list [senderId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", msg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 476
    :cond_7
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->waitMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->newDeque()Lorg/apache/ignite/lang/IgniteCallable;

    move-result-object v6

    invoke-static {v5, p1, v6}, Lorg/apache/ignite/internal/util/typedef/F;->addIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 479
    .local v1, "list":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;>;"
    sget-boolean v5, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v5, :cond_9

    if-nez v1, :cond_9

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 487
    .end local v1    # "list":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;>;"
    :catchall_0
    move-exception v5

    :try_start_4
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 518
    .end local v2    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :catch_0
    move-exception v0

    .line 519
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_5
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to process message (will ignore): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 522
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto/16 :goto_0

    .line 463
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v2    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .restart local v4    # "topicOrd":I
    :cond_8
    :try_start_6
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->topicBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;
    :try_end_6
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v5

    goto/16 :goto_1

    .line 481
    .end local v4    # "topicOrd":I
    .restart local v1    # "list":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;>;"
    :cond_9
    :try_start_7
    new-instance v5, Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;

    const/4 v6, 0x0

    invoke-direct {v5, p1, p2, p3, v6}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;-><init>(Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Lorg/apache/ignite/lang/IgniteRunnable;Lorg/apache/ignite/internal/managers/communication/GridIoManager$1;)V

    invoke-virtual {v1, v5}, Lorg/jsr166/ConcurrentLinkedDeque8;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 487
    :try_start_8
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_8
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 522
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto/16 :goto_0

    .line 487
    .end local v1    # "list":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;>;"
    :cond_a
    :try_start_9
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 494
    :cond_b
    invoke-virtual {p2}, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->policy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v3

    .line 496
    .local v3, "plc":Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    sget-object v5, Lorg/apache/ignite/internal/managers/communication/GridIoManager$8;->$SwitchMap$org$apache$ignite$internal$managers$communication$GridIoPolicy:[I

    invoke-virtual {v3}, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->ordinal()I

    move-result v6

    aget v5, v5, v6
    :try_end_9
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    packed-switch v5, :pswitch_data_0

    .line 522
    :goto_2
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto/16 :goto_0

    .line 498
    :pswitch_0
    :try_start_a
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->processP2PMessage(Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Lorg/apache/ignite/lang/IgniteRunnable;)V
    :try_end_a
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2

    .line 522
    .end local v2    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v3    # "plc":Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    :catchall_1
    move-exception v5

    iget-object v6, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v5

    .line 509
    .restart local v2    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .restart local v3    # "plc":Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    :pswitch_1
    :try_start_b
    invoke-virtual {p2}, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->isOrdered()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 510
    invoke-direct {p0, p1, p2, v3, p3}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->processOrderedMessage(Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/lang/IgniteRunnable;)V

    goto :goto_2

    .line 512
    :cond_c
    invoke-direct {p0, p1, p2, v3, p3}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->processRegularMessage(Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/lang/IgniteRunnable;)V
    :try_end_b
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_2

    .line 496
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private pool(Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)Ljava/util/concurrent/Executor;
    .locals 3
    .param p1, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    .prologue
    .line 533
    sget-object v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$8;->$SwitchMap$org$apache$ignite$internal$managers$communication$GridIoPolicy:[I

    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 556
    sget-boolean v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid communication policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 535
    :pswitch_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->p2pPool:Ljava/util/concurrent/ExecutorService;

    .line 559
    :goto_0
    return-object v0

    .line 537
    :pswitch_1
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->sysPool:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    .line 539
    :pswitch_2
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->pubPool:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    .line 541
    :pswitch_3
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->mgmtPool:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    .line 543
    :pswitch_4
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->affPool:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    .line 546
    :pswitch_5
    sget-boolean v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->utilityCachePool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Utility cache pool is not configured."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 548
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->utilityCachePool:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    .line 551
    :pswitch_6
    sget-boolean v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->marshCachePool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Marshaller cache pool is not configured."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 553
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->marshCachePool:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    .line 559
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 533
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private processOrderedMessage(Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/lang/IgniteRunnable;)V
    .locals 30
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Lorg/apache/ignite/internal/managers/communication/GridIoMessage;
    .param p3, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .param p4, "msgC"    # Lorg/apache/ignite/lang/IgniteRunnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 680
    sget-boolean v6, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p2, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 682
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->timeout()J

    move-result-wide v10

    .line 683
    .local v10, "timeout":J
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->skipOnTimeout()Z

    move-result v12

    .line 685
    .local v12, "skipOnTimeout":Z
    const/16 v23, 0x0

    .line 689
    .local v23, "isNew":Z
    const/4 v5, 0x0

    .line 692
    .local v5, "set":Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->msgSetMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->topic()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/concurrent/ConcurrentMap;

    .line 694
    .local v25, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;>;"
    if-nez v25, :cond_1

    .line 695
    new-instance v5, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;

    .end local v5    # "set":Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->topic()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v9, p1

    move-object/from16 v13, p2

    invoke-direct/range {v5 .. v13}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;-><init>(Lorg/apache/ignite/internal/managers/communication/GridIoManager;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;Ljava/lang/Object;Ljava/util/UUID;JZLorg/apache/ignite/internal/managers/communication/GridIoMessage;)V

    .line 697
    .restart local v5    # "set":Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
    new-instance v25, Lorg/apache/ignite/internal/managers/communication/GridIoManager$ConcurrentHashMap0;

    .end local v25    # "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;>;"
    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-direct {v0, v6}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$ConcurrentHashMap0;-><init>(Lorg/apache/ignite/internal/managers/communication/GridIoManager$1;)V

    .line 699
    .restart local v25    # "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;>;"
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->msgSetMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->topic()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, v25

    invoke-interface {v6, v7, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/concurrent/ConcurrentMap;

    .line 704
    .local v28, "old":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;>;"
    if-eqz v28, :cond_3

    .line 705
    move-object/from16 v25, v28

    .line 714
    .end local v28    # "old":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;>;"
    :cond_1
    const/16 v29, 0x0

    .line 716
    .local v29, "rmv":Z
    monitor-enter v25

    .line 717
    :try_start_0
    invoke-interface/range {v25 .. v25}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 718
    const/16 v29, 0x1

    .line 735
    :cond_2
    monitor-exit v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 737
    if-eqz v29, :cond_7

    .line 738
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->msgSetMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->topic()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, v25

    invoke-interface {v6, v7, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 707
    .end local v29    # "rmv":Z
    .restart local v28    # "old":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;>;"
    :cond_3
    const/16 v23, 0x1

    .line 749
    .end local v28    # "old":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;>;"
    :goto_1
    if-eqz v23, :cond_c

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    if-nez v6, :cond_c

    .line 750
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 751
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Message is ignored as sender has left the grid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 753
    :cond_4
    sget-boolean v6, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v6, :cond_a

    if-nez v25, :cond_a

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 720
    .restart local v29    # "rmv":Z
    :cond_5
    :try_start_1
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;

    move-object v5, v0

    .line 722
    if-nez v5, :cond_2

    .line 723
    new-instance v13, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->topic()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v14, p0

    move-object/from16 v15, p3

    move-object/from16 v17, p1

    move-wide/from16 v18, v10

    move/from16 v20, v12

    move-object/from16 v21, p2

    invoke-direct/range {v13 .. v21}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;-><init>(Lorg/apache/ignite/internal/managers/communication/GridIoManager;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;Ljava/lang/Object;Ljava/util/UUID;JZLorg/apache/ignite/internal/managers/communication/GridIoMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .end local v5    # "set":Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
    .local v13, "set":Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
    :try_start_2
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v13}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;

    .line 727
    .local v27, "old":Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
    sget-boolean v6, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v6, :cond_6

    if-eqz v27, :cond_6

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 735
    .end local v27    # "old":Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
    :catchall_0
    move-exception v6

    move-object v5, v13

    .end local v13    # "set":Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
    .restart local v5    # "set":Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
    :goto_2
    :try_start_3
    monitor-exit v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v6

    .line 729
    .end local v5    # "set":Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
    .restart local v13    # "set":Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
    .restart local v27    # "old":Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
    :cond_6
    const/16 v23, 0x1

    .line 732
    :try_start_4
    monitor-exit v25
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v5, v13

    .end local v13    # "set":Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
    .restart local v5    # "set":Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
    goto/16 :goto_1

    .line 740
    .end local v27    # "old":Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
    :cond_7
    sget-boolean v6, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v6, :cond_8

    if-nez v5, :cond_8

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 741
    :cond_8
    sget-boolean v6, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v6, :cond_9

    if-eqz v23, :cond_9

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 743
    :cond_9
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->add(Lorg/apache/ignite/internal/managers/communication/GridIoMessage;)V

    goto/16 :goto_1

    .line 757
    .end local v29    # "rmv":Z
    :cond_a
    monitor-enter v25

    .line 758
    :try_start_5
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    invoke-interface/range {v25 .. v25}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v29

    .line 761
    .restart local v29    # "rmv":Z
    monitor-exit v25
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 763
    if-eqz v29, :cond_b

    .line 764
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->msgSetMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->topic()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, v25

    invoke-interface {v6, v7, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 842
    .end local v29    # "rmv":Z
    :cond_b
    :goto_3
    return-void

    .line 761
    :catchall_1
    move-exception v6

    :try_start_6
    monitor-exit v25
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v6

    .line 769
    :cond_c
    if-eqz v23, :cond_d

    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->endTime()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v6, v6, v8

    if-eqz v6, :cond_d

    .line 770
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->timeout()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 772
    :cond_d
    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->reserved()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 774
    if-eqz p4, :cond_b

    .line 775
    invoke-interface/range {p4 .. p4}, Lorg/apache/ignite/lang/IgniteRunnable;->run()V

    goto :goto_3

    .line 780
    :cond_e
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->lsnrMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->topic()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    .line 782
    .local v24, "lsnr":Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    if-nez v24, :cond_13

    .line 783
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->closedTopics:Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->topic()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 784
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 785
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Message is ignored as it came for the closed topic: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 787
    :cond_f
    sget-boolean v6, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v6, :cond_10

    if-nez v25, :cond_10

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 789
    :cond_10
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->msgSetMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->topic()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, v25

    invoke-interface {v6, v7, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 799
    :cond_11
    :goto_4
    if-eqz p4, :cond_b

    .line 800
    invoke-interface/range {p4 .. p4}, Lorg/apache/ignite/lang/IgniteRunnable;->run()V

    goto/16 :goto_3

    .line 791
    :cond_12
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 794
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received message for unknown listener (messages will be kept until a listener is registered): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 805
    :cond_13
    if-nez p4, :cond_15

    .line 807
    sget-boolean v6, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v6, :cond_14

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->locNodeId:Ljava/util/UUID;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 809
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v5, v1}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->unwindMessageSet(Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    goto/16 :goto_3

    .line 814
    :cond_15
    move-object/from16 v26, v5

    .line 816
    .local v26, "msgSet0":Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
    new-instance v4, Lorg/apache/ignite/internal/managers/communication/GridIoManager$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    move-object/from16 v3, p4

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$6;-><init>(Lorg/apache/ignite/internal/managers/communication/GridIoManager;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;Lorg/apache/ignite/lang/IgniteRunnable;)V

    .line 832
    .local v4, "c":Ljava/lang/Runnable;
    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->pool(Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)Ljava/util/concurrent/Executor;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_7
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_3

    .line 834
    :catch_0
    move-exception v22

    .line 835
    .local v22, "e":Ljava/util/concurrent/RejectedExecutionException;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to process ordered message due to execution rejection. Increase the upper bound on executor service provided by corresponding configuration property. Will attempt to process message in the listener thread instead [msgPlc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-static {v6, v7, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 840
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_3

    .line 735
    .end local v4    # "c":Ljava/lang/Runnable;
    .end local v22    # "e":Ljava/util/concurrent/RejectedExecutionException;
    .end local v24    # "lsnr":Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    .end local v26    # "msgSet0":Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
    .restart local v29    # "rmv":Z
    :catchall_2
    move-exception v6

    goto/16 :goto_2
.end method

.method private processP2PMessage(Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Lorg/apache/ignite/lang/IgniteRunnable;)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Lorg/apache/ignite/internal/managers/communication/GridIoMessage;
    .param p3, "msgC"    # Lorg/apache/ignite/lang/IgniteRunnable;

    .prologue
    .line 574
    new-instance v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$4;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$4;-><init>(Lorg/apache/ignite/internal/managers/communication/GridIoManager;Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteRunnable;)V

    .line 599
    .local v0, "c":Ljava/lang/Runnable;
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->p2pPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :goto_0
    return-void

    .line 601
    :catch_0
    move-exception v1

    .line 602
    .local v1, "e":Ljava/util/concurrent/RejectedExecutionException;
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Failed to process P2P message due to execution rejection. Increase the upper bound on \'ExecutorService\' provided by \'GridConfiguration.getPeerClassLoadingThreadPoolSize()\'. Will attempt to process message in the listener thread instead."

    invoke-static {v2, v3, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 606
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private processRegularMessage(Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/lang/IgniteRunnable;)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Lorg/apache/ignite/internal/managers/communication/GridIoMessage;
    .param p3, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .param p4, "msgC"    # Lorg/apache/ignite/lang/IgniteRunnable;

    .prologue
    .line 622
    new-instance v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$5;

    invoke-direct {v0, p0, p2, p1, p4}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$5;-><init>(Lorg/apache/ignite/internal/managers/communication/GridIoManager;Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteRunnable;)V

    .line 638
    .local v0, "c":Ljava/lang/Runnable;
    :try_start_0
    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->pool(Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :goto_0
    return-void

    .line 640
    :catch_0
    move-exception v1

    .line 641
    .local v1, "e":Ljava/util/concurrent/RejectedExecutionException;
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Failed to process regular message due to execution rejection. Increase the upper bound on \'ExecutorService\' provided by \'GridConfiguration.getPublicThreadPoolSize()\'. Will attempt to process message in the listener thread instead."

    invoke-static {v2, v3, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 645
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private processRegularMessage0(Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Ljava/util/UUID;)V
    .locals 4
    .param p1, "msg"    # Lorg/apache/ignite/internal/managers/communication/GridIoMessage;
    .param p2, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 655
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->lsnrMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->topic()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    .line 657
    .local v0, "lsnr":Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    if-nez v0, :cond_0

    .line 665
    :goto_0
    return-void

    .line 660
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->message()Ljava/lang/Object;

    move-result-object v1

    .line 662
    .local v1, "obj":Ljava/lang/Object;
    sget-boolean v2, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 664
    :cond_1
    invoke-interface {v0, p2, v1}, Lorg/apache/ignite/internal/managers/communication/GridMessageListener;->onMessage(Ljava/util/UUID;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private send(Ljava/util/Collection;Ljava/lang/Object;ILorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;ZJZ)V
    .locals 15
    .param p2, "topic"    # Ljava/lang/Object;
    .param p3, "topicOrd"    # I
    .param p4, "msg"    # Lorg/apache/ignite/plugin/extensions/communication/Message;
    .param p5, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .param p6, "ordered"    # Z
    .param p7, "timeout"    # J
    .param p9, "skipOnTimeout"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Ljava/lang/Object;",
            "I",
            "Lorg/apache/ignite/plugin/extensions/communication/Message;",
            "Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;",
            "ZJZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1232
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1233
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p2, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1234
    :cond_1
    sget-boolean v3, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    if-nez p4, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1235
    :cond_2
    sget-boolean v3, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    if-nez p5, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1237
    :cond_3
    if-nez p6, :cond_4

    .line 1239
    sget-boolean v3, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v3, :cond_4

    const/4 v3, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->locNodeId:Ljava/util/UUID;

    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/F;->localNode(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p1

    invoke-static {v0, v3, v5}, Lorg/apache/ignite/internal/util/typedef/F;->find(Ljava/lang/Iterable;Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    const-string v5, "Internal Ignite code should never call the method with local node in a node list."

    invoke-direct {v3, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 1244
    :cond_4
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1245
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/cluster/ClusterNode;

    .local v4, "node":Lorg/apache/ignite/cluster/ClusterNode;
    move-object v3, p0

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v10, p7

    move/from16 v12, p9

    .line 1246
    invoke-direct/range {v3 .. v12}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;ILorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;ZJZ)V
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1252
    .end local v4    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v13    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 1253
    .local v2, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send message (nodes may have left the grid or TCP connection cannot be established due to firewall issues) [nodes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", topic="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", policy="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1248
    .end local v2    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    :cond_5
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1249
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send message to empty nodes collection [topic="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", policy="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1258
    :cond_6
    return-void
.end method

.method private send(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;ILorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;ZJZ)V
    .locals 13
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "topic"    # Ljava/lang/Object;
    .param p3, "topicOrd"    # I
    .param p4, "msg"    # Lorg/apache/ignite/plugin/extensions/communication/Message;
    .param p5, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .param p6, "ordered"    # Z
    .param p7, "timeout"    # J
    .param p9, "skipOnTimeout"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 898
    sget-boolean v3, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 899
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p2, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 900
    :cond_1
    sget-boolean v3, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    if-nez p4, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 901
    :cond_2
    sget-boolean v3, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    if-nez p5, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 903
    :cond_3
    new-instance v2, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;

    move-object/from16 v3, p5

    move-object v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    invoke-direct/range {v2 .. v10}, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;-><init>(Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;Ljava/lang/Object;ILorg/apache/ignite/plugin/extensions/communication/Message;ZJZ)V

    .line 905
    .local v2, "ioMsg":Lorg/apache/ignite/internal/managers/communication/GridIoMessage;
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->locNodeId:Ljava/util/UUID;

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 906
    sget-boolean v3, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v3, :cond_4

    sget-object v3, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->P2P_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-object/from16 v0, p5

    if-ne v0, v3, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 908
    :cond_4
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->commLsnr:Lorg/apache/ignite/spi/communication/CommunicationListener;

    .line 910
    .local v11, "commLsnr":Lorg/apache/ignite/spi/communication/CommunicationListener;
    if-nez v11, :cond_5

    .line 911
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    const-string v4, "Trying to send message when grid is not fully started."

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 913
    :cond_5
    if-eqz p6, :cond_6

    .line 914
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->locNodeId:Ljava/util/UUID;

    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-direct {p0, v3, v2, v0, v4}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->processOrderedMessage(Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/lang/IgniteRunnable;)V

    .line 932
    .end local v11    # "commLsnr":Lorg/apache/ignite/spi/communication/CommunicationListener;
    :goto_0
    return-void

    .line 916
    .restart local v11    # "commLsnr":Lorg/apache/ignite/spi/communication/CommunicationListener;
    :cond_6
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->locNodeId:Ljava/util/UUID;

    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->processRegularMessage0(Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Ljava/util/UUID;)V

    goto :goto_0

    .line 919
    .end local v11    # "commLsnr":Lorg/apache/ignite/spi/communication/CommunicationListener;
    :cond_7
    if-gez p3, :cond_8

    .line 920
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    invoke-interface {v3, p2}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->topicBytes([B)V

    .line 923
    :cond_8
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/spi/communication/CommunicationSpi;

    invoke-interface {v3, p1, v2}, Lorg/apache/ignite/spi/communication/CommunicationSpi;->sendMessage(Lorg/apache/ignite/cluster/ClusterNode;Ljava/io/Serializable;)V
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 925
    :catch_0
    move-exception v12

    .line 926
    .local v12, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send message (node may have left the grid or TCP connection cannot be established due to firewall issues) [node="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", topic="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", policy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v12}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private unwindMessageSet(Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V
    .locals 3
    .param p1, "msgSet"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
    .param p2, "lsnr"    # Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    .prologue
    .line 852
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->reserve()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 854
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->unwind(Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 857
    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->release()V

    .line 861
    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->changed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 862
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 863
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message set has not been changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 875
    :cond_1
    :goto_0
    return-void

    .line 857
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->release()V

    throw v0

    .line 869
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 870
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another thread owns reservation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addDisconnectListener(Lorg/apache/ignite/internal/managers/communication/GridDisconnectListener;)V
    .locals 1
    .param p1, "lsnr"    # Lorg/apache/ignite/internal/managers/communication/GridDisconnectListener;

    .prologue
    .line 1273
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->disconnectLsnrs:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1274
    return-void
.end method

.method public addMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V
    .locals 10
    .param p1, "topic"    # Ljava/lang/Object;
    .param p2, "lsnr"    # Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    .prologue
    .line 1289
    sget-boolean v8, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    if-nez p2, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 1290
    :cond_0
    sget-boolean v8, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    if-nez p1, :cond_1

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 1293
    :cond_1
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->closedTopics:Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;

    invoke-virtual {v8, p1}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 1298
    :cond_2
    :goto_0
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->lsnrMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    .line 1300
    .local v3, "lsnrs":Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    if-nez v3, :cond_4

    .line 1301
    move-object v3, p2

    .line 1326
    :cond_3
    :goto_1
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->msgSetMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 1328
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;>;"
    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    .line 1330
    .local v7, "msgSets":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;>;"
    :goto_2
    if-eqz v7, :cond_8

    .line 1331
    move-object v4, v3

    .line 1334
    .local v4, "lsnrs0":Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    :try_start_0
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;

    .line 1335
    .local v6, "msgSet":Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
    invoke-virtual {v6}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->policy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->pool(Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)Ljava/util/concurrent/Executor;

    move-result-object v8

    new-instance v9, Lorg/apache/ignite/internal/managers/communication/GridIoManager$7;

    invoke-direct {v9, p0, v6, v4}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$7;-><init>(Lorg/apache/ignite/internal/managers/communication/GridIoManager;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1343
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "msgSet":Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
    :catch_0
    move-exception v1

    .line 1344
    .local v1, "e":Ljava/util/concurrent/RejectedExecutionException;
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v9, "Failed to process delayed message due to execution rejection. Increase the upper bound on executor service provided in \'GridConfiguration.getPublicThreadPoolSize()\'). Will attempt to process message in the listener thread instead."

    invoke-static {v8, v9, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1348
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;

    .line 1349
    .restart local v6    # "msgSet":Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
    invoke-direct {p0, v6, p2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->unwindMessageSet(Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    goto :goto_4

    .line 1306
    .end local v1    # "e":Ljava/util/concurrent/RejectedExecutionException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "lsnrs0":Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;>;"
    .end local v6    # "msgSet":Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
    .end local v7    # "msgSets":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;>;"
    :cond_4
    sget-boolean v8, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v8, :cond_5

    if-nez v3, :cond_5

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 1308
    :cond_5
    instance-of v8, v3, Lorg/apache/ignite/internal/managers/communication/GridIoManager$ArrayListener;

    if-nez v8, :cond_6

    .line 1309
    new-instance v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$ArrayListener;

    const/4 v8, 0x2

    new-array v8, v8, [Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-direct {v0, v8}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$ArrayListener;-><init>([Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 1311
    .local v0, "arrLsnr":Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->lsnrMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, p1, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1312
    move-object v3, v0

    .line 1314
    goto :goto_1

    .end local v0    # "arrLsnr":Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    :cond_6
    move-object v8, v3

    .line 1318
    check-cast v8, Lorg/apache/ignite/internal/managers/communication/GridIoManager$ArrayListener;

    invoke-virtual {v8, p2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$ArrayListener;->add(Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1322
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->lsnrMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1328
    .restart local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;>;"
    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    .line 1352
    .restart local v7    # "msgSets":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;>;"
    :cond_8
    return-void
.end method

.method public addMessageListener(Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V
    .locals 0
    .param p1, "topic"    # Lorg/apache/ignite/internal/GridTopic;
    .param p2, "lsnr"    # Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    .prologue
    .line 1266
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 1267
    return-void
.end method

.method public addUserMessageListener(Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiPredicate;)V
    .locals 3
    .param p1, "topic"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/apache/ignite/lang/IgniteBiPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Ljava/util/UUID;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 1186
    .local p2, "p":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<Ljava/util/UUID;*>;"
    if-eqz p2, :cond_0

    .line 1188
    :try_start_0
    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_COMM_USER:Lorg/apache/ignite/internal/GridTopic;

    new-instance v2, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;

    invoke-direct {v2, p0, p1, p2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;-><init>(Lorg/apache/ignite/internal/managers/communication/GridIoManager;Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiPredicate;)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1195
    :cond_0
    return-void

    .line 1191
    :catch_0
    move-exception v0

    .line 1192
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public formatter()Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;
    .locals 1

    .prologue
    .line 161
    sget-boolean v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->formatter:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 163
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->formatter:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    return-object v0
.end method

.method public getOutboundMessagesQueueSize()I
    .locals 1

    .prologue
    .line 1514
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/communication/CommunicationSpi;

    invoke-interface {v0}, Lorg/apache/ignite/spi/communication/CommunicationSpi;->getOutboundMessagesQueueSize()I

    move-result v0

    return v0
.end method

.method public getReceivedBytesCount()J
    .locals 2

    .prologue
    .line 1505
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/communication/CommunicationSpi;

    invoke-interface {v0}, Lorg/apache/ignite/spi/communication/CommunicationSpi;->getReceivedBytesCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReceivedMessagesCount()I
    .locals 1

    .prologue
    .line 1496
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/communication/CommunicationSpi;

    invoke-interface {v0}, Lorg/apache/ignite/spi/communication/CommunicationSpi;->getReceivedMessagesCount()I

    move-result v0

    return v0
.end method

.method public getSentBytesCount()J
    .locals 2

    .prologue
    .line 1487
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/communication/CommunicationSpi;

    invoke-interface {v0}, Lorg/apache/ignite/spi/communication/CommunicationSpi;->getSentBytesCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSentMessagesCount()I
    .locals 1

    .prologue
    .line 1478
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/communication/CommunicationSpi;

    invoke-interface {v0}, Lorg/apache/ignite/spi/communication/CommunicationSpi;->getSentMessagesCount()I

    move-result v0

    return v0
.end method

.method public messageFactory()Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;
    .locals 1

    .prologue
    .line 152
    sget-boolean v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->msgFactory:Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 154
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->msgFactory:Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;

    return-object v0
.end method

.method public onKernalStart0()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 236
    new-instance v11, Lorg/apache/ignite/internal/managers/communication/GridIoManager$3;

    invoke-direct {v11, p0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$3;-><init>(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)V

    iput-object v11, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    .line 305
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v11

    iget-object v12, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/16 v13, 0xa

    const/4 v14, 0x2

    new-array v14, v14, [I

    fill-array-data v14, :array_0

    invoke-virtual {v11, v12, v13, v14}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;I[I)V

    .line 310
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v1, "delayedMsgs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Collection<Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;>;>;"
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v11}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 315
    const/4 v11, 0x1

    :try_start_0
    iput-boolean v11, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->started:Z

    .line 317
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->waitMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v11}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 318
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;>;>;"
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v12

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/UUID;

    invoke-virtual {v12, v11}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 319
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->waitMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 321
    .local v10, "waitList":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;>;"
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v11}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 322
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Processing messages from discovery startup delay list: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 324
    :cond_1
    if-eqz v10, :cond_0

    .line 325
    invoke-interface {v1, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 330
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;>;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v10    # "waitList":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;>;"
    :catchall_0
    move-exception v11

    iget-object v12, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v12}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v11

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v11}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 334
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    .line 335
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 336
    .local v0, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;

    .line 337
    .local v7, "msg":Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->commLsnr:Lorg/apache/ignite/spi/communication/CommunicationListener;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;->nodeId()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v7}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;->message()Lorg/apache/ignite/internal/managers/communication/GridIoMessage;

    move-result-object v13

    invoke-virtual {v7}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;->callback()Lorg/apache/ignite/lang/IgniteRunnable;

    move-result-object v14

    invoke-interface {v11, v12, v13, v14}, Lorg/apache/ignite/spi/communication/CommunicationListener;->onMessage(Ljava/util/UUID;Ljava/io/Serializable;Lorg/apache/ignite/lang/IgniteRunnable;)V

    goto :goto_1

    .line 341
    .end local v0    # "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "msg":Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;
    :cond_4
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->msgSetMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v11}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 342
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/util/concurrent/ConcurrentMap<Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/ConcurrentMap;

    .line 344
    .local v6, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;>;"
    invoke-interface {v6}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;

    .line 345
    .local v9, "set":Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v11

    invoke-virtual {v9}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->nodeId()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v11

    if-nez v11, :cond_6

    .line 349
    monitor-enter v6

    .line 350
    :try_start_1
    invoke-virtual {v9}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->nodeId()Ljava/util/UUID;

    move-result-object v11

    invoke-interface {v6, v11, v9}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    .line 351
    .local v8, "rmv":Z
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 353
    if-eqz v8, :cond_6

    .line 354
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v11}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 355
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Removed message set due to node leaving grid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 358
    :cond_7
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->timeout()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v11

    invoke-virtual {v11, v9}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->removeTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    goto :goto_3

    .line 351
    .end local v8    # "rmv":Z
    :catchall_1
    move-exception v11

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v11

    .line 366
    .end local v9    # "set":Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
    :cond_8
    monitor-enter v6

    .line 367
    :try_start_3
    invoke-interface {v6}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v8

    .line 368
    .restart local v8    # "rmv":Z
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 370
    if-eqz v8, :cond_5

    .line 371
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->msgSetMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12, v6}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 375
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->closedTopics:Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 368
    .end local v8    # "rmv":Z
    :catchall_2
    move-exception v11

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v11

    .line 378
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/util/concurrent/ConcurrentMap<Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;>;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;>;"
    :cond_9
    return-void

    .line 305
    :array_0
    .array-data 4
        0xb
        0xc
    .end array-data
.end method

.method public onKernalStop0(Z)V
    .locals 7
    .param p1, "cancel"    # Z

    .prologue
    .line 384
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/spi/communication/CommunicationSpi;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/apache/ignite/spi/communication/CommunicationSpi;->setListener(Lorg/apache/ignite/spi/communication/CommunicationListener;)V

    .line 386
    const/4 v2, 0x0

    .line 391
    .local v2, "interrupted":Z
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    const-wide/16 v4, 0xc8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->tryWriteLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 404
    if-eqz v2, :cond_0

    .line 405
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 407
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->affPool:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v3, v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->shutdownNow(Ljava/lang/Class;Ljava/util/concurrent/ExecutorService;Lorg/apache/ignite/IgniteLogger;)V

    .line 409
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    .line 411
    .local v0, "evtMgr":Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    if-eqz v0, :cond_1

    iget-object v3, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    if-eqz v3, :cond_1

    .line 412
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/4 v4, 0x0

    new-array v4, v4, [I

    invoke-virtual {v0, v3, v4}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z

    .line 414
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->stopping:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeUnlock()V

    .line 419
    return-void

    .line 394
    .end local v0    # "evtMgr":Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    :cond_2
    const-wide/16 v4, 0xc8

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 396
    :catch_0
    move-exception v1

    .line 399
    .local v1, "ignore":Ljava/lang/InterruptedException;
    const/4 v2, 0x1

    .line 400
    goto :goto_0

    .line 417
    .end local v1    # "ignore":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeUnlock()V

    throw v3
.end method

.method public printMemoryStats()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1519
    const-string v0, ">>>"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> IO manager memory stats [grid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>  lsnrMapSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->lsnrMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>  msgSetMapSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->msgSetMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>  closedTopicsSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->closedTopics:Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;->sizex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>  discoWaitMapSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->waitMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1525
    return-void
.end method

.method public removeDisconnectListener(Lorg/apache/ignite/internal/managers/communication/GridDisconnectListener;)V
    .locals 1
    .param p1, "lsnr"    # Lorg/apache/ignite/internal/managers/communication/GridDisconnectListener;

    .prologue
    .line 1280
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->disconnectLsnrs:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1281
    return-void
.end method

.method public removeMessageListener(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "topic"    # Ljava/lang/Object;

    .prologue
    .line 1367
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z

    move-result v0

    return v0
.end method

.method public removeMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z
    .locals 11
    .param p1, "topic"    # Ljava/lang/Object;
    .param p2, "lsnr"    # Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1387
    sget-boolean v8, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    if-nez p1, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 1389
    :cond_0
    const/4 v7, 0x1

    .line 1391
    .local v7, "rmv":Z
    const/4 v6, 0x0

    .line 1394
    .local v6, "msgSets":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;>;"
    if-nez p2, :cond_4

    .line 1395
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->closedTopics:Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;

    invoke-virtual {v8, p1}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1397
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->lsnrMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    const/4 v7, 0x1

    .line 1399
    :goto_0
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->msgSetMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 1401
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;>;"
    if-eqz v4, :cond_1

    .line 1402
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    .line 1462
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;>;"
    :cond_1
    :goto_1
    if-eqz v6, :cond_b

    .line 1463
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;

    .line 1464
    .local v5, "msgSet":Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->timeout()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v8

    invoke-virtual {v8, v5}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->removeTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    goto :goto_2

    .line 1397
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "msgSet":Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 1422
    .local v3, "lsnrs":Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    :cond_3
    const/4 v1, 0x0

    .line 1424
    .local v1, "empty":Z
    instance-of v8, v3, Lorg/apache/ignite/internal/managers/communication/GridIoManager$ArrayListener;

    if-nez v8, :cond_9

    .line 1425
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1426
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->lsnrMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1406
    .end local v1    # "empty":Z
    .end local v3    # "lsnrs":Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    :cond_4
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->lsnrMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    .line 1409
    .restart local v3    # "lsnrs":Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    if-nez v3, :cond_3

    .line 1410
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->closedTopics:Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;

    invoke-virtual {v8, p1}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1412
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->msgSetMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 1414
    .restart local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;>;"
    if-eqz v4, :cond_5

    .line 1415
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    .line 1417
    :cond_5
    const/4 v7, 0x0

    .line 1419
    goto :goto_1

    .line 1429
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;>;"
    .restart local v1    # "empty":Z
    :cond_6
    const/4 v1, 0x1

    .line 1448
    :cond_7
    :goto_3
    if-eqz v1, :cond_1

    .line 1449
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->closedTopics:Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;

    invoke-virtual {v8, p1}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1451
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->msgSetMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 1453
    .restart local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;>;"
    if-eqz v4, :cond_1

    .line 1454
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    goto :goto_1

    .line 1432
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;>;"
    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    :cond_9
    move-object v0, v3

    .line 1435
    check-cast v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$ArrayListener;

    .line 1437
    .local v0, "arrLsnr":Lorg/apache/ignite/internal/managers/communication/GridIoManager$ArrayListener;
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$ArrayListener;->remove(Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1438
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$ArrayListener;->isEmpty()Z

    move-result v1

    .line 1443
    :goto_4
    if-eqz v1, :cond_7

    .line 1444
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->lsnrMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_3

    .line 1441
    :cond_a
    const/4 v7, 0x0

    goto :goto_4

    .line 1466
    .end local v0    # "arrLsnr":Lorg/apache/ignite/internal/managers/communication/GridIoManager$ArrayListener;
    .end local v1    # "empty":Z
    .end local v3    # "lsnrs":Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    :cond_b
    if-eqz v7, :cond_c

    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1467
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Removed message listener [topic="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", lsnr="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1469
    :cond_c
    return v7
.end method

.method public removeMessageListener(Lorg/apache/ignite/internal/GridTopic;)Z
    .locals 1
    .param p1, "topic"    # Lorg/apache/ignite/internal/GridTopic;

    .prologue
    .line 1359
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeMessageListener(Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z
    .locals 1
    .param p1, "topic"    # Lorg/apache/ignite/internal/GridTopic;
    .param p2, "lsnr"    # Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1377
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z

    move-result v0

    return v0
.end method

.method public removeUserMessageListener(Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiPredicate;)V
    .locals 3
    .param p1, "topic"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Ljava/util/UUID;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 1203
    .local p2, "p":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<Ljava/util/UUID;*>;"
    :try_start_0
    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_COMM_USER:Lorg/apache/ignite/internal/GridTopic;

    new-instance v2, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;

    invoke-direct {v2, p0, p1, p2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;-><init>(Lorg/apache/ignite/internal/managers/communication/GridIoManager;Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiPredicate;)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1209
    return-void

    .line 1206
    :catch_0
    move-exception v0

    .line 1207
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public resetMetrics()V
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/communication/CommunicationSpi;

    invoke-interface {v0}, Lorg/apache/ignite/spi/communication/CommunicationSpi;->resetMetrics()V

    .line 171
    return-void
.end method

.method public send(Ljava/util/Collection;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    .locals 11
    .param p2, "topic"    # Ljava/lang/Object;
    .param p3, "msg"    # Lorg/apache/ignite/plugin/extensions/communication/Message;
    .param p4, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/plugin/extensions/communication/Message;",
            "Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/4 v7, 0x0

    .line 1078
    const/4 v4, -0x1

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move v10, v7

    invoke-direct/range {v1 .. v10}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Ljava/util/Collection;Ljava/lang/Object;ILorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;ZJZ)V

    .line 1079
    return-void
.end method

.method public send(Ljava/util/Collection;Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    .locals 11
    .param p2, "topic"    # Lorg/apache/ignite/internal/GridTopic;
    .param p3, "msg"    # Lorg/apache/ignite/plugin/extensions/communication/Message;
    .param p4, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Lorg/apache/ignite/internal/GridTopic;",
            "Lorg/apache/ignite/plugin/extensions/communication/Message;",
            "Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/4 v7, 0x0

    .line 1094
    invoke-virtual {p2}, Lorg/apache/ignite/internal/GridTopic;->ordinal()I

    move-result v4

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move v10, v7

    invoke-direct/range {v1 .. v10}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Ljava/util/Collection;Ljava/lang/Object;ILorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;ZJZ)V

    .line 1095
    return-void
.end method

.method public send(Ljava/util/UUID;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "topic"    # Ljava/lang/Object;
    .param p3, "msg"    # Lorg/apache/ignite/plugin/extensions/communication/Message;
    .param p4, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 943
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    .line 945
    .local v0, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v0, :cond_0

    .line 946
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send message to node (has node left grid?): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 948
    :cond_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    .line 949
    return-void
.end method

.method public send(Ljava/util/UUID;Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    .locals 11
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "topic"    # Lorg/apache/ignite/internal/GridTopic;
    .param p3, "msg"    # Lorg/apache/ignite/plugin/extensions/communication/Message;
    .param p4, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 961
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    .line 963
    .local v2, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v2, :cond_0

    .line 964
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send message to node (has node left grid?): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 966
    :cond_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/GridTopic;->ordinal()I

    move-result v4

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move v10, v7

    invoke-direct/range {v1 .. v10}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;ILorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;ZJZ)V

    .line 967
    return-void
.end method

.method public send(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    .locals 11
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "topic"    # Ljava/lang/Object;
    .param p3, "msg"    # Lorg/apache/ignite/plugin/extensions/communication/Message;
    .param p4, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 978
    const/4 v4, -0x1

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move v10, v7

    invoke-direct/range {v1 .. v10}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;ILorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;ZJZ)V

    .line 979
    return-void
.end method

.method public send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    .locals 11
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "topic"    # Lorg/apache/ignite/internal/GridTopic;
    .param p3, "msg"    # Lorg/apache/ignite/plugin/extensions/communication/Message;
    .param p4, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 990
    invoke-virtual {p2}, Lorg/apache/ignite/internal/GridTopic;->ordinal()I

    move-result v4

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move v10, v7

    invoke-direct/range {v1 .. v10}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;ILorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;ZJZ)V

    .line 991
    return-void
.end method

.method public sendOrderedMessage(Ljava/util/Collection;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;JZ)V
    .locals 11
    .param p2, "topic"    # Ljava/lang/Object;
    .param p3, "msg"    # Lorg/apache/ignite/plugin/extensions/communication/Message;
    .param p4, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .param p5, "timeout"    # J
    .param p7, "skipOnTimeout"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/plugin/extensions/communication/Message;",
            "Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;",
            "JZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1060
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gtz v0, :cond_0

    if-nez p7, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1062
    :cond_0
    const/4 v4, -0x1

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Ljava/util/Collection;Ljava/lang/Object;ILorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;ZJZ)V

    .line 1063
    return-void
.end method

.method public sendOrderedMessage(Ljava/util/UUID;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;JZ)V
    .locals 11
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "topic"    # Ljava/lang/Object;
    .param p3, "msg"    # Lorg/apache/ignite/plugin/extensions/communication/Message;
    .param p4, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .param p5, "timeout"    # J
    .param p7, "skipOnTimeout"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1032
    sget-boolean v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gtz v0, :cond_0

    if-nez p7, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1034
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    .line 1036
    .local v2, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v2, :cond_1

    .line 1037
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send message to node (has node left grid?): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1039
    :cond_1
    const/4 v4, -0x1

    const/4 v7, 0x1

    move-object v1, p0

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;ILorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;ZJZ)V

    .line 1040
    return-void
.end method

.method public sendOrderedMessage(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;JZ)V
    .locals 11
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "topic"    # Ljava/lang/Object;
    .param p3, "msg"    # Lorg/apache/ignite/plugin/extensions/communication/Message;
    .param p4, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .param p5, "timeout"    # J
    .param p7, "skipOnTimeout"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1010
    sget-boolean v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gtz v0, :cond_0

    if-nez p7, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1012
    :cond_0
    const/4 v4, -0x1

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;ILorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;ZJZ)V

    .line 1013
    return-void
.end method

.method public sendUserMessage(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 8
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1105
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->sendUserMessage(Ljava/util/Collection;Ljava/lang/Object;Ljava/lang/Object;ZJ)V

    .line 1106
    return-void
.end method

.method public sendUserMessage(Ljava/util/Collection;Ljava/lang/Object;Ljava/lang/Object;ZJ)V
    .locals 23
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "topic"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ordered"    # Z
    .param p5, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "ZJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1121
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->locNodeId:Ljava/util/UUID;

    invoke-virtual {v3, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v19, 0x1

    .line 1123
    .local v19, "loc":Z
    :goto_0
    const/4 v4, 0x0

    .line 1124
    .local v4, "serMsg":[B
    const/4 v7, 0x0

    .line 1126
    .local v7, "serTopic":[B
    if-nez v19, :cond_0

    .line 1127
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v4

    .line 1129
    if-eqz p3, :cond_0

    .line 1130
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    move-object/from16 v0, p3

    invoke-interface {v3, v0}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v7

    .line 1133
    :cond_0
    const/16 v18, 0x0

    .line 1135
    .local v18, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    const/4 v5, 0x0

    .line 1137
    .local v5, "depClsName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1138
    invoke-static/range {p2 .. p2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v17

    .line 1140
    .local v17, "cls0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static/range {v17 .. v17}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isJdk(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p3, :cond_1

    .line 1141
    invoke-static/range {p3 .. p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v17

    .line 1143
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v3

    invoke-static/range {v17 .. v17}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v6}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->deploy(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v18

    .line 1145
    if-nez v18, :cond_3

    .line 1146
    new-instance v3, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to deploy user message: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1121
    .end local v4    # "serMsg":[B
    .end local v5    # "depClsName":Ljava/lang/String;
    .end local v7    # "serTopic":[B
    .end local v17    # "cls0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .end local v19    # "loc":Z
    :cond_2
    const/16 v19, 0x0

    goto :goto_0

    .line 1148
    .restart local v4    # "serMsg":[B
    .restart local v5    # "depClsName":Ljava/lang/String;
    .restart local v7    # "serTopic":[B
    .restart local v17    # "cls0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v18    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .restart local v19    # "loc":Z
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1151
    .end local v17    # "cls0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    new-instance v2, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;

    if-eqz v18, :cond_6

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    :goto_1
    if-eqz v18, :cond_7

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->deployMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v9

    :goto_2
    if-eqz v18, :cond_8

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->userVersion()Ljava/lang/String;

    move-result-object v10

    :goto_3
    if-eqz v18, :cond_9

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->participants()Ljava/util/Map;

    move-result-object v11

    :goto_4
    move-object/from16 v3, p2

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v11}, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;-><init>(Ljava/lang/Object;[BLjava/lang/String;Ljava/lang/Object;[BLorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/String;Ljava/util/Map;)V

    .line 1162
    .local v2, "ioMsg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    if-eqz p4, :cond_a

    .line 1163
    sget-object v11, Lorg/apache/ignite/internal/GridTopic;->TOPIC_COMM_USER:Lorg/apache/ignite/internal/GridTopic;

    sget-object v13, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->PUBLIC_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    const/16 v16, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v12, v2

    move-wide/from16 v14, p5

    invoke-virtual/range {v9 .. v16}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->sendOrderedMessage(Ljava/util/Collection;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;JZ)V

    .line 1179
    :cond_5
    :goto_5
    return-void

    .line 1151
    .end local v2    # "ioMsg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    :cond_7
    const/4 v9, 0x0

    goto :goto_2

    :cond_8
    const/4 v10, 0x0

    goto :goto_3

    :cond_9
    const/4 v11, 0x0

    goto :goto_4

    .line 1164
    .restart local v2    # "ioMsg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    :cond_a
    if-eqz v19, :cond_b

    .line 1165
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/cluster/ClusterNode;

    sget-object v6, Lorg/apache/ignite/internal/GridTopic;->TOPIC_COMM_USER:Lorg/apache/ignite/internal/GridTopic;

    sget-object v8, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->PUBLIC_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v2, v8}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    goto :goto_5

    .line 1167
    :cond_b
    const/4 v3, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->locNodeId:Ljava/util/UUID;

    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/F;->localNode(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v9

    aput-object v9, v6, v8

    move-object/from16 v0, p1

    invoke-static {v0, v3, v6}, Lorg/apache/ignite/internal/util/typedef/F;->find(Ljava/lang/Iterable;Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/ignite/cluster/ClusterNode;

    .line 1169
    .local v20, "locNode":Lorg/apache/ignite/cluster/ClusterNode;
    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->locNodeId:Ljava/util/UUID;

    invoke-static {v8}, Lorg/apache/ignite/internal/util/typedef/F;->remoteNodes(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v8

    aput-object v8, v3, v6

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v21

    .line 1171
    .local v21, "rmtNodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 1172
    sget-object v3, Lorg/apache/ignite/internal/GridTopic;->TOPIC_COMM_USER:Lorg/apache/ignite/internal/GridTopic;

    sget-object v6, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->PUBLIC_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3, v2, v6}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Ljava/util/Collection;Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    .line 1176
    :cond_c
    if-eqz v20, :cond_5

    .line 1177
    sget-object v3, Lorg/apache/ignite/internal/GridTopic;->TOPIC_COMM_USER:Lorg/apache/ignite/internal/GridTopic;

    sget-object v6, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->PUBLIC_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3, v2, v6}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    goto :goto_5
.end method

.method public start()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 176
    iget-wide v4, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->discoDelay:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "discoveryStartupDelay > 0"

    invoke-virtual {p0, v1, v4}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->assertParameter(ZLjava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->startSpi()V

    .line 180
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->pubPool:Ljava/util/concurrent/ExecutorService;

    .line 181
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->getPeerClassLoadingExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->p2pPool:Ljava/util/concurrent/ExecutorService;

    .line 182
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->getSystemExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->sysPool:Ljava/util/concurrent/ExecutorService;

    .line 183
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->getManagementExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->mgmtPool:Ljava/util/concurrent/ExecutorService;

    .line 184
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->utilityCachePool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->utilityCachePool:Ljava/util/concurrent/ExecutorService;

    .line 185
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->marshallerCachePool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->marshCachePool:Ljava/util/concurrent/ExecutorService;

    .line 186
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->affPool:Ljava/util/concurrent/ExecutorService;

    .line 188
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/spi/communication/CommunicationSpi;

    new-instance v4, Lorg/apache/ignite/internal/managers/communication/GridIoManager$1;

    invoke-direct {v4, p0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$1;-><init>(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)V

    iput-object v4, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->commLsnr:Lorg/apache/ignite/spi/communication/CommunicationListener;

    invoke-interface {v1, v4}, Lorg/apache/ignite/spi/communication/CommunicationSpi;->setListener(Lorg/apache/ignite/spi/communication/CommunicationListener;)V

    .line 206
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->plugins()Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;

    move-result-object v1

    const-class v4, Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    invoke-virtual {v1, v4}, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->extensions(Ljava/lang/Class;)[Lorg/apache/ignite/plugin/Extension;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    .line 208
    .local v0, "formatterExt":[Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;
    if-eqz v0, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    .line 209
    array-length v1, v0

    if-le v1, v2, :cond_1

    .line 210
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    const-string v2, "More than one MessageFormatter extension is defined. Check your plugins configuration and make sure that only one of them provides custom message format."

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "formatterExt":[Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;
    :cond_0
    move v1, v3

    .line 176
    goto :goto_0

    .line 213
    .restart local v0    # "formatterExt":[Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;
    :cond_1
    aget-object v1, v0, v3

    iput-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->formatter:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    .line 227
    :goto_1
    new-instance v2, Lorg/apache/ignite/internal/managers/communication/GridIoMessageFactory;

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->plugins()Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;

    move-result-object v1

    const-class v3, Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;

    invoke-virtual {v1, v3}, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->extensions(Ljava/lang/Class;)[Lorg/apache/ignite/plugin/Extension;

    move-result-object v1

    check-cast v1, [Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;

    invoke-direct {v2, v1}, Lorg/apache/ignite/internal/managers/communication/GridIoMessageFactory;-><init>([Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;)V

    iput-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->msgFactory:Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;

    .line 229
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->startInfo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 231
    :cond_2
    return-void

    .line 216
    :cond_3
    new-instance v1, Lorg/apache/ignite/internal/managers/communication/GridIoManager$2;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$2;-><init>(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->formatter:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    goto :goto_1
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
    .line 423
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->stopSpi()V

    .line 425
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->stopInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 427
    :cond_0
    return-void
.end method

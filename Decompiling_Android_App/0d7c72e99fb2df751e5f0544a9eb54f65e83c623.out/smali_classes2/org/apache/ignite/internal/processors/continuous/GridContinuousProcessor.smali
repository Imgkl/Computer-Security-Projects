.class public Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;
.super Lorg/apache/ignite/internal/processors/GridProcessorAdapter;
.source "GridContinuousProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$6;,
        Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;,
        Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$SyncMessageAckFuture;,
        Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopFuture;,
        Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;,
        Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;,
        Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;,
        Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;,
        Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;,
        Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private ackTimeout:J

.field private final locInfos:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private marsh:Lorg/apache/ignite/marshaller/Marshaller;

.field private final pending:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pendingLock:Ljava/util/concurrent/locks/Lock;

.field private retryCnt:I

.field private retryDelay:J

.field private final rmtInfos:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final startFuts:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;",
            ">;"
        }
    .end annotation
.end field

.field private final stopFuts:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopFuture;",
            ">;"
        }
    .end annotation
.end field

.field private final stopLock:Ljava/util/concurrent/locks/Lock;

.field private final stopped:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private final syncMsgFuts:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$SyncMessageAckFuture;",
            ">;"
        }
    .end annotation
.end field

.field private final threads:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/thread/IgniteThread;",
            ">;"
        }
    .end annotation
.end field

.field private final waitForStartAck:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;>;"
        }
    .end annotation
.end field

.field private final waitForStopAck:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 59
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->locInfos:Ljava/util/concurrent/ConcurrentMap;

    .line 62
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->rmtInfos:Ljava/util/concurrent/ConcurrentMap;

    .line 65
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->startFuts:Ljava/util/concurrent/ConcurrentMap;

    .line 68
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->waitForStartAck:Ljava/util/concurrent/ConcurrentMap;

    .line 71
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopFuts:Ljava/util/concurrent/ConcurrentMap;

    .line 74
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->waitForStopAck:Ljava/util/concurrent/ConcurrentMap;

    .line 77
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->threads:Ljava/util/Collection;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->pending:Ljava/util/Map;

    .line 83
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->syncMsgFuts:Ljava/util/concurrent/ConcurrentMap;

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopped:Ljava/util/Collection;

    .line 89
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->pendingLock:Ljava/util/concurrent/locks/Lock;

    .line 92
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopLock:Ljava/util/concurrent/locks/Lock;

    .line 95
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->retryDelay:J

    .line 98
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->retryCnt:I

    .line 111
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->pendingLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->pending:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->rmtInfos:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;Ljava/util/UUID;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;
    .param p1, "x1"    # Ljava/util/UUID;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->unregisterRemote(Ljava/util/UUID;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->syncMsgFuts:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Lorg/apache/ignite/marshaller/Marshaller;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->processStartRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V

    return-void
.end method

.method static synthetic access$1800(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->processStartAck(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V

    return-void
.end method

.method static synthetic access$1900(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->processStopRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;
    .param p3, "x3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->sendWithRetries(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2000(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->processStopAck(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V

    return-void
.end method

.method static synthetic access$2100(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->processNotification(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V

    return-void
.end method

.method static synthetic access$2200(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->processMessageAck(Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->startFuts:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Collection;Ljava/lang/Object;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Ljava/util/UUID;
    .param p3, "x3"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p4, "x4"    # Ljava/util/Collection;
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct/range {p0 .. p6}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->sendNotification(Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Collection;Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$4800(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$4900(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopFuts:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$5000(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$5100(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$5300(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;Ljava/util/UUID;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;
    .param p1, "x1"    # Ljava/util/UUID;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->completeStartFuture(Ljava/util/UUID;)V

    return-void
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->waitForStartAck:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->waitForStopAck:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;Ljava/util/UUID;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;
    .param p1, "x1"    # Ljava/util/UUID;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->completeStopFuture(Ljava/util/UUID;)V

    return-void
.end method

.method private completeStartFuture(Ljava/util/UUID;)V
    .locals 2
    .param p1, "routineId"    # Ljava/util/UUID;

    .prologue
    .line 978
    sget-boolean v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 980
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->waitForStartAck:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 981
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->startFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;

    .line 983
    .local v0, "fut":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 985
    :cond_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;->onRemoteRegistered()V

    .line 987
    .end local v0    # "fut":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;
    :cond_2
    return-void
.end method

.method private completeStopFuture(Ljava/util/UUID;)V
    .locals 2
    .param p1, "routineId"    # Ljava/util/UUID;

    .prologue
    .line 993
    sget-boolean v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 995
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->waitForStopAck:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 996
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 998
    .local v0, "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<*>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1000
    :cond_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    .line 1002
    .end local v0    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<*>;"
    :cond_2
    return-void
.end method

.method private processMessageAck(Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V
    .locals 3
    .param p1, "msg"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    .prologue
    .line 936
    sget-boolean v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 938
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->syncMsgFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$SyncMessageAckFuture;

    .line 940
    .local v0, "fut":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$SyncMessageAckFuture;
    if-eqz v0, :cond_1

    .line 941
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$SyncMessageAckFuture;->onDone()Z

    .line 942
    :cond_1
    return-void
.end method

.method private processNotification(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V
    .locals 10
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    .prologue
    .line 949
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 950
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 952
    :cond_1
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->routineId()Ljava/util/UUID;

    move-result-object v8

    .line 955
    .local v8, "routineId":Ljava/util/UUID;
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->locInfos:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v8}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;

    .line 957
    .local v7, "routine":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;
    if-eqz v7, :cond_2

    .line 958
    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;->hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;->access$2400(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;)Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->data()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1, p1, v8, v0, v2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;->notifyCallback(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/Collection;Lorg/apache/ignite/internal/GridKernalContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 961
    :cond_2
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 963
    :try_start_1
    new-instance v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    sget-object v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->MSG_EVT_ACK:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;-><init>(Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;Z)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->sendWithRetries(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 972
    :cond_3
    :goto_0
    return-void

    .line 967
    :catch_0
    move-exception v6

    .line 968
    .local v6, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send event acknowledgment to node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 961
    .end local v6    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v7    # "routine":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;
    :catchall_0
    move-exception v0

    move-object v9, v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 963
    :try_start_2
    new-instance v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    sget-object v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->MSG_EVT_ACK:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;-><init>(Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;Z)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->sendWithRetries(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 969
    :cond_4
    :goto_1
    throw v9

    .line 967
    :catch_1
    move-exception v6

    .line 968
    .restart local v6    # "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send event acknowledgment to node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private processStartAck(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "ack"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    .prologue
    .line 859
    sget-boolean v4, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 860
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez p2, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 862
    :cond_1
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->routineId()Ljava/util/UUID;

    move-result-object v3

    .line 864
    .local v3, "routineId":Ljava/util/UUID;
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->data()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/IgniteCheckedException;

    .line 866
    .local v0, "err":Lorg/apache/ignite/IgniteCheckedException;
    if-eqz v0, :cond_2

    .line 867
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->waitForStartAck:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 868
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->startFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;

    .line 870
    .local v1, "fut":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;
    if-eqz v1, :cond_2

    .line 871
    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 873
    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopRoutine(Ljava/util/UUID;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 878
    .end local v1    # "fut":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;
    :cond_2
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->waitForStartAck:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 880
    .local v2, "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    if-eqz v2, :cond_3

    .line 881
    invoke-interface {v2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 883
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 884
    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->completeStartFuture(Ljava/util/UUID;)V

    .line 886
    :cond_3
    return-void
.end method

.method private processStartRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V
    .locals 24
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    .prologue
    .line 786
    sget-boolean v2, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 787
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 789
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->routineId()Ljava/util/UUID;

    move-result-object v23

    .line 790
    .local v23, "routineId":Ljava/util/UUID;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->data()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;

    .line 792
    .local v14, "data":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;
    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    invoke-static {v14}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->access$3800(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;)Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    move-result-object v19

    .line 794
    .local v19, "hnd":Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    const/16 v18, 0x0

    .line 797
    .local v18, "err":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 798
    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->clsName:Ljava/lang/String;
    invoke-static {v14}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->access$3600(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;)Ljava/lang/String;

    move-result-object v4

    .line 800
    .local v4, "clsName":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 801
    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    invoke-static {v14}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->access$3700(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;)Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    move-result-object v16

    .line 803
    .local v16, "depInfo":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v2

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->deployMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->userVersion()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->participants()Ljava/util/Map;

    move-result-object v9

    const/4 v10, 0x0

    move-object v5, v4

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v10}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->getGlobalDeployment(Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v15

    .line 806
    .local v15, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-nez v15, :cond_7

    .line 807
    new-instance v2, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to obtain deployment for class: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    .end local v4    # "clsName":Ljava/lang/String;
    .end local v15    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .end local v16    # "depInfo":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    :catch_0
    move-exception v17

    .line 816
    .local v17, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v9, v17

    .line 818
    .end local v18    # "err":Lorg/apache/ignite/IgniteCheckedException;
    .local v9, "err":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to register handler [nodeId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", routineId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x5d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v18, v9

    .line 821
    .end local v9    # "err":Lorg/apache/ignite/IgniteCheckedException;
    .end local v17    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v18    # "err":Lorg/apache/ignite/IgniteCheckedException;
    :cond_2
    :goto_0
    const/16 v22, 0x0

    .line 823
    .local v22, "registered":Z
    if-nez v18, :cond_9

    .line 825
    :try_start_1
    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->prjPred:Lorg/apache/ignite/lang/IgnitePredicate;
    invoke-static {v14}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->access$4100(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v21

    .line 827
    .local v21, "prjPred":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/cluster/ClusterNode;>;"
    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 828
    :cond_3
    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->bufSize:I
    invoke-static {v14}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->access$4400(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;)I

    move-result v9

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->interval:J
    invoke-static {v14}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->access$4500(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;)J

    move-result-wide v10

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->autoUnsubscribe:Z
    invoke-static {v14}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->access$4600(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;)Z

    move-result v12

    const/4 v13, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, v23

    move-object/from16 v8, v19

    invoke-direct/range {v5 .. v13}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->registerHandler(Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;IJZZ)Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v22

    :cond_4
    move-object/from16 v9, v18

    .line 840
    .end local v18    # "err":Lorg/apache/ignite/IgniteCheckedException;
    .end local v21    # "prjPred":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .restart local v9    # "err":Lorg/apache/ignite/IgniteCheckedException;
    :goto_1
    :try_start_2
    new-instance v5, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    sget-object v6, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->MSG_START_ACK:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, v23

    invoke-direct/range {v5 .. v10}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;-><init>(Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;Z)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->sendWithRetries(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 850
    :cond_5
    :goto_2
    if-eqz v22, :cond_6

    .line 851
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;->onListenerRegistered(Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 852
    :cond_6
    return-void

    .line 809
    .end local v9    # "err":Lorg/apache/ignite/IgniteCheckedException;
    .end local v22    # "registered":Z
    .restart local v4    # "clsName":Ljava/lang/String;
    .restart local v15    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .restart local v16    # "depInfo":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    .restart local v18    # "err":Lorg/apache/ignite/IgniteCheckedException;
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->p2pUnmarshal(Lorg/apache/ignite/marshaller/Marshaller;Ljava/lang/ClassLoader;)V

    .line 812
    .end local v15    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .end local v16    # "depInfo":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;->p2pUnmarshal(Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)V
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 832
    .end local v4    # "clsName":Ljava/lang/String;
    .restart local v22    # "registered":Z
    :catch_1
    move-exception v17

    .line 833
    .restart local v17    # "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v9, v17

    .line 835
    .end local v18    # "err":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v9    # "err":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to register handler [nodeId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", routineId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x5d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 842
    .end local v17    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_2
    move-exception v20

    .line 843
    .local v20, "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 844
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send start acknowledgement to node (is node alive?): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 846
    .end local v20    # "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :catch_3
    move-exception v17

    .line 847
    .restart local v17    # "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send start acknowledgement to node: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .end local v9    # "err":Lorg/apache/ignite/IgniteCheckedException;
    .end local v17    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v18    # "err":Lorg/apache/ignite/IgniteCheckedException;
    :cond_9
    move-object/from16 v9, v18

    .end local v18    # "err":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v9    # "err":Lorg/apache/ignite/IgniteCheckedException;
    goto/16 :goto_1
.end method

.method private processStopAck(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V
    .locals 3
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "ack"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    .prologue
    .line 917
    sget-boolean v2, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 918
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 920
    :cond_1
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->routineId()Ljava/util/UUID;

    move-result-object v1

    .line 922
    .local v1, "routineId":Ljava/util/UUID;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->waitForStopAck:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 924
    .local v0, "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    if-eqz v0, :cond_2

    .line 925
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 927
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 928
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->completeStopFuture(Ljava/util/UUID;)V

    .line 930
    :cond_2
    return-void
.end method

.method private processStopRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V
    .locals 8
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    .prologue
    .line 893
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 894
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 896
    :cond_1
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->routineId()Ljava/util/UUID;

    move-result-object v2

    .line 898
    .local v2, "routineId":Ljava/util/UUID;
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->unregisterRemote(Ljava/util/UUID;)V

    .line 901
    :try_start_0
    new-instance v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    sget-object v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->MSG_STOP_ACK:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;-><init>(Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;Z)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->sendWithRetries(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 910
    :cond_2
    :goto_0
    return-void

    .line 903
    :catch_0
    move-exception v7

    .line 904
    .local v7, "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 905
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send stop acknowledgement to node (is node alive?): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 907
    .end local v7    # "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :catch_1
    move-exception v6

    .line 908
    .local v6, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send stop acknowledgement to node: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private registerHandler(Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;IJZZ)Z
    .locals 19
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "routineId"    # Ljava/util/UUID;
    .param p3, "hnd"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    .param p4, "bufSize"    # I
    .param p5, "interval"    # J
    .param p7, "autoUnsubscribe"    # Z
    .param p8, "loc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1022
    sget-boolean v5, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1023
    :cond_0
    sget-boolean v5, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-nez p2, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1024
    :cond_1
    sget-boolean v5, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    if-nez p3, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1025
    :cond_2
    sget-boolean v5, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    if-gtz p4, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1026
    :cond_3
    sget-boolean v5, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v5, :cond_4

    const-wide/16 v6, 0x0

    cmp-long v5, p5, v6

    if-gez v5, :cond_4

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1028
    :cond_4
    new-instance v4, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    invoke-direct/range {v4 .. v10}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;-><init>(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;IJZ)V

    .line 1030
    .local v4, "info":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;
    move/from16 v17, p8

    .line 1032
    .local v17, "doRegister":Z
    if-nez v17, :cond_5

    .line 1033
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1036
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopped:Ljava/util/Collection;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->rmtInfos:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p2

    invoke-interface {v5, v0, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-nez v5, :cond_7

    const/16 v17, 0x1

    .line 1039
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1043
    :cond_5
    if-eqz v17, :cond_a

    .line 1044
    const-wide/16 v6, 0x0

    cmp-long v5, p5, v6

    if-lez v5, :cond_6

    .line 1045
    new-instance v16, Lorg/apache/ignite/thread/IgniteThread;

    new-instance v5, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$5;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "continuous-buffer-checker"

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v6, p0

    move-wide/from16 v10, p5

    move-object v12, v4

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v5 .. v15}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$5;-><init>(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;JLorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;)V

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lorg/apache/ignite/thread/IgniteThread;-><init>(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    .line 1082
    .local v16, "checker":Lorg/apache/ignite/thread/IgniteThread;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->threads:Ljava/util/Collection;

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1084
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/thread/IgniteThread;->start()V

    .line 1087
    .end local v16    # "checker":Lorg/apache/ignite/thread/IgniteThread;
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2, v5}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;->register(Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

    move-result-object v18

    .line 1089
    .local v18, "status":Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;
    sget-object v5, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;->DELAYED:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

    move-object/from16 v0, v18

    if-ne v0, v5, :cond_8

    .line 1090
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->markDelayedRegister()V

    .line 1092
    const/4 v5, 0x0

    .line 1098
    .end local v18    # "status":Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;
    :goto_1
    return v5

    .line 1036
    :cond_7
    const/16 v17, 0x0

    goto :goto_0

    .line 1039
    :catchall_0
    move-exception v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5

    .line 1095
    .restart local v18    # "status":Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;
    :cond_8
    sget-object v5, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;->REGISTERED:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

    move-object/from16 v0, v18

    if-ne v0, v5, :cond_9

    const/4 v5, 0x1

    goto :goto_1

    :cond_9
    const/4 v5, 0x0

    goto :goto_1

    .line 1098
    .end local v18    # "status":Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;
    :cond_a
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private sendNotification(Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Collection;Ljava/lang/Object;Z)V
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "routineId"    # Ljava/util/UUID;
    .param p3, "futId"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "orderedTopic"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "msg"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 771
    .local p4, "toSnd":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 772
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 773
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 774
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 776
    :cond_3
    new-instance v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    sget-object v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->MSG_EVT_NOTIFICATION:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;-><init>(Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;Z)V

    invoke-direct {p0, p1, v0, p5}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->sendWithRetries(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;Ljava/lang/Object;)V

    .line 779
    return-void
.end method

.method private sendWithRetries(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;Ljava/lang/Object;)V
    .locals 11
    .param p2, "msg"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;
    .param p3, "orderedTopic"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;",
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
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/4 v3, 0x1

    .line 1183
    sget-boolean v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1184
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1186
    :cond_1
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->messages()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->data()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-gt v1, v3, :cond_2

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1189
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->data()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->dataBytes([B)V

    .line 1191
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cluster/ClusterNode;

    .line 1192
    .local v2, "node":Lorg/apache/ignite/cluster/ClusterNode;
    const/4 v0, 0x0

    .line 1194
    .local v0, "cnt":I
    :goto_1
    iget v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->retryCnt:I

    if-gt v0, v1, :cond_4

    .line 1196
    add-int/lit8 v0, v0, 0x1

    .line 1198
    if-eqz p3, :cond_5

    .line 1199
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v1

    sget-object v5, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v3, p3

    move-object v4, p2

    invoke-virtual/range {v1 .. v8}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->sendOrderedMessage(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;JZ)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1212
    :catch_0
    move-exception v9

    .line 1213
    .local v9, "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    throw v9

    .line 1208
    .end local v9    # "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    :cond_5
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v1

    sget-object v3, Lorg/apache/ignite/internal/GridTopic;->TOPIC_CONTINUOUS:Lorg/apache/ignite/internal/GridTopic;

    sget-object v4, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    invoke-virtual {v1, v2, v3, p2, v4}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1215
    :catch_1
    move-exception v9

    .line 1216
    .local v9, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->alive(Ljava/util/UUID;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1217
    new-instance v1, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Node left grid while sending message to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v9}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1219
    :cond_6
    iget v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->retryCnt:I

    if-ne v0, v1, :cond_7

    .line 1220
    throw v9

    .line 1221
    :cond_7
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1222
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send message to node (will retry): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1225
    :cond_8
    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->retryDelay:J

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V

    goto/16 :goto_1

    .line 1228
    .end local v0    # "cnt":I
    .end local v2    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v9    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_9
    return-void
.end method

.method private sendWithRetries(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;Ljava/lang/Object;)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;
    .param p3, "orderedTopic"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1148
    sget-boolean v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1149
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1151
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    .line 1153
    .local v0, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v0, :cond_2

    .line 1154
    invoke-direct {p0, v0, p2, p3}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->sendWithRetries(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;Ljava/lang/Object;)V

    .line 1157
    return-void

    .line 1156
    :cond_2
    new-instance v1, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Node for provided ID doesn\'t exist (did it leave the grid?): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private sendWithRetries(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;Ljava/lang/Object;)V
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "msg"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;
    .param p3, "orderedTopic"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1168
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1169
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1171
    :cond_1
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->sendWithRetries(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;Ljava/lang/Object;)V

    .line 1172
    return-void
.end method

.method private unregisterHandler(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;Z)V
    .locals 2
    .param p1, "routineId"    # Ljava/util/UUID;
    .param p2, "hnd"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    .param p3, "loc"    # Z

    .prologue
    .line 1107
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1108
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1110
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;->orderedTopic()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1111
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;->orderedTopic()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Ljava/lang/Object;)Z

    .line 1113
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {p2, p1, v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;->unregister(Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 1114
    return-void
.end method

.method private unregisterRemote(Ljava/util/UUID;)V
    .locals 3
    .param p1, "routineId"    # Ljava/util/UUID;

    .prologue
    .line 1123
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1126
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->rmtInfos:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;

    .line 1128
    .local v0, "info":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;
    if-nez v0, :cond_0

    .line 1129
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopped:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1132
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1135
    if-eqz v0, :cond_1

    .line 1136
    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->access$3500(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;)Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->unregisterHandler(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;Z)V

    .line 1137
    :cond_1
    return-void

    .line 1132
    .end local v0    # "info":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method


# virtual methods
.method public addNotification(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/Object;Ljava/lang/Object;ZZ)V
    .locals 16
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "routineId"    # Ljava/util/UUID;
    .param p3, "obj"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "orderedTopic"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "sync"    # Z
    .param p6, "msg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 718
    sget-boolean v2, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 719
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 720
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-eqz p6, :cond_2

    move-object/from16 v0, p3

    instance-of v2, v0, Lorg/apache/ignite/plugin/extensions/communication/Message;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 722
    :cond_2
    sget-boolean v2, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 724
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->rmtInfos:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;

    .line 726
    .local v15, "info":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;
    if-eqz v15, :cond_5

    .line 727
    sget-boolean v2, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->interval:J
    invoke-static {v15}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->access$4300(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    if-eqz p5, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 729
    :cond_4
    if-eqz p5, :cond_6

    .line 730
    new-instance v14, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$SyncMessageAckFuture;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v0, p1

    invoke-direct {v14, v2, v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$SyncMessageAckFuture;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;)V

    .line 732
    .local v14, "fut":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$SyncMessageAckFuture;
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    .line 734
    .local v5, "futId":Lorg/apache/ignite/lang/IgniteUuid;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->syncMsgFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v5, v14}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    :try_start_0
    invoke-static/range {p3 .. p3}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v7, p4

    move/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->sendNotification(Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Collection;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$SyncMessageAckFuture;->get()Ljava/lang/Object;

    .line 754
    .end local v5    # "futId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v14    # "fut":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$SyncMessageAckFuture;
    :cond_5
    :goto_0
    return-void

    .line 739
    .restart local v5    # "futId":Lorg/apache/ignite/lang/IgniteUuid;
    .restart local v14    # "fut":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$SyncMessageAckFuture;
    :catch_0
    move-exception v13

    .line 740
    .local v13, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->syncMsgFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v5}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    throw v13

    .line 748
    .end local v5    # "futId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v13    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v14    # "fut":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$SyncMessageAckFuture;
    :cond_6
    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->add(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v10

    .line 750
    .local v10, "toSnd":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    if-eqz v10, :cond_5

    .line 751
    const/4 v9, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v11, p4

    move/from16 v12, p6

    invoke-direct/range {v6 .. v12}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->sendNotification(Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Collection;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public collectDiscoveryData(Ljava/util/UUID;)Ljava/lang/Object;
    .locals 11
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 322
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 323
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->pendingLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 327
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->pending:Ljava/util/Map;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    new-instance v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;-><init>(Ljava/util/UUID;)V

    .line 333
    .local v0, "data":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->locInfos:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 334
    .local v8, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    .line 335
    .local v2, "routineId":Ljava/util/UUID;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;

    .line 337
    .local v10, "info":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;
    new-instance v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;->prjPred:Lorg/apache/ignite/lang/IgnitePredicate;
    invoke-static {v10}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;->access$2300(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v3

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;->hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    invoke-static {v10}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;->access$2400(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;)Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    move-result-object v4

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;->bufSize:I
    invoke-static {v10}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;->access$2500(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;)I

    move-result v5

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;->interval:J
    invoke-static {v10}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;->access$2600(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;)J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;-><init>(Ljava/util/UUID;Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;IJ)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;->addItem(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 344
    .end local v0    # "data":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;
    .end local v2    # "routineId":Ljava/util/UUID;
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "info":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;
    :catchall_0
    move-exception v1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->pendingLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .restart local v0    # "data":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->pendingLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 348
    .end local v0    # "data":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;
    .end local v9    # "i$":Ljava/util/Iterator;
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public discoveryDataType()Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 317
    sget-object v0, Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;->CONTINUOUS_PROC:Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;

    return-object v0
.end method

.method public onCacheStart(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 8
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 378
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->rmtInfos:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 379
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/UUID;

    .line 380
    .local v4, "routineId":Ljava/util/UUID;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;

    .line 382
    .local v3, "rmtInfo":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;
    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->access$3500(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;)Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    move-result-object v1

    .line 384
    .local v1, "hnd":Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;->isForQuery()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;->cacheName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->clearDelayedRegister()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 385
    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->nodeId:Ljava/util/UUID;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->access$1200(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;)Ljava/util/UUID;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1, v6, v4, v7}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;->register(Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

    move-result-object v5

    .line 387
    .local v5, "status":Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;
    sget-boolean v6, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    sget-object v6, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;->DELAYED:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

    if-ne v5, v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 389
    :cond_1
    sget-object v6, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;->REGISTERED:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

    if-ne v5, v6, :cond_0

    .line 390
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1, v4, v6}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;->onListenerRegistered(Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)V

    goto :goto_0

    .line 393
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;>;"
    .end local v1    # "hnd":Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    .end local v3    # "rmtInfo":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;
    .end local v4    # "routineId":Ljava/util/UUID;
    .end local v5    # "status":Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;
    :cond_2
    return-void
.end method

.method public onCacheStop(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 5
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .prologue
    .line 399
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->rmtInfos:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 401
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 402
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 404
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->access$3500(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;)Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    move-result-object v1

    .line 406
    .local v1, "hnd":Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;->isForQuery()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;->cacheName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 407
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 409
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;>;"
    .end local v1    # "hnd":Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    :cond_1
    return-void
.end method

.method public onDiscoveryDataReceived(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 13
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "rmtNodeId"    # Ljava/util/UUID;
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 353
    move-object/from16 v0, p3

    check-cast v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;

    .line 355
    .local v0, "data":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->isDaemon()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 356
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;->access$2700(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;

    .line 358
    .local v12, "item":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;
    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->prjPred:Lorg/apache/ignite/lang/IgnitePredicate;
    invoke-static {v12}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->access$2800(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v1

    if-eqz v1, :cond_1

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->prjPred:Lorg/apache/ignite/lang/IgnitePredicate;
    invoke-static {v12}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->access$2800(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    :cond_1
    :try_start_0
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;->access$2900(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;)Ljava/util/UUID;

    move-result-object v2

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->routineId:Ljava/util/UUID;
    invoke-static {v12}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->access$3000(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;)Ljava/util/UUID;

    move-result-object v3

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    invoke-static {v12}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->access$3100(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;)Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    move-result-object v4

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->bufSize:I
    invoke-static {v12}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->access$3200(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;)I

    move-result v5

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->interval:J
    invoke-static {v12}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->access$3300(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;)J

    move-result-wide v6

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->autoUnsubscribe:Z
    invoke-static {v12}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->access$3400(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;)Z

    move-result v8

    const/4 v9, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->registerHandler(Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;IJZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    invoke-static {v12}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->access$3100(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;)Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    move-result-object v1

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->routineId:Ljava/util/UUID;
    invoke-static {v12}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->access$3000(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;)Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1, v2, v3}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;->onListenerRegistered(Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 364
    :catch_0
    move-exception v10

    .line 365
    .local v10, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "Failed to register continuous handler."

    invoke-static {v1, v2, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 370
    .end local v10    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "item":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;
    :cond_2
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
    .line 115
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isDaemon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkSendRetryDelay()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->retryDelay:J

    .line 119
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkSendRetryCount()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->retryCnt:I

    .line 120
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ackTimeout:J

    .line 122
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ackTimeout:J

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->retryDelay:J

    iget v4, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->retryCnt:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 123
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acknowledgement timeout for continuous operations is less than message send retry delay multiplied by retries count (will increase timeout value) [ackTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ackTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", retryDelay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->retryDelay:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", retryCnt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->retryCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 127
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->retryDelay:J

    iget v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->retryCnt:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ackTimeout:J

    .line 130
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    .line 132
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$1;-><init>(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)V

    const/16 v2, 0xa

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;I[I)V

    .line 245
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_CONTINUOUS:Lorg/apache/ignite/internal/GridTopic;

    new-instance v2, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$2;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$2;-><init>(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 297
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Continuous processor started."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    :array_0
    .array-data 4
        0xb
        0xc
    .end array-data
.end method

.method public startRoutine(Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;IJZLorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 25
    .param p1, "hnd"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    .param p2, "bufSize"    # I
    .param p3, "interval"    # J
    .param p5, "autoUnsubscribe"    # Z
    .param p6    # Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;",
            "IJZ",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    .local p6, "prjPred":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v4, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 426
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-gtz p2, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 427
    :cond_1
    sget-boolean v4, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-gez v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 430
    :cond_2
    if-eqz p6, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-interface {v0, v4}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/16 v21, 0x1

    .line 433
    .local v21, "locIncluded":Z
    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v24

    .line 435
    .local v24, "routineId":Ljava/util/UUID;
    new-instance v2, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;->clone()Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    move-result-object v4

    move-object/from16 v3, p6

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;-><init>(Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;IJZ)V

    .line 438
    .local v2, "reqData":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 440
    if-eqz p6, :cond_6

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isGrid(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 441
    invoke-static/range {p6 .. p6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v14

    .line 443
    .local v14, "cls":Ljava/lang/Class;
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    .line 445
    .local v15, "clsName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v4

    invoke-static {v14}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v14, v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->deploy(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v16

    .line 447
    .local v16, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-nez v16, :cond_5

    .line 448
    new-instance v4, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to deploy projection predicate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    .end local v14    # "cls":Ljava/lang/Class;
    .end local v15    # "clsName":Ljava/lang/String;
    .end local v16    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :catch_0
    move-exception v17

    .line 461
    .local v17, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v19, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    .line 603
    .end local v17    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_1
    return-object v19

    .line 430
    .end local v2    # "reqData":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;
    .end local v21    # "locIncluded":Z
    .end local v24    # "routineId":Ljava/util/UUID;
    :cond_4
    const/16 v21, 0x0

    goto :goto_0

    .line 450
    .restart local v2    # "reqData":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;
    .restart local v14    # "cls":Ljava/lang/Class;
    .restart local v15    # "clsName":Ljava/lang/String;
    .restart local v16    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .restart local v21    # "locIncluded":Z
    .restart local v24    # "routineId":Ljava/util/UUID;
    :cond_5
    :try_start_1
    # setter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->clsName:Ljava/lang/String;
    invoke-static {v2, v15}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->access$3602(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;Ljava/lang/String;)Ljava/lang/String;

    .line 451
    new-instance v4, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;-><init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;)V

    # setter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    invoke-static {v2, v4}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->access$3702(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;)Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    .line 453
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->p2pMarshal(Lorg/apache/ignite/marshaller/Marshaller;)V

    .line 457
    .end local v14    # "cls":Ljava/lang/Class;
    .end local v15    # "clsName":Ljava/lang/String;
    .end local v16    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :cond_6
    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->access$3800(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;)Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4, v5}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;->p2pMarshal(Lorg/apache/ignite/internal/GridKernalContext;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 465
    :cond_7
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;->orderedTopic()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 466
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;->orderedTopic()Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$3;-><init>(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)V

    invoke-virtual {v4, v5, v6}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 492
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->pendingLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 496
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->allNodes()Ljava/util/Collection;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v8, 0x0

    aput-object p6, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v9}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/F;->remoteNodes(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/F;->and([Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v23

    .line 499
    .local v23, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v21, :cond_9

    .line 500
    new-instance v19, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    new-instance v4, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    const-string v5, "Failed to register remote continuous listener (projection is empty)."

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 519
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->pendingLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_1

    .line 505
    :cond_9
    :try_start_3
    new-instance v22, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->node2id()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/lang/IgnitePredicate;

    move-object/from16 v0, v23

    invoke-static {v0, v4, v5}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>(Ljava/util/Collection;)V

    .line 510
    .local v22, "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->pending:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 511
    .local v18, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/util/Collection<Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;>;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 512
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/Collection;

    move-object v9, v0

    new-instance v3, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    sget-object v4, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->MSG_START_REQ:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, v24

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;-><init>(Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;Z)V

    invoke-interface {v9, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 519
    .end local v18    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/util/Collection<Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;>;>;"
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v22    # "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .end local v23    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->pendingLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .line 516
    .restart local v20    # "i$":Ljava/util/Iterator;
    .restart local v22    # "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .restart local v23    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->locInfos:Ljava/util/concurrent/ConcurrentMap;

    new-instance v4, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;

    move-object/from16 v5, p6

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-wide/from16 v8, p3

    invoke-direct/range {v4 .. v9}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;-><init>(Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;IJ)V

    move-object/from16 v0, v24

    invoke-interface {v10, v0, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 519
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->pendingLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 522
    new-instance v19, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v4, v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;)V

    .line 524
    .local v19, "fut":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    .line 526
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->waitForStartAck:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->startFuts:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    new-instance v4, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$4;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ackTimeout:J

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v4, v0, v6, v7, v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$4;-><init>(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;JLjava/util/UUID;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;->addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 558
    :cond_c
    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    .line 560
    const/4 v4, 0x0

    # setter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->prjPred:Lorg/apache/ignite/lang/IgnitePredicate;
    invoke-static {v2, v4}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->access$4102(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgnitePredicate;

    .line 561
    const/4 v4, 0x0

    # setter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->prjPredBytes:[B
    invoke-static {v2, v4}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->access$4202(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;[B)[B

    .line 565
    :try_start_5
    new-instance v3, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    sget-object v4, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->MSG_START_REQ:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, v24

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;-><init>(Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;Z)V

    .line 567
    .local v3, "req":Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->sendWithRetries(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;Ljava/lang/Object;)V
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 589
    .end local v3    # "req":Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;
    :goto_3
    if-eqz v21, :cond_d

    .line 591
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v6

    const/4 v13, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, v24

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-wide/from16 v10, p3

    move/from16 v12, p5

    invoke-direct/range {v5 .. v13}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->registerHandler(Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;IJZZ)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 592
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v4}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;->onListenerRegistered(Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)V
    :try_end_6
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_2

    .line 601
    :cond_d
    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;->onLocalRegistered()V

    goto/16 :goto_1

    .line 569
    :catch_1
    move-exception v17

    .line 570
    .restart local v17    # "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->startFuts:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, v24

    invoke-interface {v4, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->waitForStartAck:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, v24

    invoke-interface {v4, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 575
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopRoutine(Ljava/util/UUID;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 577
    const/16 v21, 0x0

    .line 578
    goto :goto_3

    .line 582
    .end local v17    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_e
    sget-boolean v4, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v4, :cond_f

    if-nez v21, :cond_f

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 585
    :cond_f
    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;->onRemoteRegistered()V

    goto :goto_3

    .line 594
    :catch_2
    move-exception v17

    .line 595
    .restart local v17    # "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v19, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    .end local v19    # "fut":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to register handler locally: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v4, v5, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_1
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
    .line 303
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isDaemon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_CONTINUOUS:Lorg/apache/ignite/internal/GridTopic;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Lorg/apache/ignite/internal/GridTopic;)Z

    .line 308
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->threads:Ljava/util/Collection;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Iterable;)V

    .line 309
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->threads:Ljava/util/Collection;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->joinThreads(Ljava/lang/Iterable;Lorg/apache/ignite/IgniteLogger;)Z

    .line 311
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Continuous processor stopped."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopRoutine(Ljava/util/UUID;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 22
    .param p1, "routineId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 611
    sget-boolean v2, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 613
    :cond_0
    const/4 v10, 0x0

    .line 615
    .local v10, "doStop":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopFuts:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopFuture;

    .line 618
    .local v12, "fut":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopFuture;
    if-nez v12, :cond_1

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopFuts:Ljava/util/concurrent/ConcurrentMap;

    new-instance v12, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopFuture;

    .end local v12    # "fut":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopFuture;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-direct {v12, v3}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopFuture;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .restart local v12    # "fut":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopFuture;
    move-object/from16 v0, p1

    invoke-interface {v2, v0, v12}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopFuture;

    .line 621
    .local v19, "old":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopFuture;
    if-eqz v19, :cond_3

    .line 622
    move-object/from16 v12, v19

    .line 627
    .end local v19    # "old":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopFuture;
    :cond_1
    :goto_0
    if-eqz v10, :cond_2

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->locInfos:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;

    .line 632
    .local v20, "routine":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;
    if-nez v20, :cond_4

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopFuts:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopFuture;->onDone()Z

    .line 700
    .end local v20    # "routine":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;
    :cond_2
    :goto_1
    return-object v12

    .line 624
    .restart local v19    # "old":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopFuture;
    :cond_3
    const/4 v10, 0x1

    goto :goto_0

    .line 641
    .end local v19    # "old":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopFuture;
    .restart local v20    # "routine":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;
    :cond_4
    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;->hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;->access$2400(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;)Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->unregisterHandler(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;Z)V

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->pendingLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 647
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->pending:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Collection;

    .line 648
    .local v16, "msgs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 650
    .local v15, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;>;"
    :cond_6
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 651
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->routineId()Ljava/util/UUID;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 652
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 657
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;>;"
    .end local v16    # "msgs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;>;"
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->pendingLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->pendingLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->allNodes()Ljava/util/Collection;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v6, 0x0

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;->prjPred:Lorg/apache/ignite/lang/IgnitePredicate;
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;->access$2300(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/F;->remoteNodes(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/F;->and([Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v18

    .line 664
    .local v18, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 666
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->waitForStopAck:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->node2id()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/lang/IgnitePredicate;

    move-object/from16 v0, v18

    invoke-static {v0, v4, v5}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    new-instance v21, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ackTimeout:J

    new-instance v2, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    sget-object v3, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->MSG_STOP_REQ:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;-><init>(Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;Z)V

    move-object/from16 v4, v21

    move-object/from16 v5, p0

    move-wide v6, v8

    move-object/from16 v8, p1

    move-object v9, v2

    invoke-direct/range {v4 .. v9}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;-><init>(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;JLjava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopFuture;->addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 675
    :try_start_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/ignite/cluster/ClusterNode;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 677
    .local v17, "node":Lorg/apache/ignite/cluster/ClusterNode;
    :try_start_2
    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v8

    new-instance v2, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    sget-object v3, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->MSG_STOP_REQ:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;-><init>(Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;Z)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2, v3}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->sendWithRetries(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 681
    :catch_0
    move-exception v14

    .line 682
    .local v14, "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send stop request (node left topology): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 686
    .end local v14    # "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    .end local v17    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :catch_1
    move-exception v11

    .line 687
    .local v11, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopFuts:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->waitForStopAck:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    invoke-virtual {v12, v11}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopFuture;->onDone(Ljava/lang/Throwable;)Z

    goto/16 :goto_1

    .line 694
    .end local v11    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopFuts:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopFuture;->onDone()Z

    goto/16 :goto_1
.end method

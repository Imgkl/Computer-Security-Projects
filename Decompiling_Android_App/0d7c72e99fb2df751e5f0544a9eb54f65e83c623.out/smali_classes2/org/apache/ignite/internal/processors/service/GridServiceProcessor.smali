.class public Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;
.super Lorg/apache/ignite/internal/processors/GridProcessorAdapter;
.source "GridServiceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$BusyRunnable;,
        Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener;,
        Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;,
        Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final RETRY_TIMEOUT:J = 0x3e8L


# instance fields
.field private assignQryId:Ljava/util/UUID;

.field private final busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

.field private cache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private cfgQryId:Ljava/util/UUID;

.field private final depExe:Ljava/util/concurrent/ExecutorService;

.field private final depFuts:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentFuture;",
            ">;"
        }
    .end annotation
.end field

.field private final locSvcs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private svcName:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private threadFactory:Ljava/util/concurrent/ThreadFactory;

.field private topLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

.field private final undepFuts:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->locSvcs:Ljava/util/Map;

    .line 66
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->depFuts:Ljava/util/concurrent/ConcurrentMap;

    .line 69
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->undepFuts:Ljava/util/concurrent/ConcurrentMap;

    .line 72
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->depExe:Ljava/util/concurrent/ExecutorService;

    .line 75
    new-instance v0, Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    .line 78
    new-instance v0, Lorg/apache/ignite/thread/IgniteThreadFactory;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/thread/IgniteThreadFactory;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 81
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->svcName:Ljava/lang/ThreadLocal;

    .line 87
    new-instance v0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;-><init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->topLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    .line 100
    return-void
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Ljava/lang/ThreadLocal;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->svcName:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->locSvcs:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;Ljava/lang/Iterable;I)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;
    .param p1, "x1"    # Ljava/lang/Iterable;
    .param p2, "x2"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cancel(Ljava/lang/Iterable;I)V

    return-void
.end method

.method static synthetic access$1600(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->depFuts:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->undepFuts:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->depExe:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;J)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;
    .param p2, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->reassign(Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;J)V

    return-void
.end method

.method static synthetic access$2400(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/util/GridSpinBusyLock;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$3800(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$4100(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$4200(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->redeploy(Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;)V

    return-void
.end method

.method static synthetic access$4300(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method private cancel(Ljava/lang/Iterable;I)V
    .locals 7
    .param p2, "cancelCnt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "ctxs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;>;"
    const/16 v6, 0x5d

    .line 862
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 863
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;

    .line 866
    .local v2, "svcCtx":Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->setCancelled(Z)V

    .line 870
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->service()Lorg/apache/ignite/services/Service;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/ignite/services/Service;->cancel(Lorg/apache/ignite/services/ServiceContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 878
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->service()Lorg/apache/ignite/services/Service;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->cleanup(Lorg/apache/ignite/services/Service;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 887
    :goto_0
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 889
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 891
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 892
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cancelled service instance [name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", execId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->executionId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    .line 895
    :cond_1
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_0

    .line 898
    .end local v2    # "svcCtx":Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;
    :cond_2
    return-void

    .line 880
    .restart local v2    # "svcCtx":Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;
    :catch_0
    move-exception v0

    .line 881
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to clean up service (will ignore): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 872
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_1
    move-exception v0

    .line 873
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to cancel service (ignoring) [name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", execId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->executionId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 878
    :try_start_3
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->service()Lorg/apache/ignite/services/Service;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->cleanup(Lorg/apache/ignite/services/Service;)V
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 880
    :catch_2
    move-exception v0

    .line 881
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to clean up service (will ignore): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 877
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v3

    .line 878
    :try_start_4
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->service()Lorg/apache/ignite/services/Service;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->cleanup(Lorg/apache/ignite/services/Service;)V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_3

    .line 882
    :goto_1
    throw v3

    .line 880
    :catch_3
    move-exception v0

    .line 881
    .restart local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to clean up service (will ignore): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private copyAndInject(Lorg/apache/ignite/services/Service;)Lorg/apache/ignite/services/Service;
    .locals 7
    .param p1, "svc"    # Lorg/apache/ignite/services/Service;

    .prologue
    .line 839
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v3

    .line 842
    .local v3, "m":Lorg/apache/ignite/marshaller/Marshaller;
    :try_start_0
    invoke-interface {v3, p1}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v0

    .line 844
    .local v0, "bytes":[B
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/services/Service;

    .line 846
    .local v1, "cp":Lorg/apache/ignite/services/Service;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->inject(Lorg/apache/ignite/services/Service;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    .end local v0    # "bytes":[B
    .end local v1    # "cp":Lorg/apache/ignite/services/Service;
    :goto_0
    return-object v1

    .line 850
    :catch_0
    move-exception v2

    .line 851
    .local v2, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to copy service (will reuse same instance): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, p1

    .line 853
    goto :goto_0
.end method

.method private ensure(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "cond"    # Z
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "v"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 237
    if-nez p1, :cond_1

    .line 238
    if-eqz p3, :cond_0

    .line 239
    new-instance v0, Lorg/apache/ignite/IgniteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service configuration check failed ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    new-instance v0, Lorg/apache/ignite/IgniteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service configuration check failed ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_1
    return-void
.end method

.method private hasLocalNode(Lorg/apache/ignite/cluster/ClusterGroup;)Z
    .locals 3
    .param p1, "prj"    # Lorg/apache/ignite/cluster/ClusterGroup;

    .prologue
    .line 564
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterGroup;->nodes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .line 565
    .local v1, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 566
    const/4 v2, 0x1

    .line 569
    .end local v1    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private reassign(Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;J)V
    .locals 32
    .param p1, "dep"    # Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;
    .param p2, "topVer"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 606
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->configuration()Lorg/apache/ignite/services/ServiceConfiguration;

    move-result-object v7

    .line 608
    .local v7, "cfg":Lorg/apache/ignite/services/ServiceConfiguration;
    invoke-virtual {v7}, Lorg/apache/ignite/services/ServiceConfiguration;->getTotalCount()I

    move-result v22

    .line 609
    .local v22, "totalCnt":I
    invoke-virtual {v7}, Lorg/apache/ignite/services/ServiceConfiguration;->getMaxPerNodeCount()I

    move-result v15

    .line 610
    .local v15, "maxPerNodeCnt":I
    invoke-virtual {v7}, Lorg/apache/ignite/services/ServiceConfiguration;->getCacheName()Ljava/lang/String;

    move-result-object v6

    .line 611
    .local v6, "cacheName":Ljava/lang/String;
    invoke-virtual {v7}, Lorg/apache/ignite/services/ServiceConfiguration;->getAffinityKey()Ljava/lang/Object;

    move-result-object v4

    .line 614
    .local v4, "affKey":Ljava/lang/Object;
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-object/from16 v26, v0

    sget-object v27, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v28, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-interface/range {v26 .. v28}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_end_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v23

    .local v23, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    const/16 v27, 0x0

    .line 615
    :try_start_1
    new-instance v14, Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;

    invoke-virtual {v7}, Lorg/apache/ignite/services/ServiceConfiguration;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v14, v0}, Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;-><init>(Ljava/lang/String;)V

    .line 617
    .local v14, "key":Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;

    .line 619
    .local v18, "oldAssigns":Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;
    new-instance v5, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->nodeId()Ljava/util/UUID;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, p2

    invoke-direct {v5, v7, v0, v1, v2}, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;-><init>(Lorg/apache/ignite/services/ServiceConfiguration;Ljava/util/UUID;J)V

    .line 621
    .local v5, "assigns":Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 623
    .local v9, "cnts":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/lang/Integer;>;"
    if-eqz v4, :cond_4

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/apache/ignite/internal/GridKernalContext;->affinity()Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    move-result-object v26

    new-instance v28, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-object/from16 v0, v28

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v6, v4, v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->mapKeyToNode(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v16

    .line 626
    .local v16, "n":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v16, :cond_0

    .line 627
    if-nez v15, :cond_3

    if-nez v22, :cond_2

    const/4 v8, 0x1

    .line 629
    .local v8, "cnt":I
    :goto_1
    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v26

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    .end local v8    # "cnt":I
    .end local v16    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_0
    :goto_2
    invoke-virtual {v5, v9}, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->assigns(Ljava/util/Map;)V

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-object/from16 v26, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v14, v5, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->put(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    .line 718
    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 721
    if-eqz v23, :cond_1

    if-eqz v27, :cond_13

    :try_start_2
    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 729
    :cond_1
    :goto_3
    return-void

    .restart local v16    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_2
    move/from16 v8, v22

    .line 627
    goto :goto_1

    :cond_3
    move v8, v15

    goto :goto_1

    .line 633
    .end local v16    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_4
    :try_start_3
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->nodeFilter()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v26

    if-nez v26, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->nodes(J)Ljava/util/Collection;

    move-result-object v17

    .line 638
    .local v17, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_0

    .line 639
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->size()I

    move-result v21

    .line 641
    .local v21, "size":I
    if-eqz v22, :cond_9

    div-int v19, v22, v21

    .line 642
    .local v19, "perNodeCnt":I
    :goto_5
    if-eqz v22, :cond_a

    rem-int v20, v22, v21

    .line 644
    .local v20, "remainder":I
    :goto_6
    move/from16 v0, v19

    if-le v0, v15, :cond_5

    if-eqz v15, :cond_5

    .line 645
    move/from16 v19, v15

    .line 646
    const/16 v20, 0x0

    .line 649
    :cond_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/ignite/cluster/ClusterNode;

    .line 650
    .restart local v16    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v26

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    .line 614
    .end local v5    # "assigns":Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;
    .end local v9    # "cnts":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/lang/Integer;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "key":Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;
    .end local v16    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v17    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v18    # "oldAssigns":Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;
    .end local v19    # "perNodeCnt":I
    .end local v20    # "remainder":I
    .end local v21    # "size":I
    :catch_0
    move-exception v26

    :try_start_4
    throw v26
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 721
    :catchall_0
    move-exception v27

    move-object/from16 v31, v27

    move-object/from16 v27, v26

    move-object/from16 v26, v31

    :goto_8
    if-eqz v23, :cond_6

    if-eqz v27, :cond_14

    :try_start_5
    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_6
    :goto_9
    :try_start_6
    throw v26
    :try_end_6
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_6 .. :try_end_6} :catch_1

    .line 722
    .end local v23    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :catch_1
    move-exception v10

    .line 723
    .local v10, "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v26

    if-eqz v26, :cond_7

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Topology changed while reassigning (will retry): "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v10}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 726
    :cond_7
    const-wide/16 v26, 0xa

    invoke-static/range {v26 .. v27}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V

    goto/16 :goto_0

    .line 633
    .end local v10    # "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    .restart local v5    # "assigns":Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;
    .restart local v9    # "cnts":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/lang/Integer;>;"
    .restart local v14    # "key":Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;
    .restart local v18    # "oldAssigns":Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;
    .restart local v23    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_8
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->nodes(J)Ljava/util/Collection;

    move-result-object v26

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Lorg/apache/ignite/lang/IgnitePredicate;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->nodeFilter()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v17

    goto/16 :goto_4

    .restart local v17    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .restart local v21    # "size":I
    :cond_9
    move/from16 v19, v15

    .line 641
    goto/16 :goto_5

    .line 642
    .restart local v19    # "perNodeCnt":I
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_6

    .line 652
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v20    # "remainder":I
    :cond_b
    sget-boolean v26, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->$assertionsDisabled:Z

    if-nez v26, :cond_c

    if-gez v19, :cond_c

    new-instance v26, Ljava/lang/AssertionError;

    invoke-direct/range {v26 .. v26}, Ljava/lang/AssertionError;-><init>()V

    throw v26

    .line 721
    .end local v5    # "assigns":Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;
    .end local v9    # "cnts":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/lang/Integer;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "key":Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;
    .end local v17    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v18    # "oldAssigns":Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;
    .end local v19    # "perNodeCnt":I
    .end local v20    # "remainder":I
    .end local v21    # "size":I
    :catchall_1
    move-exception v26

    goto :goto_8

    .line 653
    .restart local v5    # "assigns":Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;
    .restart local v9    # "cnts":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/lang/Integer;>;"
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v14    # "key":Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;
    .restart local v17    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .restart local v18    # "oldAssigns":Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;
    .restart local v19    # "perNodeCnt":I
    .restart local v20    # "remainder":I
    .restart local v21    # "size":I
    :cond_c
    sget-boolean v26, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->$assertionsDisabled:Z

    if-nez v26, :cond_d

    if-gez v20, :cond_d

    new-instance v26, Ljava/lang/AssertionError;

    invoke-direct/range {v26 .. v26}, Ljava/lang/AssertionError;-><init>()V

    throw v26

    .line 655
    :cond_d
    if-lez v20, :cond_0

    .line 656
    add-int/lit8 v8, v19, 0x1

    .line 658
    .restart local v8    # "cnt":I
    if-eqz v18, :cond_11

    .line 659
    new-instance v24, Ljava/util/HashSet;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashSet;-><init>()V

    .line 662
    .local v24, "used":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->assigns()Ljava/util/Map;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 664
    .local v11, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v28

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/UUID;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v26

    if-eqz v26, :cond_e

    .line 668
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move/from16 v0, v26

    if-ne v0, v8, :cond_e

    .line 669
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 673
    add-int/lit8 v20, v20, -0x1

    if-nez v20, :cond_e

    .line 678
    .end local v11    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/lang/Integer;>;"
    :cond_f
    if-lez v20, :cond_0

    .line 679
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 682
    .local v12, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/lang/Integer;>;>;"
    invoke-static {v12}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 684
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_10
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 686
    .restart local v11    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_10

    .line 687
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move/from16 v0, v26

    if-ge v0, v15, :cond_10

    .line 688
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    add-int/lit8 v26, v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v11, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    add-int/lit8 v20, v20, -0x1

    if-nez v20, :cond_10

    goto/16 :goto_2

    .line 698
    .end local v11    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/lang/Integer;>;"
    .end local v12    # "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/lang/Integer;>;>;"
    .end local v24    # "used":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :cond_11
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 701
    .restart local v12    # "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/lang/Integer;>;>;"
    invoke-static {v12}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 703
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_12
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 704
    .restart local v11    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    add-int/lit8 v26, v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v11, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 706
    add-int/lit8 v20, v20, -0x1

    if-nez v20, :cond_12

    goto/16 :goto_2

    .line 721
    .end local v8    # "cnt":I
    .end local v11    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/lang/Integer;>;"
    .end local v12    # "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/lang/Integer;>;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v17    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v19    # "perNodeCnt":I
    .end local v20    # "remainder":I
    .end local v21    # "size":I
    :catch_2
    move-exception v25

    .local v25, "x2":Ljava/lang/Throwable;
    :try_start_8
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .end local v25    # "x2":Ljava/lang/Throwable;
    :cond_13
    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto/16 :goto_3

    .end local v5    # "assigns":Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;
    .end local v9    # "cnts":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/lang/Integer;>;"
    .end local v14    # "key":Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;
    .end local v18    # "oldAssigns":Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;
    :catch_3
    move-exception v25

    .restart local v25    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .end local v25    # "x2":Ljava/lang/Throwable;
    :cond_14
    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_8
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_9
.end method

.method private redeploy(Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;)V
    .locals 15
    .param p1, "assigns"    # Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;

    .prologue
    .line 737
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->name()Ljava/lang/String;

    move-result-object v14

    .line 739
    .local v14, "svcName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->assigns()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 741
    .local v7, "assignCnt":Ljava/lang/Integer;
    if-nez v7, :cond_0

    .line 742
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 744
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->service()Lorg/apache/ignite/services/Service;

    move-result-object v13

    .line 748
    .local v13, "svc":Lorg/apache/ignite/services/Service;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->locSvcs:Ljava/util/Map;

    monitor-enter v2

    .line 749
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->locSvcs:Ljava/util/Map;

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    .line 751
    .local v10, "ctxs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;>;"
    if-nez v10, :cond_1

    .line 752
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->locSvcs:Ljava/util/Map;

    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "ctxs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .restart local v10    # "ctxs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;>;"
    invoke-interface {v1, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    monitor-enter v10

    .line 756
    :try_start_1
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 757
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v8, v1, v2

    .line 759
    .local v8, "cancelCnt":I
    invoke-direct {p0, v10, v8}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cancel(Ljava/lang/Iterable;I)V

    .line 831
    .end local v8    # "cancelCnt":I
    :cond_2
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 832
    :goto_0
    return-void

    .line 753
    .end local v10    # "ctxs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;>;"
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 761
    .restart local v10    # "ctxs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;>;"
    :cond_3
    :try_start_3
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 762
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v2

    sub-int v9, v1, v2

    .line 764
    .local v9, "createCnt":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v9, :cond_2

    .line 765
    invoke-direct {p0, v13}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->copyAndInject(Lorg/apache/ignite/services/Service;)Lorg/apache/ignite/services/Service;

    move-result-object v5

    .line 767
    .local v5, "cp":Lorg/apache/ignite/services/Service;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    .line 769
    .local v6, "exe":Ljava/util/concurrent/ExecutorService;
    new-instance v0, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->cacheName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->affinityKey()Ljava/lang/Object;

    move-result-object v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;-><init>(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/services/Service;Ljava/util/concurrent/ExecutorService;)V

    .line 772
    .local v0, "svcCtx":Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;
    invoke-interface {v10, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 776
    :try_start_4
    invoke-interface {v5, v0}, Lorg/apache/ignite/services/Service;->init(Lorg/apache/ignite/services/ServiceContext;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 792
    :try_start_5
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 793
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service instance [name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", execId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->executionId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    .line 797
    :cond_4
    new-instance v1, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;

    invoke-direct {v1, p0, v5, v0, v6}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;-><init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;Lorg/apache/ignite/services/Service;Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;Ljava/util/concurrent/ExecutorService;)V

    invoke-interface {v6, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 764
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 778
    :catch_0
    move-exception v11

    .line 779
    .local v11, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to initialize service (service will not be deployed): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v11}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 781
    invoke-interface {v10, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 783
    instance-of v1, v11, Ljava/lang/Error;

    if-eqz v1, :cond_5

    .line 784
    check-cast v11, Ljava/lang/Error;

    .end local v11    # "e":Ljava/lang/Throwable;
    throw v11

    .line 831
    .end local v0    # "svcCtx":Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;
    .end local v5    # "cp":Lorg/apache/ignite/services/Service;
    .end local v6    # "exe":Ljava/util/concurrent/ExecutorService;
    .end local v9    # "createCnt":I
    .end local v12    # "i":I
    :catchall_1
    move-exception v1

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 786
    .restart local v0    # "svcCtx":Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;
    .restart local v5    # "cp":Lorg/apache/ignite/services/Service;
    .restart local v6    # "exe":Ljava/util/concurrent/ExecutorService;
    .restart local v9    # "createCnt":I
    .restart local v11    # "e":Ljava/lang/Throwable;
    .restart local v12    # "i":I
    :cond_5
    :try_start_6
    instance-of v1, v11, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_6

    .line 787
    check-cast v11, Ljava/lang/RuntimeException;

    .end local v11    # "e":Ljava/lang/Throwable;
    throw v11

    .line 789
    .restart local v11    # "e":Ljava/lang/Throwable;
    :cond_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_0
.end method

.method private validate(Lorg/apache/ignite/services/ServiceConfiguration;)V
    .locals 8
    .param p1, "c"    # Lorg/apache/ignite/services/ServiceConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 216
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    .line 218
    .local v0, "cfg":Lorg/apache/ignite/configuration/IgniteConfiguration;
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v1

    .line 220
    .local v1, "depMode":Lorg/apache/ignite/configuration/DeploymentMode;
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lorg/apache/ignite/configuration/DeploymentMode;->PRIVATE:Lorg/apache/ignite/configuration/DeploymentMode;

    if-eq v1, v2, :cond_0

    sget-object v2, Lorg/apache/ignite/configuration/DeploymentMode;->ISOLATED:Lorg/apache/ignite/configuration/DeploymentMode;

    if-ne v1, v2, :cond_1

    .line 221
    :cond_0
    new-instance v2, Lorg/apache/ignite/IgniteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot deploy services in PRIVATE or ISOLATED deployment mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 223
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/services/ServiceConfiguration;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    const-string v5, "getName() != null"

    invoke-direct {p0, v2, v5, v7}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ensure(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 224
    invoke-virtual {p1}, Lorg/apache/ignite/services/ServiceConfiguration;->getTotalCount()I

    move-result v2

    if-ltz v2, :cond_5

    move v2, v3

    :goto_1
    const-string v5, "getTotalCount() >= 0"

    invoke-virtual {p1}, Lorg/apache/ignite/services/ServiceConfiguration;->getTotalCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v2, v5, v6}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ensure(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 225
    invoke-virtual {p1}, Lorg/apache/ignite/services/ServiceConfiguration;->getMaxPerNodeCount()I

    move-result v2

    if-ltz v2, :cond_6

    move v2, v3

    :goto_2
    const-string v5, "getMaxPerNodeCount() >= 0"

    invoke-virtual {p1}, Lorg/apache/ignite/services/ServiceConfiguration;->getMaxPerNodeCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v2, v5, v6}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ensure(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 226
    invoke-virtual {p1}, Lorg/apache/ignite/services/ServiceConfiguration;->getService()Lorg/apache/ignite/services/Service;

    move-result-object v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_3
    const-string v5, "getService() != null"

    invoke-virtual {p1}, Lorg/apache/ignite/services/ServiceConfiguration;->getService()Lorg/apache/ignite/services/Service;

    move-result-object v6

    invoke-direct {p0, v2, v5, v6}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ensure(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 227
    invoke-virtual {p1}, Lorg/apache/ignite/services/ServiceConfiguration;->getTotalCount()I

    move-result v2

    if-gtz v2, :cond_2

    invoke-virtual {p1}, Lorg/apache/ignite/services/ServiceConfiguration;->getMaxPerNodeCount()I

    move-result v2

    if-lez v2, :cond_3

    :cond_2
    move v4, v3

    :cond_3
    const-string v2, "c.getTotalCount() > 0 || c.getMaxPerNodeCount() > 0"

    invoke-direct {p0, v4, v2, v7}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ensure(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 229
    return-void

    :cond_4
    move v2, v4

    .line 223
    goto :goto_0

    :cond_5
    move v2, v4

    .line 224
    goto :goto_1

    :cond_6
    move v2, v4

    .line 225
    goto :goto_2

    :cond_7
    move v2, v4

    .line 226
    goto :goto_3
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 402
    :cond_0
    :goto_0
    :try_start_0
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {v1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 406
    .local v1, "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<*>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->undepFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .local v3, "old":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<*>;"
    if-eqz v3, :cond_2

    .line 407
    move-object v1, v3

    .line 428
    .end local v1    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<*>;"
    .end local v3    # "old":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<*>;"
    :cond_1
    :goto_1
    return-object v1

    .line 409
    .restart local v1    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<*>;"
    .restart local v3    # "old":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<*>;"
    :cond_2
    new-instance v2, Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentKey;

    invoke-direct {v2, p1}, Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentKey;-><init>(Ljava/lang/String;)V

    .line 411
    .local v2, "key":Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentKey;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v4, v2, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->remove(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 413
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->undepFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 421
    .end local v1    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<*>;"
    .end local v2    # "key":Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentKey;
    .end local v3    # "old":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<*>;"
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 423
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Topology changed while deploying service (will retry): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 425
    .end local v0    # "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :catch_1
    move-exception v0

    .line 426
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to undeploy service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 428
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public cancelAll()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 438
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v2, "futs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/IgniteInternalFuture<*>;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->entrySetx([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/cache/Cache$Entry;

    .line 441
    .local v1, "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentKey;

    if-eqz v4, :cond_0

    .line 444
    invoke-interface {v1}, Ljavax/cache/Cache$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;

    .line 447
    .local v0, "dep":Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->configuration()Lorg/apache/ignite/services/ServiceConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/services/ServiceConfiguration;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cancel(Ljava/lang/String;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 450
    .end local v0    # "dep":Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;
    .end local v1    # "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v4}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v2}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;-><init>(Lorg/apache/ignite/lang/IgniteReducer;Ljava/lang/Iterable;)V

    goto :goto_1
.end method

.method public deploy(Lorg/apache/ignite/services/ServiceConfiguration;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 14
    .param p1, "cfg"    # Lorg/apache/ignite/services/ServiceConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/services/ServiceConfiguration;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/16 v12, 0x5d

    const/4 v11, 0x0

    .line 309
    const-string v8, "cfg"

    invoke-static {p1, v8}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->validate(Lorg/apache/ignite/services/ServiceConfiguration;)V

    .line 313
    new-instance v4, Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentFuture;

    invoke-direct {v4, p1}, Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentFuture;-><init>(Lorg/apache/ignite/services/ServiceConfiguration;)V

    .line 315
    .local v4, "fut":Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentFuture;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->depFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/services/ServiceConfiguration;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentFuture;

    .line 317
    .local v7, "old":Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentFuture;
    if-eqz v7, :cond_2

    .line 318
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentFuture;->configuration()Lorg/apache/ignite/services/ServiceConfiguration;

    move-result-object v8

    invoke-virtual {v8, p1}, Lorg/apache/ignite/services/ServiceConfiguration;->equalsIgnoreNodeFilter(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 319
    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to deploy service (service already exists with different configuration) [deployed="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentFuture;->configuration()Lorg/apache/ignite/services/ServiceConfiguration;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", new="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 390
    .end local v4    # "fut":Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentFuture;
    :cond_0
    :goto_0
    return-object v4

    .restart local v4    # "fut":Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentFuture;
    :cond_1
    move-object v4, v7

    .line 325
    goto :goto_0

    .line 376
    :catch_0
    move-exception v2

    .line 377
    .local v2, "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 378
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Topology changed while deploying service (will retry): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 330
    .end local v2    # "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :cond_2
    :goto_1
    :try_start_0
    new-instance v6, Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentKey;

    invoke-virtual {p1}, Lorg/apache/ignite/services/ServiceConfiguration;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentKey;-><init>(Ljava/lang/String;)V

    .line 332
    .local v6, "key":Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentKey;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->enabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 333
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->ignoreOwnership(Z)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 336
    :cond_3
    :try_start_1
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    new-instance v9, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v10}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v10

    invoke-direct {v9, v10, p1}, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;-><init>(Ljava/util/UUID;Lorg/apache/ignite/services/ServiceConfiguration;)V

    invoke-interface {v8, v6, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;

    .line 339
    .local v1, "dep":Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;
    if-eqz v1, :cond_4

    .line 340
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->configuration()Lorg/apache/ignite/services/ServiceConfiguration;

    move-result-object v8

    invoke-virtual {v8, p1}, Lorg/apache/ignite/services/ServiceConfiguration;->equalsIgnoreNodeFilter(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 342
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->depFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/services/ServiceConfiguration;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 344
    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to deploy service (service already exists with different configuration) [deployed="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->configuration()Lorg/apache/ignite/services/ServiceConfiguration;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", new="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentFuture;->onDone(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    :cond_4
    :goto_2
    :try_start_2
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->enabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 371
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->ignoreOwnership(Z)V
    :try_end_2
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 380
    .end local v1    # "dep":Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;
    .end local v6    # "key":Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentKey;
    :catch_1
    move-exception v2

    .line 381
    .local v2, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-array v8, v13, [Ljava/lang/Class;

    const-class v9, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    aput-object v9, v8, v11

    invoke-virtual {v2, v8}, Lorg/apache/ignite/IgniteCheckedException;->hasCause([Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 382
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 383
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Topology changed while deploying service (will retry): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 348
    .end local v2    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "dep":Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;
    .restart local v6    # "key":Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentKey;
    :cond_5
    :try_start_3
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    const/4 v9, 0x0

    new-array v9, v9, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v8, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->entrySetx([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/cache/Cache$Entry;

    .line 349
    .local v3, "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;

    if-eqz v8, :cond_6

    .line 350
    invoke-interface {v3}, Ljavax/cache/Cache$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;

    .line 352
    .local v0, "assigns":Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lorg/apache/ignite/services/ServiceConfiguration;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 354
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->depFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/services/ServiceConfiguration;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 356
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentFuture;->onDone()Z

    .line 363
    .end local v0    # "assigns":Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;
    .end local v3    # "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_7
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->configuration()Lorg/apache/ignite/services/ServiceConfiguration;

    move-result-object v8

    invoke-virtual {v8, p1}, Lorg/apache/ignite/services/ServiceConfiguration;->equalsIgnoreNodeFilter(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 364
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Service already deployed with different configuration (will ignore) [deployed="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->configuration()Lorg/apache/ignite/services/ServiceConfiguration;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", new="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 370
    .end local v1    # "dep":Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    :try_start_4
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v9}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->enabled()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 371
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v9}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->ignoreOwnership(Z)V

    :cond_8
    throw v8
    :try_end_4
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 388
    .end local v6    # "key":Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentKey;
    .restart local v2    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_9
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to deploy service: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lorg/apache/ignite/services/ServiceConfiguration;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 390
    new-instance v4, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    .end local v4    # "fut":Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentFuture;
    invoke-direct {v4, v2}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public deployClusterSingleton(Lorg/apache/ignite/cluster/ClusterGroup;Ljava/lang/String;Lorg/apache/ignite/services/Service;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
    .param p1, "prj"    # Lorg/apache/ignite/cluster/ClusterGroup;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "svc"    # Lorg/apache/ignite/services/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterGroup;",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/services/Service;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 259
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->deployMultiple(Lorg/apache/ignite/cluster/ClusterGroup;Ljava/lang/String;Lorg/apache/ignite/services/Service;II)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public deployKeyAffinitySingleton(Ljava/lang/String;Lorg/apache/ignite/services/Service;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "svc"    # Lorg/apache/ignite/services/Service;
    .param p3, "cacheName"    # Ljava/lang/String;
    .param p4, "affKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/services/Service;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 290
    const-string v1, "affKey"

    invoke-static {p4, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    new-instance v0, Lorg/apache/ignite/services/ServiceConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/services/ServiceConfiguration;-><init>()V

    .line 294
    .local v0, "cfg":Lorg/apache/ignite/services/ServiceConfiguration;
    invoke-virtual {v0, p1}, Lorg/apache/ignite/services/ServiceConfiguration;->setName(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0, p2}, Lorg/apache/ignite/services/ServiceConfiguration;->setService(Lorg/apache/ignite/services/Service;)V

    .line 296
    invoke-virtual {v0, p3}, Lorg/apache/ignite/services/ServiceConfiguration;->setCacheName(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0, p4}, Lorg/apache/ignite/services/ServiceConfiguration;->setAffinityKey(Ljava/lang/Object;)V

    .line 298
    invoke-virtual {v0, v2}, Lorg/apache/ignite/services/ServiceConfiguration;->setTotalCount(I)V

    .line 299
    invoke-virtual {v0, v2}, Lorg/apache/ignite/services/ServiceConfiguration;->setMaxPerNodeCount(I)V

    .line 301
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->deploy(Lorg/apache/ignite/services/ServiceConfiguration;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    return-object v1
.end method

.method public deployMultiple(Lorg/apache/ignite/cluster/ClusterGroup;Ljava/lang/String;Lorg/apache/ignite/services/Service;II)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p1, "prj"    # Lorg/apache/ignite/cluster/ClusterGroup;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "svc"    # Lorg/apache/ignite/services/Service;
    .param p4, "totalCnt"    # I
    .param p5, "maxPerNodeCnt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterGroup;",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/services/Service;",
            "II)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 271
    new-instance v0, Lorg/apache/ignite/services/ServiceConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/services/ServiceConfiguration;-><init>()V

    .line 273
    .local v0, "cfg":Lorg/apache/ignite/services/ServiceConfiguration;
    invoke-virtual {v0, p2}, Lorg/apache/ignite/services/ServiceConfiguration;->setName(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0, p3}, Lorg/apache/ignite/services/ServiceConfiguration;->setService(Lorg/apache/ignite/services/Service;)V

    .line 275
    invoke-virtual {v0, p4}, Lorg/apache/ignite/services/ServiceConfiguration;->setTotalCount(I)V

    .line 276
    invoke-virtual {v0, p5}, Lorg/apache/ignite/services/ServiceConfiguration;->setMaxPerNodeCount(I)V

    .line 277
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysTrue()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterGroup;->predicate()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/apache/ignite/services/ServiceConfiguration;->setNodeFilter(Lorg/apache/ignite/lang/IgnitePredicate;)V

    .line 279
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->deploy(Lorg/apache/ignite/services/ServiceConfiguration;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    return-object v1

    .line 277
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterGroup;->predicate()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v1

    goto :goto_0
.end method

.method public deployNodeSingleton(Lorg/apache/ignite/cluster/ClusterGroup;Ljava/lang/String;Lorg/apache/ignite/services/Service;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
    .param p1, "prj"    # Lorg/apache/ignite/cluster/ClusterGroup;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "svc"    # Lorg/apache/ignite/services/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterGroup;",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/services/Service;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 250
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->deployMultiple(Lorg/apache/ignite/cluster/ClusterGroup;Ljava/lang/String;Lorg/apache/ignite/services/Service;II)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public onKernalStart()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 119
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->isDaemon()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->utilityCache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    .line 124
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->topLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    sget-object v9, Lorg/apache/ignite/events/EventType;->EVTS_DISCOVERY:[I

    invoke-virtual {v7, v8, v9}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)V

    .line 127
    :try_start_0
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->enabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 128
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->ignoreOwnership(Z)V

    .line 130
    :cond_2
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->continuousQueries()Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    move-result-object v7

    new-instance v8, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;-><init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v7, v8, v9, v10, v11}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->executeInternalQuery(Ljavax/cache/event/CacheEntryUpdatedListener;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;ZZ)Ljava/util/UUID;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cfgQryId:Ljava/util/UUID;

    .line 133
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->continuousQueries()Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    move-result-object v7

    new-instance v8, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener;-><init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v7, v8, v9, v10, v11}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->executeInternalQuery(Ljavax/cache/event/CacheEntryUpdatedListener;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;ZZ)Ljava/util/UUID;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->assignQryId:Ljava/util/UUID;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->enabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 138
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v7

    invoke-virtual {v7, v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->ignoreOwnership(Z)V

    .line 141
    :cond_3
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getServiceConfiguration()[Lorg/apache/ignite/services/ServiceConfiguration;

    move-result-object v2

    .line 143
    .local v2, "cfgs":[Lorg/apache/ignite/services/ServiceConfiguration;
    if-eqz v2, :cond_6

    .line 144
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v4, "futs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/IgniteInternalFuture<*>;>;"
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getServiceConfiguration()[Lorg/apache/ignite/services/ServiceConfiguration;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/ignite/services/ServiceConfiguration;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_5

    aget-object v1, v0, v5

    .line 147
    .local v1, "c":Lorg/apache/ignite/services/ServiceConfiguration;
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->deploy(Lorg/apache/ignite/services/ServiceConfiguration;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 137
    .end local v0    # "arr$":[Lorg/apache/ignite/services/ServiceConfiguration;
    .end local v1    # "c":Lorg/apache/ignite/services/ServiceConfiguration;
    .end local v2    # "cfgs":[Lorg/apache/ignite/services/ServiceConfiguration;
    .end local v4    # "futs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/IgniteInternalFuture<*>;>;"
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->enabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 138
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v8

    invoke-virtual {v8, v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->ignoreOwnership(Z)V

    :cond_4
    throw v7

    .line 150
    .restart local v0    # "arr$":[Lorg/apache/ignite/services/ServiceConfiguration;
    .restart local v2    # "cfgs":[Lorg/apache/ignite/services/ServiceConfiguration;
    .restart local v4    # "futs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/IgniteInternalFuture<*>;>;"
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_5
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 151
    .local v3, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    invoke-interface {v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    goto :goto_2

    .line 154
    .end local v0    # "arr$":[Lorg/apache/ignite/services/ServiceConfiguration;
    .end local v3    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    .end local v4    # "futs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/IgniteInternalFuture<*>;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "len$":I
    :cond_6
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 155
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v8, "Started service processor."

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onKernalStop(Z)V
    .locals 9
    .param p1, "cancel"    # Z

    .prologue
    .line 160
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->isDaemon()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->block()V

    .line 165
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->topLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/4 v7, 0x0

    new-array v7, v7, [I

    invoke-virtual {v5, v6, v7}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z

    .line 167
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cfgQryId:Ljava/util/UUID;

    if-eqz v5, :cond_2

    .line 168
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->continuousQueries()Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cfgQryId:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cancelInternalQuery(Ljava/util/UUID;)V

    .line 170
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->assignQryId:Ljava/util/UUID;

    if-eqz v5, :cond_3

    .line 171
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->continuousQueries()Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->assignQryId:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cancelInternalQuery(Ljava/util/UUID;)V

    .line 173
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v1, "ctxs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->locSvcs:Ljava/util/Map;

    monitor-enter v6

    .line 176
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->locSvcs:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 177
    .local v2, "ctxs0":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;>;"
    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 178
    .end local v2    # "ctxs0":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;

    .line 181
    .local v0, "ctx":Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->setCancelled(Z)V

    .line 182
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->service()Lorg/apache/ignite/services/Service;

    move-result-object v5

    invoke-interface {v5, v0}, Lorg/apache/ignite/services/Service;->cancel(Lorg/apache/ignite/services/ServiceContext;)V

    .line 184
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_2

    .line 187
    .end local v0    # "ctx":Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;
    :cond_5
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;

    .line 189
    .restart local v0    # "ctx":Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;
    :try_start_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 190
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shutting down distributed service [name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", execId8="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->executionId()Ljava/util/UUID;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    .line 193
    :cond_6
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    const-wide v6, 0x7fffffffffffffffL

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 195
    :catch_0
    move-exception v4

    .line 196
    .local v4, "ignore":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 198
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got interrupted while waiting for service to shutdown (will continue stopping node): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 203
    .end local v0    # "ctx":Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;
    .end local v4    # "ignore":Ljava/lang/InterruptedException;
    :cond_7
    const-class v5, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->depExe:Ljava/util/concurrent/ExecutorService;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v5, v6, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->shutdownNow(Ljava/lang/Class;Ljava/util/concurrent/ExecutorService;Lorg/apache/ignite/IgniteLogger;)V

    .line 205
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 206
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v6, "Stopped service processor."

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public service(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 495
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->locSvcs:Ljava/util/Map;

    monitor-enter v2

    .line 496
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->locSvcs:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 497
    .local v0, "ctxs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;>;"
    monitor-exit v2

    .line 499
    if-nez v0, :cond_0

    .line 506
    :goto_0
    return-object v1

    .line 497
    .end local v0    # "ctxs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 502
    .restart local v0    # "ctxs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;>;"
    :cond_0
    monitor-enter v0

    .line 503
    :try_start_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 504
    monitor-exit v0

    goto :goto_0

    .line 507
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 506
    :cond_1
    :try_start_2
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->service()Lorg/apache/ignite/services/Service;

    move-result-object v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0
.end method

.method public serviceContext(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 517
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->locSvcs:Ljava/util/Map;

    monitor-enter v2

    .line 518
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->locSvcs:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 519
    .local v0, "ctxs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;>;"
    monitor-exit v2

    .line 521
    if-nez v0, :cond_0

    .line 528
    :goto_0
    return-object v1

    .line 519
    .end local v0    # "ctxs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 524
    .restart local v0    # "ctxs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;>;"
    :cond_0
    monitor-enter v0

    .line 525
    :try_start_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 526
    monitor-exit v0

    goto :goto_0

    .line 529
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 528
    :cond_1
    :try_start_2
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0
.end method

.method public serviceDescriptors()Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/services/ServiceDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .local v3, "descs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/services/ServiceDescriptor;>;"
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    const/4 v8, 0x0

    new-array v8, v8, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->entrySetx([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/cache/Cache$Entry;

    .line 460
    .local v4, "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentKey;

    if-eqz v7, :cond_0

    .line 463
    invoke-interface {v4}, Ljavax/cache/Cache$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;

    .line 465
    .local v1, "dep":Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;
    new-instance v2, Lorg/apache/ignite/internal/processors/service/ServiceDescriptorImpl;

    invoke-direct {v2, v1}, Lorg/apache/ignite/internal/processors/service/ServiceDescriptorImpl;-><init>(Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;)V

    .line 468
    .local v2, "desc":Lorg/apache/ignite/internal/processors/service/ServiceDescriptorImpl;
    :try_start_0
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    new-instance v8, Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->configuration()Lorg/apache/ignite/services/ServiceConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/ignite/services/ServiceConfiguration;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->getForcePrimary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;

    .line 471
    .local v0, "assigns":Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;
    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->assigns()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/apache/ignite/internal/processors/service/ServiceDescriptorImpl;->topologySnapshot(Ljava/util/Map;)V

    .line 474
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 477
    .end local v0    # "assigns":Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;
    :catch_0
    move-exception v5

    .line 478
    .local v5, "ex":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to get assignments from replicated cache for service: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->configuration()Lorg/apache/ignite/services/ServiceConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/ignite/services/ServiceConfiguration;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 483
    .end local v1    # "dep":Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;
    .end local v2    # "desc":Lorg/apache/ignite/internal/processors/service/ServiceDescriptorImpl;
    .end local v4    # "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v5    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    :cond_1
    return-object v3
.end method

.method public serviceProxy(Lorg/apache/ignite/cluster/ClusterGroup;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 7
    .param p1, "prj"    # Lorg/apache/ignite/cluster/ClusterGroup;
    .param p2, "name"    # Ljava/lang/String;
    .param p4, "sticky"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/cluster/ClusterGroup;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<-TT;>;Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 544
    .local p3, "svcItf":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->hasLocalNode(Lorg/apache/ignite/cluster/ClusterGroup;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 545
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->serviceContext(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;

    move-result-object v6

    .line 547
    .local v6, "ctx":Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;
    if-eqz v6, :cond_1

    .line 548
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->service()Lorg/apache/ignite/services/Service;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    new-instance v0, Lorg/apache/ignite/IgniteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service does not implement specified interface [svcItf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", svcCls="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->service()Lorg/apache/ignite/services/Service;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_0
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->service()Lorg/apache/ignite/services/Service;

    move-result-object v0

    .line 556
    .end local v6    # "ctx":Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;-><init>(Lorg/apache/ignite/cluster/ClusterGroup;Ljava/lang/String;Ljava/lang/Class;ZLorg/apache/ignite/internal/GridKernalContext;)V

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceProxy;->proxy()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public services(Ljava/lang/String;)Ljava/util/Collection;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 581
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->locSvcs:Ljava/util/Map;

    monitor-enter v5

    .line 582
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->locSvcs:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 583
    .local v1, "ctxs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;>;"
    monitor-exit v5

    .line 585
    if-nez v1, :cond_0

    .line 586
    const/4 v3, 0x0

    .line 594
    :goto_0
    return-object v3

    .line 583
    .end local v1    # "ctxs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 588
    .restart local v1    # "ctxs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;>;"
    :cond_0
    monitor-enter v1

    .line 589
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 591
    .local v3, "res":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;

    .line 592
    .local v0, "ctx":Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->service()Lorg/apache/ignite/services/Service;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 595
    .end local v0    # "ctx":Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "res":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    :catchall_1
    move-exception v4

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    .line 594
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "res":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0
.end method

.method public start()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->isDaemon()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    :cond_0
    return-void

    .line 107
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    .line 109
    .local v0, "cfg":Lorg/apache/ignite/configuration/IgniteConfiguration;
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v1

    .line 111
    .local v1, "depMode":Lorg/apache/ignite/configuration/DeploymentMode;
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/apache/ignite/configuration/DeploymentMode;->PRIVATE:Lorg/apache/ignite/configuration/DeploymentMode;

    if-eq v1, v2, :cond_2

    sget-object v2, Lorg/apache/ignite/configuration/DeploymentMode;->ISOLATED:Lorg/apache/ignite/configuration/DeploymentMode;

    if-ne v1, v2, :cond_0

    :cond_2
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getServiceConfiguration()[Lorg/apache/ignite/services/ServiceConfiguration;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot deploy services in PRIVATE or ISOLATED deployment mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.class public Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;
.super Lorg/apache/ignite/internal/processors/GridProcessorAdapter;
.source "GridAffinityProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;,
        Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;,
        Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final AFFINITY_MAP_CLEAN_UP_DELAY:J = 0xbb8L

.field private static final ERROR_RETRIES:I = 0x3

.field private static final ERROR_WAIT:J = 0x1f4L

.field private static final NULL_NAME:Ljava/lang/String;


# instance fields
.field private final affMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->$assertionsDisabled:Z

    .line 61
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->NULL_NAME:Ljava/lang/String;

    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 64
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->affMap:Ljava/util/concurrent/ConcurrentMap;

    .line 67
    new-instance v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1;-><init>(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->lsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->affMap:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$3800(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$4100(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$4200(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$4400(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->affinityCache(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method private affinityCache(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;
    .locals 25
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 259
    new-instance v19, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;

    const/4 v5, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v5}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1;)V

    .line 261
    .local v19, "key":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->affMap:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 263
    .local v15, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;>;"
    if-eqz v15, :cond_0

    .line 264
    invoke-interface {v15}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    .line 380
    :goto_0
    return-object v5

    .line 266
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v20

    .line 269
    .local v20, "loc":Lorg/apache/ignite/cluster/ClusterNode;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cacheNodes(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v11

    .line 271
    .local v11, "cacheNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    move-object/from16 v0, v20

    invoke-interface {v11, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 272
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v10

    .line 275
    .local v10, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v10, :cond_1

    .line 276
    const/4 v5, 0x0

    goto :goto_0

    .line 278
    :cond_1
    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v12

    .line 280
    .local v12, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->awaitStarted()V

    .line 283
    :try_start_0
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :try_start_1
    new-instance v4, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinity()Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v5

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinityMapper()Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    move-result-object v6

    new-instance v7, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->assignments(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-direct {v7, v0, v8}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;-><init>(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/List;)V

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;-><init>(Lorg/apache/ignite/cache/affinity/AffinityFunction;Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1;)V

    .line 296
    .local v4, "info":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->affMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v6, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v6, v4}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v19

    invoke-interface {v5, v0, v6}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 298
    .local v24, "old":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;>;"
    if-eqz v24, :cond_2

    .line 299
    invoke-interface/range {v24 .. v24}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "info":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;
    check-cast v4, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    .restart local v4    # "info":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;
    :cond_2
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    move-object v5, v4

    goto/16 :goto_0

    .line 285
    .end local v4    # "info":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;
    .end local v24    # "old":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;>;"
    :catch_0
    move-exception v17

    .line 286
    .local v17, "ignored":Ljava/lang/IllegalStateException;
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 304
    .end local v17    # "ignored":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v5

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v5

    .line 308
    .end local v10    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v12    # "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_3
    invoke-static {v11}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 309
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 311
    :cond_4
    new-instance v16, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 313
    .local v16, "fut0":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->affMap:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v5, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 315
    .restart local v24    # "old":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;>;"
    if-eqz v24, :cond_5

    .line 316
    invoke-interface/range {v24 .. v24}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    goto/16 :goto_0

    .line 318
    :cond_5
    const/16 v21, 0x3

    .line 319
    .local v21, "max":I
    const/4 v13, 0x0

    .line 321
    .local v13, "cnt":I
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 325
    .local v18, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :goto_1
    add-int/lit8 v13, v13, 0x1

    .line 327
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 328
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 331
    :cond_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    .line 333
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No cache nodes in topology for cache name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 335
    :cond_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/apache/ignite/cluster/ClusterNode;

    .line 337
    .local v23, "n":Lorg/apache/ignite/cluster/ClusterNode;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->cacheMode(Ljava/lang/String;)Lorg/apache/ignite/cache/CacheMode;

    move-result-object v22

    .line 339
    .local v22, "mode":Lorg/apache/ignite/cache/CacheMode;
    sget-boolean v5, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->$assertionsDisabled:Z

    if-nez v5, :cond_8

    if-nez v22, :cond_8

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 342
    :cond_8
    sget-object v5, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    move-object/from16 v0, v22

    if-ne v0, v5, :cond_9

    .line 343
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    const-string v6, "Failed to map keys for LOCAL cache."

    invoke-direct {v5, v6}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    .line 346
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->get()Ljava/lang/Object;

    .line 352
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->affinityInfoFromNode(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    .line 380
    :goto_2
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    goto/16 :goto_0

    .line 356
    :catch_1
    move-exception v14

    .line 357
    .local v14, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 358
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get affinity from node (will retry) [cache="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", node="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toShortString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", msg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 361
    :cond_a
    move/from16 v0, v21

    if-ge v13, v0, :cond_b

    .line 362
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V

    goto/16 :goto_1

    .line 367
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->affMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-interface {v5, v6, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 369
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get affinity mapping from node: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v14}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    goto/16 :goto_2

    .line 373
    .end local v14    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_2
    move-exception v14

    .line 374
    .local v14, "e":Ljava/lang/Throwable;
    :goto_3
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get affinity mapping from node: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v14}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    goto/16 :goto_2

    .line 373
    .end local v14    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v14

    goto :goto_3
.end method

.method private affinityInfoFromNode(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;
    .locals 9
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p3, "n"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 395
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v0

    sget-object v3, Lorg/apache/ignite/internal/GridClosureCallMode;->BALANCE:Lorg/apache/ignite/internal/GridClosureCallMode;

    invoke-static {p1, p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils;->affinityJob(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/concurrent/Callable;

    move-result-object v4

    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v0, v3, v4, v7, v8}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callAsyncNoFailover(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/concurrent/Callable;Ljava/util/Collection;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/util/lang/GridTuple3;

    .line 398
    .local v6, "t":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {p3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils;->unmarshall(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cache/affinity/AffinityFunction;

    .line 399
    .local v1, "f":Lorg/apache/ignite/cache/affinity/AffinityFunction;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {p3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils;->unmarshall(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    .line 401
    .local v2, "m":Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;
    sget-boolean v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 404
    :cond_0
    invoke-interface {v1}, Lorg/apache/ignite/cache/affinity/AffinityFunction;->reset()V

    .line 405
    invoke-interface {v2}, Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;->reset()V

    .line 407
    new-instance v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get3()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v4

    invoke-interface {v4, p3, p1, v5}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->contextForCache(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;-><init>(Lorg/apache/ignite/cache/affinity/AffinityFunction;Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1;)V

    return-object v0
.end method

.method private affinityMap(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;Ljava/util/Collection;)Ljava/util/Map;
    .locals 9
    .param p1, "aff"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;",
            "Ljava/util/Collection",
            "<+TK;>;)",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/Collection",
            "<TK;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 419
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    sget-boolean v6, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 420
    :cond_0
    sget-boolean v6, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 423
    :cond_1
    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 424
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->primary(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;Ljava/lang/Object;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    invoke-static {v6, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 439
    :cond_2
    return-object v3

    .line 426
    :cond_3
    new-instance v3, Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-direct {v3}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>()V

    .line 428
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection<TK;>;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 429
    .local v2, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->primary(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;Ljava/lang/Object;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    .line 431
    .local v5, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 433
    .local v4, "mapped":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    if-nez v4, :cond_4

    .line 434
    new-instance v4, Ljava/util/LinkedList;

    .end local v4    # "mapped":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .restart local v4    # "mapped":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    :cond_4
    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 441
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection<TK;>;>;"
    .end local v4    # "mapped":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    .end local v5    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Lorg/apache/ignite/IgniteException;
    new-instance v6, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get affinity map for keys: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private keysToNodes(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Map;
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+TK;>;)",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/Collection",
            "<TK;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 230
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersionEx()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->keysToNodes(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private keysToNodes(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Map;
    .locals 2
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+TK;>;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/Collection",
            "<TK;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 242
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 247
    :goto_0
    return-object v1

    .line 245
    :cond_0
    invoke-direct {p0, p1, p3}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->affinityCache(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    move-result-object v0

    .line 247
    .local v0, "affInfo":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;
    if-eqz v0, :cond_1

    invoke-direct {p0, v0, p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->affinityMap(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_0
.end method

.method private maskNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 219
    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->NULL_NAME:Ljava/lang/String;

    .end local p1    # "cacheName":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private primary(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;Ljava/lang/Object;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 5
    .param p1, "aff"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;",
            "TK;)",
            "Lorg/apache/ignite/cluster/ClusterNode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 456
    .local p2, "key":Ljava/lang/Object;, "TK;"
    instance-of v2, p2, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v2, :cond_0

    .line 457
    check-cast p2, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .end local p2    # "key":Ljava/lang/Object;, "TK;"
    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->access$700(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p2, v2, v3}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object p2

    .line 459
    .restart local p2    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->affFunc:Lorg/apache/ignite/cache/affinity/AffinityFunction;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->access$1000(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v2

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->mapper:Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->access$600(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    move-result-object v3

    invoke-interface {v3, p2}, Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;->affinityKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/cache/affinity/AffinityFunction;->partition(Ljava/lang/Object;)I

    move-result v1

    .line 461
    .local v1, "part":I
    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->assignment:Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->access$1100(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->get(I)Ljava/util/List;

    move-result-object v0

    .line 463
    .local v0, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 464
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get affinity nodes [aff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 466
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cluster/ClusterNode;

    return-object v2
.end method

.method private primaryAndBackups(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .param p1, "aff"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;",
            "TK;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 475
    .local p2, "key":Ljava/lang/Object;, "TK;"
    instance-of v1, p2, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v1, :cond_0

    .line 476
    check-cast p2, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .end local p2    # "key":Ljava/lang/Object;, "TK;"
    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->access$700(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object p2

    .line 478
    .restart local p2    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->affFunc:Lorg/apache/ignite/cache/affinity/AffinityFunction;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->access$1000(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v1

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->mapper:Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->access$600(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    move-result-object v2

    invoke-interface {v2, p2}, Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;->affinityKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/cache/affinity/AffinityFunction;->partition(Ljava/lang/Object;)I

    move-result v0

    .line 480
    .local v0, "part":I
    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->assignment:Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->access$1100(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->get(I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public affinityKey(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/Object;
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
    const/4 v1, 0x0

    .line 192
    if-nez p2, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-object v1

    .line 195
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersionEx()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->affinityCache(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    move-result-object v0

    .line 197
    .local v0, "affInfo":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;
    if-eqz v0, :cond_0

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->mapper:Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->access$600(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 200
    instance-of v1, p2, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v1, :cond_2

    .line 201
    check-cast p2, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .end local p2    # "key":Ljava/lang/Object;
    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->access$700(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object p2

    .line 203
    .restart local p2    # "key":Ljava/lang/Object;
    :cond_2
    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->mapper:Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->access$600(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;->affinityKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public affinityProxy(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 211
    new-instance v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;-><init>(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;Ljava/lang/String;)V

    return-object v0
.end method

.method public mapKeyToNode(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 2
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;)",
            "Lorg/apache/ignite/cluster/ClusterNode;"
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
    .line 142
    .local p2, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->keysToNodes(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    .line 144
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection<TK;>;>;"
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mapKeyToNode(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 2
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Lorg/apache/ignite/cluster/ClusterNode;"
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
    .line 156
    .local p2, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v1, p3}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->keysToNodes(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Map;

    move-result-object v0

    .line 158
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection<TK;>;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mapKeyToPrimaryAndBackups(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 170
    .local p2, "key":Ljava/lang/Object;, "TK;"
    const-string v2, "key"

    invoke-static {p2, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersionEx()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v1

    .line 174
    .local v1, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->affinityCache(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    move-result-object v0

    .line 176
    .local v0, "affInfo":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;
    if-nez v0, :cond_0

    .line 177
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 179
    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, v0, p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->primaryAndBackups(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public mapKeysToNodes(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Map;
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+TK;>;)",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/Collection",
            "<TK;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 130
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->keysToNodes(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public onKernalStop(Z)V
    .locals 3
    .param p1, "cancel"    # Z

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->lsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z

    .line 118
    return-void
.end method

.method public printMemoryStats()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 485
    const-string v0, ">>>"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> Affinity processor memory stats [grid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

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

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   affMapSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->affMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 488
    return-void
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->lsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/16 v2, 0xc

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;I[I)V

    .line 113
    return-void

    .line 112
    :array_0
    .array-data 4
        0xb
        0xa
    .end array-data
.end method

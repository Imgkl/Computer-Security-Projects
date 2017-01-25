.class Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;
.super Ljava/lang/Object;
.source "GridDiscoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Snapshot"
.end annotation


# instance fields
.field private final discoCache:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

.field private final topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;)V
    .locals 0
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p2, "discoCache"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    .prologue
    .line 1907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1908
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 1909
    iput-object p2, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;->discoCache:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    .line 1910
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p2, "x1"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;
    .param p3, "x2"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$1;

    .prologue
    .line 1895
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;-><init>(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;)V

    return-void
.end method

.method static synthetic access$3600(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;

    .prologue
    .line 1895
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;)Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;

    .prologue
    .line 1895
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;->discoCache:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    return-object v0
.end method

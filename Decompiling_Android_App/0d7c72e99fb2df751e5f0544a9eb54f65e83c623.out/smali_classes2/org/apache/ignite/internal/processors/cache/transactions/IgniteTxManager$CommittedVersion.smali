.class Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommittedVersion;
.super Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
.source "IgniteTxManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommittedVersion"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private nearVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2118
    const-class v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommittedVersion;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2128
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;-><init>()V

    .line 2130
    return-void
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 8
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "nearVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 2137
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->topologyVersion()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->globalTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->nodeOrder()I

    move-result v6

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->dataCenterId()B

    move-result v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;-><init>(IJJII)V

    .line 2139
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommittedVersion;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2141
    :cond_0
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommittedVersion;->nearVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 2142
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$1;

    .prologue
    .line 2118
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommittedVersion;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    return-void
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommittedVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommittedVersion;

    .prologue
    .line 2118
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommittedVersion;->nearVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.class public Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
.super Ljava/lang/Object;
.source "GridCacheMvccCandidate.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Externalizable;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final IDGEN:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final serialVersionUID:J


# instance fields
.field private flags:S
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private id:J

.field private volatile transient next:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private nodeId:Ljava/util/UUID;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private volatile transient otherNodeId:Ljava/util/UUID;

.field private transient otherVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field private volatile transient ownerVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private transient parent:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private volatile transient prev:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private reentry:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

.field private threadId:J
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private timeout:J
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private volatile transient topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private ts:J
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->$assertionsDisabled:Z

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->IDGEN:Ljava/util/concurrent/atomic/AtomicLong;

    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 106
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZZZZ)V
    .locals 4
    .param p1, "parent"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "nodeId"    # Ljava/util/UUID;
    .param p3, "otherNodeId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "otherVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "threadId"    # J
    .param p7, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p8, "timeout"    # J
    .param p10, "loc"    # Z
    .param p11, "reentry"    # Z
    .param p12, "tx"    # Z
    .param p13, "singleImplicit"    # Z
    .param p14, "nearLoc"    # Z
    .param p15, "dhtLoc"    # Z

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v2, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 137
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 138
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p7, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 139
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez p1, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 141
    :cond_2
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->parent:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 142
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nodeId:Ljava/util/UUID;

    .line 143
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->otherNodeId:Ljava/util/UUID;

    .line 144
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->otherVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 145
    iput-wide p5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->threadId:J

    .line 146
    iput-object p7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 147
    iput-wide p8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->timeout:J

    .line 149
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->LOCAL:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    invoke-direct {p0, v2, p10}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->mask(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;Z)V

    .line 150
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->REENTRY:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    invoke-direct {p0, v2, p11}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->mask(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;Z)V

    .line 151
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->TX:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    move/from16 v0, p12

    invoke-direct {p0, v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->mask(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;Z)V

    .line 152
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->SINGLE_IMPLICIT:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    move/from16 v0, p13

    invoke-direct {p0, v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->mask(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;Z)V

    .line 153
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->NEAR_LOCAL:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    move/from16 v0, p14

    invoke-direct {p0, v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->mask(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;Z)V

    .line 154
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->DHT_LOCAL:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    move/from16 v0, p15

    invoke-direct {p0, v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->mask(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;Z)V

    .line 156
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ts:J

    .line 158
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->IDGEN:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->id:J

    .line 159
    return-void
.end method

.method private mask(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;Z)V
    .locals 1
    .param p1, "mask"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;
    .param p2, "on"    # Z

    .prologue
    .line 168
    iget-short v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->flags:S

    invoke-virtual {p1, v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->set(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->flags:S

    .line 169
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->compareTo(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)I
    .locals 6
    .param p1, "o"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    const/4 v1, 0x0

    .line 556
    if-ne p1, p0, :cond_1

    .line 565
    :cond_0
    :goto_0
    return v1

    .line 559
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iget-object v3, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->compareTo(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)I

    move-result v0

    .line 562
    .local v0, "c":I
    if-nez v0, :cond_3

    .line 563
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->id:J

    iget-wide v4, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->id:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v0

    .line 565
    goto :goto_0
.end method

.method public dhtLocal()Z
    .locals 2

    .prologue
    .line 397
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->DHT_LOCAL:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->flags()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->get(S)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 571
    if-nez p1, :cond_1

    move v1, v2

    .line 581
    :cond_0
    :goto_0
    return v1

    .line 574
    :cond_1
    if-eq p1, p0, :cond_0

    move-object v0, p1

    .line 577
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 579
    .local v0, "other":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key is null [this="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", other="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 581
    :cond_3
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public flags()S
    .locals 1

    .prologue
    .line 175
    iget-short v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->flags:S

    return v0
.end method

.method public hasReentry()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->reentry:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->hashCode()I

    move-result v0

    return v0
.end method

.method public key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .locals 4

    .prologue
    .line 503
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->parent:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 505
    .local v0, "parent0":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-nez v0, :cond_0

    .line 506
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent entry was not initialized for MVCC candidate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 508
    :cond_0
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v1

    return-object v1
.end method

.method public local()Z
    .locals 2

    .prologue
    .line 369
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->LOCAL:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->flags()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->get(S)Z

    move-result v0

    return v0
.end method

.method public matches(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/UUID;J)Z
    .locals 3
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "nodeId"    # Ljava/util/UUID;
    .param p3, "threadId"    # J

    .prologue
    .line 520
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {p1, v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nodeId:Ljava/util/UUID;

    invoke-virtual {p2, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->threadId:J

    cmp-long v0, p3, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nearLocal()Z
    .locals 2

    .prologue
    .line 390
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->NEAR_LOCAL:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->flags()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->get(S)Z

    move-result v0

    return v0
.end method

.method public next()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->next:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    return-object v0
.end method

.method public next(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V
    .locals 0
    .param p1, "next"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    .line 496
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->next:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 497
    return-void
.end method

.method public nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public otherNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->otherNodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public otherNodeId(Ljava/util/UUID;)V
    .locals 0
    .param p1, "otherNodeId"    # Ljava/util/UUID;

    .prologue
    .line 281
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->otherNodeId:Ljava/util/UUID;

    .line 282
    return-void
.end method

.method public otherVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->otherVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public otherVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 1
    .param p1, "otherVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 299
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 301
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->otherVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    if-nez v0, :cond_1

    .line 302
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->otherVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 304
    const/4 v0, 0x1

    .line 307
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->otherVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public owner()Z
    .locals 2

    .prologue
    .line 460
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->OWNER:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->flags()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->get(S)Z

    move-result v0

    return v0
.end method

.method public ownerVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ownerVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public ownerVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 1
    .param p1, "ownerVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 317
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 319
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ownerVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    if-nez v0, :cond_1

    .line 320
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ownerVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 322
    const/4 v0, 0x1

    .line 325
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ownerVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public parent()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->parent:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    return-object v0
.end method

.method public parent(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V
    .locals 1
    .param p1, "parent"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .prologue
    .line 258
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 260
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->parent:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 261
    return-void
.end method

.method public previous()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->prev:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    return-object v0
.end method

.method public previous(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V
    .locals 0
    .param p1, "prev"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    .line 481
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->prev:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 482
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 537
    invoke-static {p1}, Lorg/apache/ignite/internal/util/IgniteUtils;->readUuid(Ljava/io/DataInput;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nodeId:Ljava/util/UUID;

    .line 539
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->readVersion(Ljava/io/ObjectInput;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 541
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->timeout:J

    .line 542
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->threadId:J

    .line 543
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->id:J

    .line 545
    invoke-interface {p1}, Ljava/io/ObjectInput;->readShort()S

    move-result v0

    .line 547
    .local v0, "flags":S
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->OWNER:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->OWNER:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->get(S)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->mask(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;Z)V

    .line 548
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->USED:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->USED:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->get(S)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->mask(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;Z)V

    .line 549
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->TX:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->TX:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->get(S)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->mask(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;Z)V

    .line 551
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ts:J

    .line 552
    return-void
.end method

.method public ready()Z
    .locals 2

    .prologue
    .line 418
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->READY:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->flags()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->get(S)Z

    move-result v0

    return v0
.end method

.method public reenter()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 18

    .prologue
    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->reentry:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-object/from16 v17, v0

    .line 206
    .local v17, "old":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->parent:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nodeId:Ljava/util/UUID;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->otherNodeId:Ljava/util/UUID;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->otherVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->threadId:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->timeout:J

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->local()Z

    move-result v11

    const/4 v12, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->tx()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->singleImplicit()Z

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nearLocal()Z

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->dhtLocal()Z

    move-result v16

    invoke-direct/range {v1 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZZZZ)V

    .line 221
    .local v1, "reentry":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iput-object v2, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 223
    if-eqz v17, :cond_0

    .line 224
    move-object/from16 v0, v17

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->reentry:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 226
    :cond_0
    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->reentry:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 228
    return-object v1
.end method

.method public reentry()Z
    .locals 2

    .prologue
    .line 404
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->REENTRY:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->flags()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->get(S)Z

    move-result v0

    return v0
.end method

.method public removed()Z
    .locals 2

    .prologue
    .line 446
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->REMOVED:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->flags()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->get(S)Z

    move-result v0

    return v0
.end method

.method public setOwner()V
    .locals 2

    .prologue
    .line 467
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->OWNER:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->mask(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;Z)V

    .line 468
    return-void
.end method

.method public setReady()V
    .locals 2

    .prologue
    .line 425
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->READY:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->mask(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;Z)V

    .line 426
    return-void
.end method

.method public setReentry()V
    .locals 2

    .prologue
    .line 411
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->REENTRY:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->mask(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;Z)V

    .line 412
    return-void
.end method

.method public setRemoved()V
    .locals 2

    .prologue
    .line 453
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->REMOVED:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->mask(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;Z)V

    .line 454
    return-void
.end method

.method public setUsed()V
    .locals 2

    .prologue
    .line 439
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->USED:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->mask(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;Z)V

    .line 440
    return-void
.end method

.method public singleImplicit()Z
    .locals 2

    .prologue
    .line 383
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->SINGLE_IMPLICIT:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->flags()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->get(S)Z

    move-result v0

    return v0
.end method

.method public threadId()J
    .locals 2

    .prologue
    .line 341
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->threadId:J

    return-wide v0
.end method

.method public timeout()J
    .locals 2

    .prologue
    .line 355
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->timeout:J

    return-wide v0
.end method

.method public timestamp()J
    .locals 2

    .prologue
    .line 362
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ts:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 591
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->previous()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v11

    .line 592
    .local v11, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->next()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v10

    .line 594
    .local v10, "next":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    const-string v2, "key"

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->parent:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    if-nez v3, :cond_0

    move-object v3, v1

    :goto_0
    const-string v4, "masks"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->flags()S

    move-result v5

    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->toString(S)Ljava/lang/String;

    move-result-object v5

    const-string v6, "prevVer"

    if-nez v11, :cond_1

    move-object v7, v1

    :goto_1
    const-string v8, "nextVer"

    if-nez v10, :cond_2

    move-object v9, v1

    :goto_2
    move-object v1, p0

    invoke-static/range {v0 .. v9}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->parent:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    goto :goto_1

    :cond_2
    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v9

    goto :goto_2
.end method

.method public topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    return-object v0
.end method

.method public topologyVersion(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 0
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 197
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 198
    return-void
.end method

.method public tx()Z
    .locals 2

    .prologue
    .line 376
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->TX:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->flags()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->get(S)Z

    move-result v0

    return v0
.end method

.method public unenter()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 242
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->reentry:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    if-eqz v1, :cond_0

    .line 243
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->reentry:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 246
    .local v0, "old":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->reentry:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->reentry:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->reentry:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 251
    .end local v0    # "old":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public used()Z
    .locals 2

    .prologue
    .line 432
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->USED:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->flags()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate$Mask;->get(S)Z

    move-result v0

    return v0
.end method

.method public version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nodeId:Ljava/util/UUID;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->writeUuid(Ljava/io/DataOutput;Ljava/util/UUID;)V

    .line 527
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->writeVersion(Ljava/io/ObjectOutput;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 529
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->timeout:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 530
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->threadId:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 531
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->id:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 532
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->flags()S

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeShort(I)V

    .line 533
    return-void
.end method

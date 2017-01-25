.class public Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;
.super Ljava/lang/Object;
.source "GridCachePlainVersionedEntry.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final expireTime:J

.field private final isStartVer:Z

.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final ttl:J

.field private final val:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 11
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "ttl"    # J
    .param p5, "expireTime"    # J
    .param p7, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;JJ",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)V
    .locals 1
    .param p3, "ttl"    # J
    .param p5, "expireTime"    # J
    .param p7, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p8, "isStartVer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;JJ",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p7, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 67
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 69
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;->key:Ljava/lang/Object;

    .line 70
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;->val:Ljava/lang/Object;

    .line 71
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;->ttl:J

    .line 72
    iput-wide p5, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;->expireTime:J

    .line 73
    iput-object p7, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 74
    iput-boolean p8, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;->isStartVer:Z

    .line 75
    return-void
.end method


# virtual methods
.method public dataCenterId()B
    .locals 1

    .prologue
    .line 99
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->dataCenterId()B

    move-result v0

    return v0
.end method

.method public expireTime()J
    .locals 2

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry<TK;TV;>;"
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;->expireTime:J

    return-wide v0
.end method

.method public globalTime()J
    .locals 2

    .prologue
    .line 114
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->globalTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public isStartVersion()Z
    .locals 1

    .prologue
    .line 124
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;->isStartVer:Z

    return v0
.end method

.method public key()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public order()J
    .locals 2

    .prologue
    .line 109
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topologyVersion()I
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->topologyVersion()I

    move-result v0

    return v0
.end method

.method public ttl()J
    .locals 2

    .prologue
    .line 89
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry<TK;TV;>;"
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;->ttl:J

    return-wide v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;->val:Ljava/lang/Object;

    return-object v0
.end method

.method public version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 119
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

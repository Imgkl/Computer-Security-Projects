.class public Lorg/apache/ignite/internal/visor/node/VisorAtomicConfiguration;
.super Ljava/lang/Object;
.source "VisorAtomicConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private backups:I

.field private cacheMode:Lorg/apache/ignite/cache/CacheMode;

.field private seqReserveSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/apache/ignite/configuration/AtomicConfiguration;)Lorg/apache/ignite/internal/visor/node/VisorAtomicConfiguration;
    .locals 2
    .param p0, "src"    # Lorg/apache/ignite/configuration/AtomicConfiguration;

    .prologue
    .line 49
    new-instance v0, Lorg/apache/ignite/internal/visor/node/VisorAtomicConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/node/VisorAtomicConfiguration;-><init>()V

    .line 51
    .local v0, "cfg":Lorg/apache/ignite/internal/visor/node/VisorAtomicConfiguration;
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/AtomicConfiguration;->getAtomicSequenceReserveSize()I

    move-result v1

    iput v1, v0, Lorg/apache/ignite/internal/visor/node/VisorAtomicConfiguration;->seqReserveSize:I

    .line 52
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/AtomicConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/node/VisorAtomicConfiguration;->cacheMode:Lorg/apache/ignite/cache/CacheMode;

    .line 53
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/AtomicConfiguration;->getBackups()I

    move-result v1

    iput v1, v0, Lorg/apache/ignite/internal/visor/node/VisorAtomicConfiguration;->backups:I

    .line 55
    return-object v0
.end method


# virtual methods
.method public atomicSequenceReserveSize()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lorg/apache/ignite/internal/visor/node/VisorAtomicConfiguration;->seqReserveSize:I

    return v0
.end method

.method public backups()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lorg/apache/ignite/internal/visor/node/VisorAtomicConfiguration;->backups:I

    return v0
.end method

.method public cacheMode()Lorg/apache/ignite/cache/CacheMode;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorAtomicConfiguration;->cacheMode:Lorg/apache/ignite/cache/CacheMode;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-class v0, Lorg/apache/ignite/internal/visor/node/VisorAtomicConfiguration;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

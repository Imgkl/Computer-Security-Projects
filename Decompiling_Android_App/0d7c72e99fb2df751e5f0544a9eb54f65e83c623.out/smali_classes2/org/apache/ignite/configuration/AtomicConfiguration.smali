.class public Lorg/apache/ignite/configuration/AtomicConfiguration;
.super Ljava/lang/Object;
.source "AtomicConfiguration.java"


# static fields
.field public static final DFLT_ATOMIC_SEQUENCE_RESERVE_SIZE:I = 0x3e8

.field public static final DFLT_BACKUPS:I

.field public static final DFLT_CACHE_MODE:Lorg/apache/ignite/cache/CacheMode;


# instance fields
.field private backups:I

.field private cacheMode:Lorg/apache/ignite/cache/CacheMode;

.field private seqReserveSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/apache/ignite/cache/CacheMode;->PARTITIONED:Lorg/apache/ignite/cache/CacheMode;

    sput-object v0, Lorg/apache/ignite/configuration/AtomicConfiguration;->DFLT_CACHE_MODE:Lorg/apache/ignite/cache/CacheMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/apache/ignite/configuration/AtomicConfiguration;->seqReserveSize:I

    .line 43
    sget-object v0, Lorg/apache/ignite/configuration/AtomicConfiguration;->DFLT_CACHE_MODE:Lorg/apache/ignite/cache/CacheMode;

    iput-object v0, p0, Lorg/apache/ignite/configuration/AtomicConfiguration;->cacheMode:Lorg/apache/ignite/cache/CacheMode;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/configuration/AtomicConfiguration;->backups:I

    return-void
.end method


# virtual methods
.method public getAtomicSequenceReserveSize()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lorg/apache/ignite/configuration/AtomicConfiguration;->seqReserveSize:I

    return v0
.end method

.method public getBackups()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lorg/apache/ignite/configuration/AtomicConfiguration;->backups:I

    return v0
.end method

.method public getCacheMode()Lorg/apache/ignite/cache/CacheMode;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/ignite/configuration/AtomicConfiguration;->cacheMode:Lorg/apache/ignite/cache/CacheMode;

    return-object v0
.end method

.method public setAtomicSequenceReserveSize(I)V
    .locals 0
    .param p1, "seqReserveSize"    # I

    .prologue
    .line 98
    iput p1, p0, Lorg/apache/ignite/configuration/AtomicConfiguration;->seqReserveSize:I

    .line 99
    return-void
.end method

.method public setBackups(I)V
    .locals 0
    .param p1, "backups"    # I

    .prologue
    .line 59
    iput p1, p0, Lorg/apache/ignite/configuration/AtomicConfiguration;->backups:I

    .line 60
    return-void
.end method

.method public setCacheMode(Lorg/apache/ignite/cache/CacheMode;)V
    .locals 0
    .param p1, "cacheMode"    # Lorg/apache/ignite/cache/CacheMode;

    .prologue
    .line 73
    iput-object p1, p0, Lorg/apache/ignite/configuration/AtomicConfiguration;->cacheMode:Lorg/apache/ignite/cache/CacheMode;

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-class v0, Lorg/apache/ignite/configuration/AtomicConfiguration;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

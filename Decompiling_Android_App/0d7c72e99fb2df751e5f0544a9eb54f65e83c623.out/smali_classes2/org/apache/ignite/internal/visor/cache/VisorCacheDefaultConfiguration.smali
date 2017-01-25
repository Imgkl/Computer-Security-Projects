.class public Lorg/apache/ignite/internal/visor/cache/VisorCacheDefaultConfiguration;
.super Ljava/lang/Object;
.source "VisorCacheDefaultConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private qryTimeout:J

.field private ttl:J

.field private txLockTimeout:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/internal/visor/cache/VisorCacheDefaultConfiguration;
    .locals 4
    .param p0, "ccfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;

    .prologue
    .line 46
    new-instance v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheDefaultConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/cache/VisorCacheDefaultConfiguration;-><init>()V

    .line 48
    .local v0, "cfg":Lorg/apache/ignite/internal/visor/cache/VisorCacheDefaultConfiguration;
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getDefaultTimeToLive()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheDefaultConfiguration;->ttl:J

    .line 49
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getDefaultLockTimeout()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheDefaultConfiguration;->txLockTimeout:J

    .line 51
    return-object v0
.end method


# virtual methods
.method public queryTimeout()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheDefaultConfiguration;->qryTimeout:J

    return-wide v0
.end method

.method public timeToLive()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheDefaultConfiguration;->ttl:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-class v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheDefaultConfiguration;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public txLockTimeout()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheDefaultConfiguration;->txLockTimeout:J

    return-wide v0
.end method

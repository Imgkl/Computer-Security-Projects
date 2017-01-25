.class public Lorg/apache/ignite/internal/visor/cache/VisorCacheNearConfiguration;
.super Ljava/lang/Object;
.source "VisorCacheNearConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private nearEnabled:Z

.field private nearEvictMaxSize:Ljava/lang/Integer;

.field private nearEvictPlc:Ljava/lang/String;

.field private nearStartSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/internal/visor/cache/VisorCacheNearConfiguration;
    .locals 2
    .param p0, "ccfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;

    .prologue
    .line 53
    new-instance v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheNearConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/cache/VisorCacheNearConfiguration;-><init>()V

    .line 55
    .local v0, "cfg":Lorg/apache/ignite/internal/visor/cache/VisorCacheNearConfiguration;
    invoke-static {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->isNearEnabled(Lorg/apache/ignite/configuration/CacheConfiguration;)Z

    move-result v1

    iput-boolean v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheNearConfiguration;->nearEnabled:Z

    .line 60
    return-object v0
.end method


# virtual methods
.method public nearEnabled()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheNearConfiguration;->nearEnabled:Z

    return v0
.end method

.method public nearEvictMaxSize()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheNearConfiguration;->nearEvictMaxSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public nearEvictPolicy()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheNearConfiguration;->nearEvictPlc:Ljava/lang/String;

    return-object v0
.end method

.method public nearStartSize()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheNearConfiguration;->nearStartSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-class v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheNearConfiguration;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

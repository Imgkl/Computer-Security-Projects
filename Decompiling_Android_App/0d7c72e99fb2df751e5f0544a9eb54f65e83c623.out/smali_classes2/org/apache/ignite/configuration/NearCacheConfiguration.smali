.class public Lorg/apache/ignite/configuration/NearCacheConfiguration;
.super Ljavax/cache/configuration/MutableConfiguration;
.source "NearCacheConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljavax/cache/configuration/MutableConfiguration",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private nearEvictPlc:Lorg/apache/ignite/cache/eviction/EvictionPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/cache/eviction/EvictionPolicy",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private nearStartSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lorg/apache/ignite/configuration/NearCacheConfiguration;, "Lorg/apache/ignite/configuration/NearCacheConfiguration<TK;TV;>;"
    invoke-direct {p0}, Ljavax/cache/configuration/MutableConfiguration;-><init>()V

    .line 39
    const v0, 0x5b8d8

    iput v0, p0, Lorg/apache/ignite/configuration/NearCacheConfiguration;->nearStartSize:I

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/configuration/NearCacheConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/configuration/NearCacheConfiguration",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lorg/apache/ignite/configuration/NearCacheConfiguration;, "Lorg/apache/ignite/configuration/NearCacheConfiguration<TK;TV;>;"
    .local p1, "ccfg":Lorg/apache/ignite/configuration/NearCacheConfiguration;, "Lorg/apache/ignite/configuration/NearCacheConfiguration<TK;TV;>;"
    invoke-direct {p0, p1}, Ljavax/cache/configuration/MutableConfiguration;-><init>(Ljavax/cache/configuration/CompleteConfiguration;)V

    .line 39
    const v0, 0x5b8d8

    iput v0, p0, Lorg/apache/ignite/configuration/NearCacheConfiguration;->nearStartSize:I

    .line 54
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/NearCacheConfiguration;->getNearEvictionPolicy()Lorg/apache/ignite/cache/eviction/EvictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/NearCacheConfiguration;->nearEvictPlc:Lorg/apache/ignite/cache/eviction/EvictionPolicy;

    .line 55
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/NearCacheConfiguration;->getNearStartSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/NearCacheConfiguration;->nearStartSize:I

    .line 56
    return-void
.end method


# virtual methods
.method public getNearEvictionPolicy()Lorg/apache/ignite/cache/eviction/EvictionPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/cache/eviction/EvictionPolicy",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lorg/apache/ignite/configuration/NearCacheConfiguration;, "Lorg/apache/ignite/configuration/NearCacheConfiguration<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/configuration/NearCacheConfiguration;->nearEvictPlc:Lorg/apache/ignite/cache/eviction/EvictionPolicy;

    return-object v0
.end method

.method public getNearStartSize()I
    .locals 1

    .prologue
    .line 79
    .local p0, "this":Lorg/apache/ignite/configuration/NearCacheConfiguration;, "Lorg/apache/ignite/configuration/NearCacheConfiguration<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/configuration/NearCacheConfiguration;->nearStartSize:I

    return v0
.end method

.method public setNearEvictionPolicy(Lorg/apache/ignite/cache/eviction/EvictionPolicy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cache/eviction/EvictionPolicy",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lorg/apache/ignite/configuration/NearCacheConfiguration;, "Lorg/apache/ignite/configuration/NearCacheConfiguration<TK;TV;>;"
    .local p1, "nearEvictPlc":Lorg/apache/ignite/cache/eviction/EvictionPolicy;, "Lorg/apache/ignite/cache/eviction/EvictionPolicy<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/configuration/NearCacheConfiguration;->nearEvictPlc:Lorg/apache/ignite/cache/eviction/EvictionPolicy;

    .line 70
    return-void
.end method

.method public setNearStartSize(I)V
    .locals 0
    .param p1, "nearStartSize"    # I

    .prologue
    .line 88
    .local p0, "this":Lorg/apache/ignite/configuration/NearCacheConfiguration;, "Lorg/apache/ignite/configuration/NearCacheConfiguration<TK;TV;>;"
    iput p1, p0, Lorg/apache/ignite/configuration/NearCacheConfiguration;->nearStartSize:I

    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    .local p0, "this":Lorg/apache/ignite/configuration/NearCacheConfiguration;, "Lorg/apache/ignite/configuration/NearCacheConfiguration<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/configuration/NearCacheConfiguration;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

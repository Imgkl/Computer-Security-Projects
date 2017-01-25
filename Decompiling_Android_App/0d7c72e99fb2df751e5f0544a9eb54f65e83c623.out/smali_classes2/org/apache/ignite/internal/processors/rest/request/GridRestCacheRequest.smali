.class public Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;
.super Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
.source "GridRestCacheRequest.java"


# instance fields
.field private cacheFlags:I

.field private cacheName:Ljava/lang/String;

.field private key:Ljava/lang/Object;

.field private ttl:Ljava/lang/Long;

.field private val:Ljava/lang/Object;

.field private val2:Ljava/lang/Object;

.field private vals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public cacheFlags()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->cacheFlags:I

    return v0
.end method

.method public cacheFlags(I)V
    .locals 0
    .param p1, "cacheFlags"    # I

    .prologue
    .line 123
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->cacheFlags:I

    .line 124
    return-void
.end method

.method public cacheName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method public cacheName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->cacheName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public key()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public key(Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 74
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->key:Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    const-class v0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ttl()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->ttl:Ljava/lang/Long;

    return-object v0
.end method

.method public ttl(Ljava/lang/Long;)V
    .locals 0
    .param p1, "ttl"    # Ljava/lang/Long;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->ttl:Ljava/lang/Long;

    .line 145
    return-void
.end method

.method public value()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->val:Ljava/lang/Object;

    return-object v0
.end method

.method public value(Ljava/lang/Object;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 88
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->val:Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public value2()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->val2:Ljava/lang/Object;

    return-object v0
.end method

.method public value2(Ljava/lang/Object;)V
    .locals 0
    .param p1, "val2"    # Ljava/lang/Object;

    .prologue
    .line 102
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->val2:Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public values()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->vals:Ljava/util/Map;

    return-object v0
.end method

.method public values(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "vals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->vals:Ljava/util/Map;

    .line 117
    return-void
.end method

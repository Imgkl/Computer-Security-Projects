.class public Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;
.super Ljava/lang/Object;
.source "DynamicCacheChangeBatch.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private clientNodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private reqs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "reqs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;->reqs:Ljava/util/Collection;

    .line 48
    return-void
.end method


# virtual methods
.method public clientNodes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;->clientNodes:Ljava/util/Map;

    return-object v0
.end method

.method public clientNodes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "clientNodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/util/UUID;Ljava/lang/Boolean;>;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;->clientNodes:Ljava/util/Map;

    .line 69
    return-void
.end method

.method public requests()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;->reqs:Ljava/util/Collection;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-class v0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeBatch;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

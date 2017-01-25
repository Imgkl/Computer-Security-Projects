.class public Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheClientQueryResult;
.super Ljava/lang/Object;
.source "GridCacheClientQueryResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private items:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation
.end field

.field private last:Z

.field private nodeId:Ljava/util/UUID;

.field private qryId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public items()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheClientQueryResult;->items:Ljava/util/Collection;

    return-object v0
.end method

.method public items(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheClientQueryResult;->items:Ljava/util/Collection;

    .line 68
    return-void
.end method

.method public last(Z)V
    .locals 0
    .param p1, "last"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheClientQueryResult;->last:Z

    .line 82
    return-void
.end method

.method public last()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheClientQueryResult;->last:Z

    return v0
.end method

.method public nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheClientQueryResult;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public nodeId(Ljava/util/UUID;)V
    .locals 0
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 95
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheClientQueryResult;->nodeId:Ljava/util/UUID;

    .line 96
    return-void
.end method

.method public queryId()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheClientQueryResult;->qryId:J

    return-wide v0
.end method

.method public queryId(J)V
    .locals 1
    .param p1, "qryId"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheClientQueryResult;->qryId:J

    .line 54
    return-void
.end method

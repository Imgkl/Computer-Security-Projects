.class Lorg/apache/ignite/internal/visor/node/VisorNodeSuppressedErrorsTask$VisorNodeSuppressedErrorsJob;
.super Lorg/apache/ignite/internal/visor/VisorJob;
.source "VisorNodeSuppressedErrorsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/node/VisorNodeSuppressedErrorsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisorNodeSuppressedErrorsJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorJob",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/util/UUID;",
        "Ljava/lang/Long;",
        ">;",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<",
        "Ljava/lang/Long;",
        "Ljava/util/List",
        "<",
        "Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;",
        ">;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>(Ljava/util/Map;Z)V
    .locals 0
    .param p2, "debug"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "arg":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorJob;-><init>(Ljava/lang/Object;Z)V

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;ZLorg/apache/ignite/internal/visor/node/VisorNodeSuppressedErrorsTask$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/apache/ignite/internal/visor/node/VisorNodeSuppressedErrorsTask$1;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeSuppressedErrorsTask$VisorNodeSuppressedErrorsJob;-><init>(Ljava/util/Map;Z)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 63
    check-cast p1, Ljava/util/Map;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeSuppressedErrorsTask$VisorNodeSuppressedErrorsJob;->run(Ljava/util/Map;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    return-object v0
.end method

.method protected run(Ljava/util/Map;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "arg":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/lang/Long;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeSuppressedErrorsTask$VisorNodeSuppressedErrorsJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v6}, Lorg/apache/ignite/internal/IgniteEx;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 82
    .local v3, "lastOrder":Ljava/lang/Long;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 84
    .local v4, "order":J
    :goto_0
    iget-object v6, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeSuppressedErrorsTask$VisorNodeSuppressedErrorsJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v6}, Lorg/apache/ignite/internal/IgniteEx;->context()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->exceptionRegistry()Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;->getErrors(J)Ljava/util/List;

    move-result-object v1

    .line 86
    .local v1, "errors":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;

    .line 87
    .local v0, "error":Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;->order()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-lez v6, :cond_0

    .line 88
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;->order()J

    move-result-wide v4

    goto :goto_1

    .line 82
    .end local v0    # "error":Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;
    .end local v1    # "errors":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "order":J
    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 91
    .restart local v1    # "errors":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "order":J
    :cond_2
    new-instance v6, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-class v0, Lorg/apache/ignite/internal/visor/node/VisorNodeSuppressedErrorsTask$VisorNodeSuppressedErrorsJob;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

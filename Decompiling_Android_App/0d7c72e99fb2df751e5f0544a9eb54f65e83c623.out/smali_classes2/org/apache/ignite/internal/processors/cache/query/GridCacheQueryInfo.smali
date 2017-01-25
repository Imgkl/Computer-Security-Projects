.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;
.super Ljava/lang/Object;
.source "GridCacheQueryInfo.java"


# instance fields
.field private all:Z

.field private args:[Ljava/lang/Object;

.field private incMeta:Z

.field private loc:Z

.field private locFut:Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture",
            "<***>;"
        }
    .end annotation
.end field

.field private qry:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter",
            "<*>;"
        }
    .end annotation
.end field

.field private rdc:Lorg/apache/ignite/lang/IgniteReducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private reqId:J

.field private sndId:Ljava/util/UUID;

.field private trans:Lorg/apache/ignite/lang/IgniteClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLorg/apache/ignite/lang/IgniteClosure;Lorg/apache/ignite/lang/IgniteReducer;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;Ljava/util/UUID;JZZ[Ljava/lang/Object;)V
    .locals 1
    .param p1, "loc"    # Z
    .param p6, "sndId"    # Ljava/util/UUID;
    .param p7, "reqId"    # J
    .param p9, "incMeta"    # Z
    .param p10, "all"    # Z
    .param p11, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter",
            "<*>;",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture",
            "<***>;",
            "Ljava/util/UUID;",
            "JZZ[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<Ljava/lang/Object;Ljava/lang/Object;>;"
    .local p3, "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<Ljava/lang/Object;Ljava/lang/Object;>;"
    .local p4, "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<*>;"
    .local p5, "locFut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture<***>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->loc:Z

    .line 85
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->trans:Lorg/apache/ignite/lang/IgniteClosure;

    .line 86
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->rdc:Lorg/apache/ignite/lang/IgniteReducer;

    .line 87
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->qry:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    .line 88
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->locFut:Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;

    .line 89
    iput-object p6, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->sndId:Ljava/util/UUID;

    .line 90
    iput-wide p7, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->reqId:J

    .line 91
    iput-boolean p9, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->incMeta:Z

    .line 92
    iput-boolean p10, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->all:Z

    .line 93
    iput-object p11, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->args:[Ljava/lang/Object;

    .line 94
    return-void
.end method


# virtual methods
.method allPages()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->all:Z

    return v0
.end method

.method arguments()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->args:[Ljava/lang/Object;

    return-object v0
.end method

.method includeMetaData()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->incMeta:Z

    return v0
.end method

.method local()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->loc:Z

    return v0
.end method

.method localQueryFuture()Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture",
            "<***>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->locFut:Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;

    return-object v0
.end method

.method query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->qry:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    return-object v0
.end method

.method reducer()Lorg/apache/ignite/lang/IgniteReducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<*",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->rdc:Lorg/apache/ignite/lang/IgniteReducer;

    return-object v0
.end method

.method requestId()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->reqId:J

    return-wide v0
.end method

.method senderId()Ljava/util/UUID;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->sndId:Ljava/util/UUID;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method transformer()Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<*",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->trans:Lorg/apache/ignite/lang/IgniteClosure;

    return-object v0
.end method

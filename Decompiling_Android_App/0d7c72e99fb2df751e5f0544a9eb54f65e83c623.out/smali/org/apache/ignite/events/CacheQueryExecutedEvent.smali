.class public Lorg/apache/ignite/events/CacheQueryExecutedEvent;
.super Lorg/apache/ignite/events/EventAdapter;
.source "CacheQueryExecutedEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/events/EventAdapter;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J = 0x33e2b85f8f3a6030L


# instance fields
.field private final args:[Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final cacheName:Ljava/lang/String;

.field private final clause:Ljava/lang/String;

.field private final clsName:Ljava/lang/String;

.field private final contQryFilter:Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final qryType:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

.field private final scanQryFilter:Lorg/apache/ignite/lang/IgniteBiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final subjId:Ljava/util/UUID;

.field private final taskName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lorg/apache/ignite/events/CacheQueryExecutedEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/events/CacheQueryExecutedEvent;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;ILorg/apache/ignite/internal/processors/cache/query/CacheQueryType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;[Ljava/lang/Object;Ljava/util/UUID;Ljava/lang/String;)V
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "qryType"    # Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;
    .param p5, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "clsName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7, "clause"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lorg/apache/ignite/lang/IgniteBiPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10, "args"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12, "taskName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/lang/String;",
            "I",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;",
            "Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter",
            "<TK;TV;>;[",
            "Ljava/lang/Object;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lorg/apache/ignite/events/CacheQueryExecutedEvent;, "Lorg/apache/ignite/events/CacheQueryExecutedEvent<TK;TV;>;"
    .local p8, "scanQryFilter":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    .local p9, "contQryFilter":Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;, "Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/events/EventAdapter;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;I)V

    .line 126
    sget-boolean v0, Lorg/apache/ignite/events/CacheQueryExecutedEvent;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 128
    :cond_0
    iput-object p4, p0, Lorg/apache/ignite/events/CacheQueryExecutedEvent;->qryType:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    .line 129
    iput-object p5, p0, Lorg/apache/ignite/events/CacheQueryExecutedEvent;->cacheName:Ljava/lang/String;

    .line 130
    iput-object p6, p0, Lorg/apache/ignite/events/CacheQueryExecutedEvent;->clsName:Ljava/lang/String;

    .line 131
    iput-object p7, p0, Lorg/apache/ignite/events/CacheQueryExecutedEvent;->clause:Ljava/lang/String;

    .line 132
    iput-object p8, p0, Lorg/apache/ignite/events/CacheQueryExecutedEvent;->scanQryFilter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    .line 133
    iput-object p9, p0, Lorg/apache/ignite/events/CacheQueryExecutedEvent;->contQryFilter:Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;

    .line 134
    iput-object p10, p0, Lorg/apache/ignite/events/CacheQueryExecutedEvent;->args:[Ljava/lang/Object;

    .line 135
    iput-object p11, p0, Lorg/apache/ignite/events/CacheQueryExecutedEvent;->subjId:Ljava/util/UUID;

    .line 136
    iput-object p12, p0, Lorg/apache/ignite/events/CacheQueryExecutedEvent;->taskName:Ljava/lang/String;

    .line 137
    return-void
.end method


# virtual methods
.method public arguments()[Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lorg/apache/ignite/events/CacheQueryExecutedEvent;, "Lorg/apache/ignite/events/CacheQueryExecutedEvent<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/events/CacheQueryExecutedEvent;->args:[Ljava/lang/Object;

    return-object v0
.end method

.method public cacheName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Lorg/apache/ignite/events/CacheQueryExecutedEvent;, "Lorg/apache/ignite/events/CacheQueryExecutedEvent<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/events/CacheQueryExecutedEvent;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method public className()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lorg/apache/ignite/events/CacheQueryExecutedEvent;, "Lorg/apache/ignite/events/CacheQueryExecutedEvent<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/events/CacheQueryExecutedEvent;->clsName:Ljava/lang/String;

    return-object v0
.end method

.method public clause()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lorg/apache/ignite/events/CacheQueryExecutedEvent;, "Lorg/apache/ignite/events/CacheQueryExecutedEvent<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/events/CacheQueryExecutedEvent;->clause:Ljava/lang/String;

    return-object v0
.end method

.method public continuousQueryFilter()Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Lorg/apache/ignite/events/CacheQueryExecutedEvent;, "Lorg/apache/ignite/events/CacheQueryExecutedEvent<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/events/CacheQueryExecutedEvent;->contQryFilter:Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;

    return-object v0
.end method

.method public queryType()Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;
    .locals 1

    .prologue
    .line 145
    .local p0, "this":Lorg/apache/ignite/events/CacheQueryExecutedEvent;, "Lorg/apache/ignite/events/CacheQueryExecutedEvent<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/events/CacheQueryExecutedEvent;->qryType:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    return-object v0
.end method

.method public scanQueryFilter()Lorg/apache/ignite/lang/IgniteBiPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lorg/apache/ignite/events/CacheQueryExecutedEvent;, "Lorg/apache/ignite/events/CacheQueryExecutedEvent<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/events/CacheQueryExecutedEvent;->scanQryFilter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    return-object v0
.end method

.method public subjectId()Ljava/util/UUID;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 218
    .local p0, "this":Lorg/apache/ignite/events/CacheQueryExecutedEvent;, "Lorg/apache/ignite/events/CacheQueryExecutedEvent<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/events/CacheQueryExecutedEvent;->subjId:Ljava/util/UUID;

    return-object v0
.end method

.method public taskName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lorg/apache/ignite/events/CacheQueryExecutedEvent;, "Lorg/apache/ignite/events/CacheQueryExecutedEvent<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/events/CacheQueryExecutedEvent;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    .line 232
    .local p0, "this":Lorg/apache/ignite/events/CacheQueryExecutedEvent;, "Lorg/apache/ignite/events/CacheQueryExecutedEvent<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/events/CacheQueryExecutedEvent;

    const-string v2, "nodeId8"

    invoke-virtual {p0}, Lorg/apache/ignite/events/CacheQueryExecutedEvent;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "msg"

    invoke-virtual {p0}, Lorg/apache/ignite/events/CacheQueryExecutedEvent;->message()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "type"

    invoke-virtual {p0}, Lorg/apache/ignite/events/CacheQueryExecutedEvent;->name()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "tstamp"

    invoke-virtual {p0}, Lorg/apache/ignite/events/CacheQueryExecutedEvent;->timestamp()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object v1, p0

    invoke-static/range {v0 .. v9}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

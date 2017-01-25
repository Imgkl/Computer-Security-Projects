.class public Lorg/apache/ignite/events/CacheQueryReadEvent;
.super Lorg/apache/ignite/events/EventAdapter;
.source "CacheQueryReadEvent.java"


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

.field private static final serialVersionUID:J = -0x1b8b2e93c4d80685L


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

.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final oldVal:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final qryType:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

.field private final row:Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

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

.field private final val:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lorg/apache/ignite/events/CacheQueryReadEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/events/CacheQueryReadEvent;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;ILorg/apache/ignite/internal/processors/cache/query/CacheQueryType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;[Ljava/lang/Object;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
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
    .param p13    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16, "row"    # Ljava/lang/Object;
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
            "TK;TV;TV;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lorg/apache/ignite/events/CacheQueryReadEvent;, "Lorg/apache/ignite/events/CacheQueryReadEvent<TK;TV;>;"
    .local p8, "scanQryFilter":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    .local p9, "contQryFilter":Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;, "Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter<TK;TV;>;"
    .local p13, "key":Ljava/lang/Object;, "TK;"
    .local p14, "val":Ljava/lang/Object;, "TV;"
    .local p15, "oldVal":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/events/EventAdapter;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;I)V

    .line 148
    sget-boolean v1, Lorg/apache/ignite/events/CacheQueryReadEvent;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p4, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 150
    :cond_0
    iput-object p4, p0, Lorg/apache/ignite/events/CacheQueryReadEvent;->qryType:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    .line 151
    iput-object p5, p0, Lorg/apache/ignite/events/CacheQueryReadEvent;->cacheName:Ljava/lang/String;

    .line 152
    iput-object p6, p0, Lorg/apache/ignite/events/CacheQueryReadEvent;->clsName:Ljava/lang/String;

    .line 153
    iput-object p7, p0, Lorg/apache/ignite/events/CacheQueryReadEvent;->clause:Ljava/lang/String;

    .line 154
    iput-object p8, p0, Lorg/apache/ignite/events/CacheQueryReadEvent;->scanQryFilter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    .line 155
    iput-object p9, p0, Lorg/apache/ignite/events/CacheQueryReadEvent;->contQryFilter:Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;

    .line 156
    iput-object p10, p0, Lorg/apache/ignite/events/CacheQueryReadEvent;->args:[Ljava/lang/Object;

    .line 157
    iput-object p11, p0, Lorg/apache/ignite/events/CacheQueryReadEvent;->subjId:Ljava/util/UUID;

    .line 158
    iput-object p12, p0, Lorg/apache/ignite/events/CacheQueryReadEvent;->taskName:Ljava/lang/String;

    .line 159
    iput-object p13, p0, Lorg/apache/ignite/events/CacheQueryReadEvent;->key:Ljava/lang/Object;

    .line 160
    move-object/from16 v0, p14

    iput-object v0, p0, Lorg/apache/ignite/events/CacheQueryReadEvent;->val:Ljava/lang/Object;

    .line 161
    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/apache/ignite/events/CacheQueryReadEvent;->oldVal:Ljava/lang/Object;

    .line 162
    move-object/from16 v0, p16

    iput-object v0, p0, Lorg/apache/ignite/events/CacheQueryReadEvent;->row:Ljava/lang/Object;

    .line 163
    return-void
.end method


# virtual methods
.method public arguments()[Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 235
    .local p0, "this":Lorg/apache/ignite/events/CacheQueryReadEvent;, "Lorg/apache/ignite/events/CacheQueryReadEvent<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/events/CacheQueryReadEvent;->args:[Ljava/lang/Object;

    return-object v0
.end method

.method public cacheName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lorg/apache/ignite/events/CacheQueryReadEvent;, "Lorg/apache/ignite/events/CacheQueryReadEvent<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/events/CacheQueryReadEvent;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method public className()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lorg/apache/ignite/events/CacheQueryReadEvent;, "Lorg/apache/ignite/events/CacheQueryReadEvent<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/events/CacheQueryReadEvent;->clsName:Ljava/lang/String;

    return-object v0
.end method

.method public clause()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lorg/apache/ignite/events/CacheQueryReadEvent;, "Lorg/apache/ignite/events/CacheQueryReadEvent<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/events/CacheQueryReadEvent;->clause:Ljava/lang/String;

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
    .line 224
    .local p0, "this":Lorg/apache/ignite/events/CacheQueryReadEvent;, "Lorg/apache/ignite/events/CacheQueryReadEvent<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/events/CacheQueryReadEvent;->contQryFilter:Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;

    return-object v0
.end method

.method public key()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 262
    .local p0, "this":Lorg/apache/ignite/events/CacheQueryReadEvent;, "Lorg/apache/ignite/events/CacheQueryReadEvent<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/events/CacheQueryReadEvent;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public oldValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 280
    .local p0, "this":Lorg/apache/ignite/events/CacheQueryReadEvent;, "Lorg/apache/ignite/events/CacheQueryReadEvent<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/events/CacheQueryReadEvent;->oldVal:Ljava/lang/Object;

    return-object v0
.end method

.method public queryType()Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;
    .locals 1

    .prologue
    .line 171
    .local p0, "this":Lorg/apache/ignite/events/CacheQueryReadEvent;, "Lorg/apache/ignite/events/CacheQueryReadEvent<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/events/CacheQueryReadEvent;->qryType:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    return-object v0
.end method

.method public row()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 289
    .local p0, "this":Lorg/apache/ignite/events/CacheQueryReadEvent;, "Lorg/apache/ignite/events/CacheQueryReadEvent<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/events/CacheQueryReadEvent;->row:Ljava/lang/Object;

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
    .line 213
    .local p0, "this":Lorg/apache/ignite/events/CacheQueryReadEvent;, "Lorg/apache/ignite/events/CacheQueryReadEvent<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/events/CacheQueryReadEvent;->scanQryFilter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    return-object v0
.end method

.method public subjectId()Ljava/util/UUID;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Lorg/apache/ignite/events/CacheQueryReadEvent;, "Lorg/apache/ignite/events/CacheQueryReadEvent<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/events/CacheQueryReadEvent;->subjId:Ljava/util/UUID;

    return-object v0
.end method

.method public taskName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lorg/apache/ignite/events/CacheQueryReadEvent;, "Lorg/apache/ignite/events/CacheQueryReadEvent<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/events/CacheQueryReadEvent;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    .line 294
    .local p0, "this":Lorg/apache/ignite/events/CacheQueryReadEvent;, "Lorg/apache/ignite/events/CacheQueryReadEvent<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/events/CacheQueryReadEvent;

    const-string v2, "nodeId8"

    invoke-virtual {p0}, Lorg/apache/ignite/events/CacheQueryReadEvent;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "msg"

    invoke-virtual {p0}, Lorg/apache/ignite/events/CacheQueryReadEvent;->message()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "type"

    invoke-virtual {p0}, Lorg/apache/ignite/events/CacheQueryReadEvent;->name()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "tstamp"

    invoke-virtual {p0}, Lorg/apache/ignite/events/CacheQueryReadEvent;->timestamp()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object v1, p0

    invoke-static/range {v0 .. v9}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 271
    .local p0, "this":Lorg/apache/ignite/events/CacheQueryReadEvent;, "Lorg/apache/ignite/events/CacheQueryReadEvent<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/events/CacheQueryReadEvent;->val:Ljava/lang/Object;

    return-object v0
.end method

.class public Lorg/apache/ignite/events/CacheEvent;
.super Lorg/apache/ignite/events/EventAdapter;
.source "CacheEvent.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private cacheName:Ljava/lang/String;

.field private cloClsName:Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final evtNode:Lorg/apache/ignite/cluster/ClusterNode;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final hasNewVal:Z
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final hasOldVal:Z
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private key:Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final lockId:Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private near:Z
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final newVal:Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final oldVal:Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private part:I

.field private subjId:Ljava/util/UUID;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private taskName:Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final xid:Lorg/apache/ignite/lang/IgniteUuid;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;IIZLjava/lang/Object;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Object;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p3, "evtNode"    # Lorg/apache/ignite/cluster/ClusterNode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "part"    # I
    .param p7, "near"    # Z
    .param p8, "key"    # Ljava/lang/Object;
    .param p9, "xid"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p10, "lockId"    # Ljava/lang/Object;
    .param p11, "newVal"    # Ljava/lang/Object;
    .param p12, "hasNewVal"    # Z
    .param p13, "oldVal"    # Ljava/lang/Object;
    .param p14, "hasOldVal"    # Z
    .param p15, "subjId"    # Ljava/util/UUID;
    .param p16, "cloClsName"    # Ljava/lang/String;
    .param p17, "taskName"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-direct {p0, p2, p4, p5}, Lorg/apache/ignite/events/EventAdapter;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;I)V

    .line 170
    iput-object p1, p0, Lorg/apache/ignite/events/CacheEvent;->cacheName:Ljava/lang/String;

    .line 171
    iput-object p3, p0, Lorg/apache/ignite/events/CacheEvent;->evtNode:Lorg/apache/ignite/cluster/ClusterNode;

    .line 172
    iput p6, p0, Lorg/apache/ignite/events/CacheEvent;->part:I

    .line 173
    iput-boolean p7, p0, Lorg/apache/ignite/events/CacheEvent;->near:Z

    .line 174
    iput-object p8, p0, Lorg/apache/ignite/events/CacheEvent;->key:Ljava/lang/Object;

    .line 175
    iput-object p9, p0, Lorg/apache/ignite/events/CacheEvent;->xid:Lorg/apache/ignite/lang/IgniteUuid;

    .line 176
    iput-object p10, p0, Lorg/apache/ignite/events/CacheEvent;->lockId:Ljava/lang/Object;

    .line 177
    iput-object p11, p0, Lorg/apache/ignite/events/CacheEvent;->newVal:Ljava/lang/Object;

    .line 178
    iput-boolean p12, p0, Lorg/apache/ignite/events/CacheEvent;->hasNewVal:Z

    .line 179
    iput-object p13, p0, Lorg/apache/ignite/events/CacheEvent;->oldVal:Ljava/lang/Object;

    .line 180
    iput-boolean p14, p0, Lorg/apache/ignite/events/CacheEvent;->hasOldVal:Z

    .line 181
    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/apache/ignite/events/CacheEvent;->subjId:Ljava/util/UUID;

    .line 182
    move-object/from16 v0, p16

    iput-object v0, p0, Lorg/apache/ignite/events/CacheEvent;->cloClsName:Ljava/lang/String;

    .line 183
    move-object/from16 v0, p17

    iput-object v0, p0, Lorg/apache/ignite/events/CacheEvent;->taskName:Ljava/lang/String;

    .line 184
    return-void
.end method


# virtual methods
.method public cacheName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/apache/ignite/events/CacheEvent;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method public closureClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lorg/apache/ignite/events/CacheEvent;->cloClsName:Ljava/lang/String;

    return-object v0
.end method

.method public eventNode()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/apache/ignite/events/CacheEvent;->evtNode:Lorg/apache/ignite/cluster/ClusterNode;

    return-object v0
.end method

.method public hasNewValue()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lorg/apache/ignite/events/CacheEvent;->hasNewVal:Z

    return v0
.end method

.method public hasOldValue()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lorg/apache/ignite/events/CacheEvent;->hasOldVal:Z

    return v0
.end method

.method public isNear()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lorg/apache/ignite/events/CacheEvent;->near:Z

    return v0
.end method

.method public key()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()TK;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lorg/apache/ignite/events/CacheEvent;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public lockId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/apache/ignite/events/CacheEvent;->lockId:Ljava/lang/Object;

    return-object v0
.end method

.method public newValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lorg/apache/ignite/events/CacheEvent;->newVal:Ljava/lang/Object;

    return-object v0
.end method

.method public oldValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lorg/apache/ignite/events/CacheEvent;->oldVal:Ljava/lang/Object;

    return-object v0
.end method

.method public partition()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lorg/apache/ignite/events/CacheEvent;->part:I

    return v0
.end method

.method public shortDisplay()Ljava/lang/String;
    .locals 2

    .prologue
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/ignite/events/CacheEvent;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": near="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/ignite/events/CacheEvent;->near:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/events/CacheEvent;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasNewVal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/ignite/events/CacheEvent;->hasNewVal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasOldVal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/ignite/events/CacheEvent;->hasOldVal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nodeId8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/events/CacheEvent;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public subjectId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lorg/apache/ignite/events/CacheEvent;->subjId:Ljava/util/UUID;

    return-object v0
.end method

.method public taskName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lorg/apache/ignite/events/CacheEvent;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .prologue
    .line 333
    const-class v0, Lorg/apache/ignite/events/CacheEvent;

    const-string v2, "nodeId8"

    invoke-virtual {p0}, Lorg/apache/ignite/events/CacheEvent;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "evtNodeId8"

    iget-object v1, p0, Lorg/apache/ignite/events/CacheEvent;->evtNode:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "msg"

    invoke-virtual {p0}, Lorg/apache/ignite/events/CacheEvent;->message()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "type"

    invoke-virtual {p0}, Lorg/apache/ignite/events/CacheEvent;->name()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "tstamp"

    invoke-virtual {p0}, Lorg/apache/ignite/events/CacheEvent;->timestamp()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object v1, p0

    invoke-static/range {v0 .. v11}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public xid()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/apache/ignite/events/CacheEvent;->xid:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

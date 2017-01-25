.class public Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
.source "GridCacheQueryRequest.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheDeployable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private all:Z

.field private args:[Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private argsBytes:[B

.field private cacheName:Ljava/lang/String;

.field private cancel:Z

.field private clause:Ljava/lang/String;

.field private clsName:Ljava/lang/String;

.field private fields:Z

.field private id:J

.field private incBackups:Z

.field private incMeta:Z

.field private keepPortable:Z

.field private keyValFilter:Lorg/apache/ignite/lang/IgniteBiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private keyValFilterBytes:[B

.field private pageSize:I

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

    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private rdcBytes:[B

.field private subjId:Ljava/util/UUID;

.field private taskHash:I

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

    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private transBytes:[B

.field private type:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;-><init>()V

    .line 117
    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;IZZZZLjava/util/UUID;I)V
    .locals 0
    .param p1, "cacheId"    # I
    .param p2, "id"    # J
    .param p4, "cacheName"    # Ljava/lang/String;
    .param p5, "pageSize"    # I
    .param p6, "incBackups"    # Z
    .param p7, "fields"    # Z
    .param p8, "all"    # Z
    .param p9, "keepPortable"    # Z
    .param p10, "subjId"    # Ljava/util/UUID;
    .param p11, "taskHash"    # I

    .prologue
    .line 154
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;-><init>()V

    .line 155
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->cacheId:I

    .line 156
    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->id:J

    .line 157
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->cacheName:Ljava/lang/String;

    .line 158
    iput p5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->pageSize:I

    .line 159
    iput-boolean p6, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->incBackups:Z

    .line 160
    iput-boolean p7, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->fields:Z

    .line 161
    iput-boolean p8, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->all:Z

    .line 162
    iput-boolean p9, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->keepPortable:Z

    .line 163
    iput-object p10, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->subjId:Ljava/util/UUID;

    .line 164
    iput p11, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->taskHash:I

    .line 165
    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;ZLjava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/lang/IgniteReducer;Lorg/apache/ignite/lang/IgniteClosure;IZ[Ljava/lang/Object;ZZLjava/util/UUID;I)V
    .locals 2
    .param p1, "cacheId"    # I
    .param p2, "id"    # J
    .param p4, "cacheName"    # Ljava/lang/String;
    .param p5, "type"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;
    .param p6, "fields"    # Z
    .param p7, "clause"    # Ljava/lang/String;
    .param p8, "clsName"    # Ljava/lang/String;
    .param p12, "pageSize"    # I
    .param p13, "incBackups"    # Z
    .param p14, "args"    # [Ljava/lang/Object;
    .param p15, "incMeta"    # Z
    .param p16, "keepPortable"    # Z
    .param p17, "subjId"    # Ljava/util/UUID;
    .param p18, "taskHash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;IZ[",
            "Ljava/lang/Object;",
            "ZZ",
            "Ljava/util/UUID;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p9, "keyValFilter":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<Ljava/lang/Object;Ljava/lang/Object;>;"
    .local p10, "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<Ljava/lang/Object;Ljava/lang/Object;>;"
    .local p11, "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;-><init>()V

    .line 202
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p5, :cond_0

    if-nez p6, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 203
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p7, :cond_1

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SCAN:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    if-eq p5, v1, :cond_1

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SET:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    if-eq p5, v1, :cond_1

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SPI:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    if-eq p5, v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 204
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez p8, :cond_2

    if-nez p6, :cond_2

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SCAN:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    if-eq p5, v1, :cond_2

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SET:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    if-eq p5, v1, :cond_2

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SPI:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    if-eq p5, v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 206
    :cond_2
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->cacheId:I

    .line 207
    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->id:J

    .line 208
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->cacheName:Ljava/lang/String;

    .line 209
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->type:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    .line 210
    iput-boolean p6, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->fields:Z

    .line 211
    iput-object p7, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->clause:Ljava/lang/String;

    .line 212
    iput-object p8, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->clsName:Ljava/lang/String;

    .line 213
    iput-object p9, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->keyValFilter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    .line 214
    iput-object p10, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->rdc:Lorg/apache/ignite/lang/IgniteReducer;

    .line 215
    iput-object p11, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->trans:Lorg/apache/ignite/lang/IgniteClosure;

    .line 216
    iput p12, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->pageSize:I

    .line 217
    iput-boolean p13, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->incBackups:Z

    .line 218
    move-object/from16 v0, p14

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->args:[Ljava/lang/Object;

    .line 219
    move/from16 v0, p15

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->incMeta:Z

    .line 220
    move/from16 v0, p16

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->keepPortable:Z

    .line 221
    move-object/from16 v0, p17

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->subjId:Ljava/util/UUID;

    .line 222
    move/from16 v0, p18

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->taskHash:I

    .line 223
    return-void
.end method

.method public constructor <init>(IJZ)V
    .locals 2
    .param p1, "cacheId"    # I
    .param p2, "id"    # J
    .param p4, "fields"    # Z

    .prologue
    .line 123
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;-><init>()V

    .line 124
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->cacheId:I

    .line 125
    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->id:J

    .line 126
    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->fields:Z

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->cancel:Z

    .line 129
    return-void
.end method


# virtual methods
.method public allPages()Z
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->all:Z

    return v0
.end method

.method public arguments()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->args:[Ljava/lang/Object;

    return-object v0
.end method

.method beforeLocalExecution(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 3
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 285
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    .line 287
    .local v0, "marsh":Lorg/apache/ignite/marshaller/Marshaller;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->rdc:Lorg/apache/ignite/lang/IgniteReducer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->rdc:Lorg/apache/ignite/lang/IgniteReducer;

    invoke-interface {v0, v1}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteReducer;

    :goto_0
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->rdc:Lorg/apache/ignite/lang/IgniteReducer;

    .line 288
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->trans:Lorg/apache/ignite/lang/IgniteClosure;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->trans:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-interface {v0, v1}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteClosure;

    :goto_1
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->trans:Lorg/apache/ignite/lang/IgniteClosure;

    .line 289
    return-void

    :cond_0
    move-object v1, v2

    .line 287
    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 288
    goto :goto_1
.end method

.method public cacheName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method public cancel()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->cancel:Z

    return v0
.end method

.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->clsName:Ljava/lang/String;

    return-object v0
.end method

.method public clause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->clause:Ljava/lang/String;

    return-object v0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 711
    const/16 v0, 0x3a

    return v0
.end method

.method public fields()Z
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->fields:Z

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 716
    const/16 v0, 0x15

    return v0
.end method

.method public finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V

    .line 265
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    .line 267
    .local v0, "mrsh":Lorg/apache/ignite/marshaller/Marshaller;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->keyValFilterBytes:[B

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->keyValFilterBytes:[B

    invoke-interface {v0, v1, p2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteBiPredicate;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->keyValFilter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    .line 270
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->rdcBytes:[B

    if-eqz v1, :cond_1

    .line 271
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->rdcBytes:[B

    invoke-interface {v0, v1, p2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteReducer;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->rdc:Lorg/apache/ignite/lang/IgniteReducer;

    .line 273
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->transBytes:[B

    if-eqz v1, :cond_2

    .line 274
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->transBytes:[B

    invoke-interface {v0, v1, p2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteClosure;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->trans:Lorg/apache/ignite/lang/IgniteClosure;

    .line 276
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->argsBytes:[B

    if-eqz v1, :cond_3

    .line 277
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->argsBytes:[B

    invoke-interface {v0, v1, p2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->args:[Ljava/lang/Object;

    .line 278
    :cond_3
    return-void
.end method

.method public id()J
    .locals 2

    .prologue
    .line 295
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->id:J

    return-wide v0
.end method

.method public includeBackups()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->incBackups:Z

    return v0
.end method

.method public includeMetaData()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->incMeta:Z

    return v0
.end method

.method public keepPortable()Z
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->keepPortable:Z

    return v0
.end method

.method public keyValueFilter()Lorg/apache/ignite/lang/IgniteBiPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->keyValFilter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    return-object v0
.end method

.method public pageSize()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->pageSize:I

    return v0
.end method

.method public prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V
    .locals 5
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 230
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->keyValFilter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    if-eqz v4, :cond_1

    .line 231
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploymentEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 232
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->keyValFilter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    invoke-virtual {p0, v4, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->prepareObject(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 234
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->keyValFilter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    invoke-static {p1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->marshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/Object;)[B

    move-result-object v4

    iput-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->keyValFilterBytes:[B

    .line 237
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->rdc:Lorg/apache/ignite/lang/IgniteReducer;

    if-eqz v4, :cond_3

    .line 238
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploymentEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 239
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->rdc:Lorg/apache/ignite/lang/IgniteReducer;

    invoke-virtual {p0, v4, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->prepareObject(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 241
    :cond_2
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->rdc:Lorg/apache/ignite/lang/IgniteReducer;

    invoke-static {p1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->marshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/Object;)[B

    move-result-object v4

    iput-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->rdcBytes:[B

    .line 244
    :cond_3
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->trans:Lorg/apache/ignite/lang/IgniteClosure;

    if-eqz v4, :cond_5

    .line 245
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploymentEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 246
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->trans:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-virtual {p0, v4, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->prepareObject(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 248
    :cond_4
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->trans:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-static {p1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->marshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/Object;)[B

    move-result-object v4

    iput-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->transBytes:[B

    .line 251
    :cond_5
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->args:[Ljava/lang/Object;

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 252
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploymentEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 253
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->args:[Ljava/lang/Object;

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_6

    aget-object v0, v1, v2

    .line 254
    .local v0, "arg":Ljava/lang/Object;
    invoke-virtual {p0, v0, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->prepareObject(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 257
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_6
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->args:[Ljava/lang/Object;

    invoke-static {p1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->marshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/Object;)[B

    move-result-object v4

    iput-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->argsBytes:[B

    .line 259
    :cond_7
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 547
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 549
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v2

    if-nez v2, :cond_1

    .line 706
    :cond_0
    :goto_0
    return v1

    .line 552
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 555
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 706
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 557
    :pswitch_0
    const-string v2, "all"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->all:Z

    .line 559
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 562
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 565
    :pswitch_1
    const-string v2, "argsBytes"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->argsBytes:[B

    .line 567
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 570
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 573
    :pswitch_2
    const-string v2, "cacheName"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->cacheName:Ljava/lang/String;

    .line 575
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 578
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 581
    :pswitch_3
    const-string v2, "cancel"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->cancel:Z

    .line 583
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 586
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 589
    :pswitch_4
    const-string v2, "clause"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->clause:Ljava/lang/String;

    .line 591
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 594
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 597
    :pswitch_5
    const-string v2, "clsName"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->clsName:Ljava/lang/String;

    .line 599
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 602
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 605
    :pswitch_6
    const-string v2, "fields"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->fields:Z

    .line 607
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 610
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 613
    :pswitch_7
    const-string v2, "id"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->id:J

    .line 615
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 618
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 621
    :pswitch_8
    const-string v2, "incBackups"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->incBackups:Z

    .line 623
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 626
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 629
    :pswitch_9
    const-string v2, "incMeta"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->incMeta:Z

    .line 631
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 634
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 637
    :pswitch_a
    const-string v2, "keepPortable"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->keepPortable:Z

    .line 639
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 642
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 645
    :pswitch_b
    const-string v2, "keyValFilterBytes"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->keyValFilterBytes:[B

    .line 647
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 650
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 653
    :pswitch_c
    const-string v2, "pageSize"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->pageSize:I

    .line 655
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 658
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 661
    :pswitch_d
    const-string v2, "rdcBytes"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->rdcBytes:[B

    .line 663
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 666
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 669
    :pswitch_e
    const-string v2, "subjId"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readUuid(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->subjId:Ljava/util/UUID;

    .line 671
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 674
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 677
    :pswitch_f
    const-string/jumbo v2, "taskHash"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->taskHash:I

    .line 679
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 682
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 685
    :pswitch_10
    const-string/jumbo v2, "transBytes"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->transBytes:[B

    .line 687
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 690
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 695
    :pswitch_11
    const-string/jumbo v2, "type"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByte(Ljava/lang/String;)B

    move-result v0

    .line 697
    .local v0, "typeOrd":B
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 700
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->fromOrdinal(B)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->type:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    .line 702
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto/16 :goto_1

    .line 555
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public reducer()Lorg/apache/ignite/lang/IgniteReducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->rdc:Lorg/apache/ignite/lang/IgniteReducer;

    return-object v0
.end method

.method public subjectId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->subjId:Ljava/util/UUID;

    return-object v0
.end method

.method public taskHash()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->taskHash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 721
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transformer()Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->trans:Lorg/apache/ignite/lang/IgniteClosure;

    return-object v0
.end method

.method public type()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->type:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v1, 0x0

    .line 419
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 421
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 542
    :goto_0
    return v0

    .line 424
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v0

    if-nez v0, :cond_2

    .line 425
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->directType()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 426
    goto :goto_0

    .line 428
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 431
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 542
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 433
    :pswitch_0
    const-string v0, "all"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->all:Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 434
    goto :goto_0

    .line 436
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 439
    :pswitch_1
    const-string v0, "argsBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->argsBytes:[B

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 440
    goto :goto_0

    .line 442
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 445
    :pswitch_2
    const-string v0, "cacheName"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->cacheName:Ljava/lang/String;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 446
    goto :goto_0

    .line 448
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 451
    :pswitch_3
    const-string v0, "cancel"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->cancel:Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 452
    goto :goto_0

    .line 454
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 457
    :pswitch_4
    const-string v0, "clause"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->clause:Ljava/lang/String;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 458
    goto :goto_0

    .line 460
    :cond_7
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 463
    :pswitch_5
    const-string v0, "clsName"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->clsName:Ljava/lang/String;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 464
    goto :goto_0

    .line 466
    :cond_8
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 469
    :pswitch_6
    const-string v0, "fields"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->fields:Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 470
    goto/16 :goto_0

    .line 472
    :cond_9
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 475
    :pswitch_7
    const-string v0, "id"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->id:J

    invoke-interface {p2, v0, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    .line 476
    goto/16 :goto_0

    .line 478
    :cond_a
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 481
    :pswitch_8
    const-string v0, "incBackups"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->incBackups:Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    .line 482
    goto/16 :goto_0

    .line 484
    :cond_b
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 487
    :pswitch_9
    const-string v0, "incMeta"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->incMeta:Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    .line 488
    goto/16 :goto_0

    .line 490
    :cond_c
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 493
    :pswitch_a
    const-string v0, "keepPortable"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->keepPortable:Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    .line 494
    goto/16 :goto_0

    .line 496
    :cond_d
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 499
    :pswitch_b
    const-string v0, "keyValFilterBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->keyValFilterBytes:[B

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    .line 500
    goto/16 :goto_0

    .line 502
    :cond_e
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 505
    :pswitch_c
    const-string v0, "pageSize"

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->pageSize:I

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    .line 506
    goto/16 :goto_0

    .line 508
    :cond_f
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 511
    :pswitch_d
    const-string v0, "rdcBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->rdcBytes:[B

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    .line 512
    goto/16 :goto_0

    .line 514
    :cond_10
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 517
    :pswitch_e
    const-string v0, "subjId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->subjId:Ljava/util/UUID;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeUuid(Ljava/lang/String;Ljava/util/UUID;)Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    .line 518
    goto/16 :goto_0

    .line 520
    :cond_11
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 523
    :pswitch_f
    const-string/jumbo v0, "taskHash"

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->taskHash:I

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v1

    .line 524
    goto/16 :goto_0

    .line 526
    :cond_12
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 529
    :pswitch_10
    const-string/jumbo v0, "transBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->transBytes:[B

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v1

    .line 530
    goto/16 :goto_0

    .line 532
    :cond_13
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 535
    :pswitch_11
    const-string/jumbo v2, "type"

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->type:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;->type:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    :goto_2
    invoke-interface {p2, v2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByte(Ljava/lang/String;B)Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v1

    .line 536
    goto/16 :goto_0

    .line 535
    :cond_14
    const/4 v0, -0x1

    goto :goto_2

    .line 538
    :cond_15
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto/16 :goto_1

    .line 431
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.class public Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
.super Ljava/lang/Object;
.source "GridCacheReturn.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private cacheId:I

.field private cacheObj:Lorg/apache/ignite/internal/processors/cache/CacheObject;

.field private volatile invokeRes:Z

.field private invokeResCol:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheInvokeDirectResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = Lorg/apache/ignite/internal/processors/cache/CacheInvokeDirectResult;
    .end annotation
.end field

.field private transient loc:Z
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private volatile success:Z

.field private volatile v:Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->loc:Z

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;ZLjava/lang/Object;Z)V
    .locals 1
    .param p1, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "loc"    # Z
    .param p3, "v"    # Ljava/lang/Object;
    .param p4, "success"    # Z

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-boolean p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->loc:Z

    .line 95
    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->success:Z

    .line 97
    if-eqz p3, :cond_0

    .line 98
    instance-of v0, p3, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v0, :cond_1

    .line 99
    check-cast p3, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .end local p3    # "v":Ljava/lang/Object;
    invoke-direct {p0, p1, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->initValue(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 101
    .restart local p3    # "v":Ljava/lang/Object;
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 103
    :cond_2
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->v:Ljava/lang/Object;

    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "loc"    # Z

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->loc:Z

    .line 76
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "loc"    # Z
    .param p2, "success"    # Z

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->loc:Z

    .line 84
    iput-boolean p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->success:Z

    .line 85
    return-void
.end method

.method private initValue(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    .locals 2
    .param p1, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "cacheObj"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 176
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->loc:Z

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->v:Ljava/lang/Object;

    .line 185
    :goto_0
    return-void

    .line 179
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->cacheId:I

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->cacheId:I

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 181
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->cacheId:I

    .line 183
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->cacheObj:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addEntryProcessResult(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3, "key0"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "res"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "err"    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->v:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->v:Ljava/lang/Object;

    instance-of v2, v2, Ljava/util/Map;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->v:Ljava/lang/Object;

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p3    # "key0":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 212
    .restart local p3    # "key0":Ljava/lang/Object;
    :cond_0
    :try_start_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 213
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez p4, :cond_2

    if-nez p5, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 215
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->invokeRes:Z

    .line 217
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->loc:Z

    if-eqz v2, :cond_6

    .line 218
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->v:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    .line 220
    .local v1, "resMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljavax/cache/processor/EntryProcessorResult;>;"
    if-nez v1, :cond_3

    .line 221
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "resMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljavax/cache/processor/EntryProcessorResult;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 223
    .restart local v1    # "resMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljavax/cache/processor/EntryProcessorResult;>;"
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->v:Ljava/lang/Object;

    .line 226
    :cond_3
    if-nez p5, :cond_4

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;

    invoke-direct {v0, p4}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;-><init>(Ljava/lang/Object;)V

    .line 228
    .local v0, "res0":Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;
    :goto_0
    if-eqz p3, :cond_5

    .end local p3    # "key0":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    .end local v0    # "res0":Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;
    .end local v1    # "resMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljavax/cache/processor/EntryProcessorResult;>;"
    :goto_2
    monitor-exit p0

    return-void

    .line 226
    .restart local v1    # "resMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljavax/cache/processor/EntryProcessorResult;>;"
    .restart local p3    # "key0":Ljava/lang/Object;
    :cond_4
    :try_start_2
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;

    invoke-direct {v0, p5}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;-><init>(Ljava/lang/Exception;)V

    goto :goto_0

    .line 228
    .restart local v0    # "res0":Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;
    :cond_5
    const/4 v2, 0x1

    invoke-static {p2, p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object p3

    goto :goto_1

    .line 231
    .end local v0    # "res0":Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;
    .end local v1    # "resMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljavax/cache/processor/EntryProcessorResult;>;"
    :cond_6
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->$assertionsDisabled:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->v:Ljava/lang/Object;

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 232
    :cond_7
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->$assertionsDisabled:Z

    if-nez v2, :cond_8

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->cacheId:I

    if-eqz v2, :cond_8

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->cacheId:I

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v3

    if-eq v2, v3, :cond_8

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 234
    :cond_8
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v2

    iput v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->cacheId:I

    .line 236
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->invokeResCol:Ljava/util/Collection;

    if-nez v2, :cond_9

    .line 237
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->invokeResCol:Ljava/util/Collection;

    .line 239
    :cond_9
    if-nez p5, :cond_a

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeDirectResult;

    invoke-virtual {p1, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v2

    invoke-direct {v0, p2, v2}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeDirectResult;-><init>(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 242
    .local v0, "res0":Lorg/apache/ignite/internal/processors/cache/CacheInvokeDirectResult;
    :goto_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->invokeResCol:Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 239
    .end local v0    # "res0":Lorg/apache/ignite/internal/processors/cache/CacheInvokeDirectResult;
    :cond_a
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeDirectResult;

    invoke-direct {v0, p2, p5}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeDirectResult;-><init>(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public cacheId()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->cacheId:I

    return v0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 327
    const/16 v0, 0x58

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x5

    return v0
.end method

.method public finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V
    .locals 7
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 300
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->loc:Z

    .line 302
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->cacheObj:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v4, :cond_0

    .line 303
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->cacheObj:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/ClassLoader;)V

    .line 305
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->cacheObj:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v5

    invoke-interface {v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->v:Ljava/lang/Object;

    .line 308
    :cond_0
    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->invokeRes:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->invokeResCol:Ljava/util/Collection;

    if-eqz v4, :cond_4

    .line 309
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->invokeResCol:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/CacheInvokeDirectResult;

    .line 310
    .local v2, "res":Lorg/apache/ignite/internal/processors/cache/CacheInvokeDirectResult;
    invoke-virtual {v2, p1, p2}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeDirectResult;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 312
    .end local v2    # "res":Lorg/apache/ignite/internal/processors/cache/CacheInvokeDirectResult;
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->invokeResCol:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v1

    .line 314
    .local v1, "map0":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->invokeResCol:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/CacheInvokeDirectResult;

    .line 315
    .restart local v2    # "res":Lorg/apache/ignite/internal/processors/cache/CacheInvokeDirectResult;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeDirectResult;->error()Ljava/lang/Exception;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeDirectResult;->result()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v4

    invoke-static {v4, p1, v6}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;-><init>(Ljava/lang/Object;)V

    .line 318
    .local v3, "res0":Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult<*>;"
    :goto_2
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeDirectResult;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v5

    invoke-interface {v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 315
    .end local v3    # "res0":Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult<*>;"
    :cond_2
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeDirectResult;->error()Ljava/lang/Exception;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;-><init>(Ljava/lang/Exception;)V

    goto :goto_2

    .line 321
    .end local v2    # "res":Lorg/apache/ignite/internal/processors/cache/CacheInvokeDirectResult;
    :cond_3
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->v:Ljava/lang/Object;

    .line 323
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "map0":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;>;"
    :cond_4
    return-void
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->v:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invokeResult(Z)V
    .locals 0
    .param p1, "invokeRes"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->invokeRes:Z

    .line 137
    return-void
.end method

.method public invokeResult()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->invokeRes:Z

    return v0
.end method

.method public declared-synchronized mergeEntryProcessResults(Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)V
    .locals 4
    .param p1, "other"    # Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->invokeRes:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->v:Ljava/lang/Object;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid state to merge: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 259
    :cond_0
    :try_start_1
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-boolean v1, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->invokeRes:Z

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 260
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->loc:Z

    iget-boolean v2, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->loc:Z

    if-eq v1, v2, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->loc:Z

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Z)V

    throw v1

    .line 262
    :cond_2
    iget-object v1, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->v:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_3

    .line 276
    :goto_0
    monitor-exit p0

    return-void

    .line 265
    :cond_3
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->invokeRes:Z

    .line 267
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->v:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 269
    .local v0, "resMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljavax/cache/processor/EntryProcessorResult;>;"
    if-nez v0, :cond_4

    .line 270
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "resMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljavax/cache/processor/EntryProcessorResult;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 272
    .restart local v0    # "resMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljavax/cache/processor/EntryProcessorResult;>;"
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->v:Ljava/lang/Object;

    .line 275
    :cond_4
    iget-object v1, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->v:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 4
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 283
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->loc:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 285
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->cacheObj:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v2, :cond_1

    .line 286
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->cacheObj:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V

    .line 288
    :cond_1
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->invokeRes:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->invokeResCol:Ljava/util/Collection;

    if-eqz v2, :cond_2

    .line 289
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->invokeResCol:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/CacheInvokeDirectResult;

    .line 290
    .local v1, "res":Lorg/apache/ignite/internal/processors/cache/CacheInvokeDirectResult;
    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeDirectResult;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    goto :goto_0

    .line 292
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "res":Lorg/apache/ignite/internal/processors/cache/CacheInvokeDirectResult;
    :cond_2
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 443
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 444
    :cond_0
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 379
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 381
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 427
    :goto_0
    return v0

    .line 384
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 427
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 386
    :pswitch_0
    const-string v0, "cacheId"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->cacheId:I

    .line 388
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 389
    goto :goto_0

    .line 391
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 394
    :pswitch_1
    const-string v0, "cacheObj"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->cacheObj:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 396
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 397
    goto :goto_0

    .line 399
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 402
    :pswitch_2
    const-string v0, "invokeRes"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->invokeRes:Z

    .line 404
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 405
    goto :goto_0

    .line 407
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 410
    :pswitch_3
    const-string v0, "invokeResCol"

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->invokeResCol:Ljava/util/Collection;

    .line 412
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 413
    goto :goto_0

    .line 415
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 418
    :pswitch_4
    const-string v0, "success"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->success:Z

    .line 420
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 421
    goto :goto_0

    .line 423
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public set(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheObject;Z)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .locals 0
    .param p1, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "cacheObj"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "success"    # Z

    .prologue
    .line 164
    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->success:Z

    .line 166
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->initValue(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 168
    return-object p0
.end method

.method public success(Z)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->success:Z

    .line 194
    return-object p0
.end method

.method public success()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->success:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public value(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .locals 0
    .param p1, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "v"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->initValue(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 147
    return-object p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 438
    :cond_0
    return-void
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 332
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 334
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 335
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-nez v1, :cond_1

    .line 374
    :cond_0
    :goto_0
    return v0

    .line 338
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 341
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 374
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 343
    :pswitch_0
    const-string v1, "cacheId"

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->cacheId:I

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 349
    :pswitch_1
    const-string v1, "cacheObj"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->cacheObj:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 355
    :pswitch_2
    const-string v1, "invokeRes"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->invokeRes:Z

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 361
    :pswitch_3
    const-string v1, "invokeResCol"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->invokeResCol:Ljava/util/Collection;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 367
    :pswitch_4
    const-string v1, "success"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->success:Z

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

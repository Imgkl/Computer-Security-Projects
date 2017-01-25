.class public Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;
.super Lorg/apache/ignite/internal/util/nio/GridNioServerListenerAdapter;
.source "GridTcpMemcachedNioListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$3;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/nio/GridNioServerListenerAdapter",
        "<",
        "Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final ctx:Lorg/apache/ignite/internal/GridKernalContext;

.field private final hnd:Lorg/apache/ignite/internal/processors/rest/GridRestProtocolHandler;

.field private final jdkMarshaller:Lorg/apache/ignite/marshaller/Marshaller;

.field private final log:Lorg/apache/ignite/IgniteLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/IgniteLogger;Lorg/apache/ignite/internal/processors/rest/GridRestProtocolHandler;Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 1
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p2, "hnd"    # Lorg/apache/ignite/internal/processors/rest/GridRestProtocolHandler;
    .param p3, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioServerListenerAdapter;-><init>()V

    .line 51
    new-instance v0, Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;

    invoke-direct {v0}, Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->jdkMarshaller:Lorg/apache/ignite/marshaller/Marshaller;

    .line 65
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->log:Lorg/apache/ignite/IgniteLogger;

    .line 66
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->hnd:Lorg/apache/ignite/internal/processors/rest/GridRestProtocolHandler;

    .line 67
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;Lorg/apache/ignite/internal/util/lang/GridTuple3;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;
    .param p1, "x1"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;
    .param p3, "x3"    # Lorg/apache/ignite/internal/util/lang/GridTuple3;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->handleRequest0(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;Lorg/apache/ignite/internal/util/lang/GridTuple3;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;
    .param p1, "x1"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->sendResponse(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v0

    return-object v0
.end method

.method private command(I)Lorg/apache/ignite/internal/util/lang/GridTuple3;
    .locals 6
    .param p1, "opCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestCommand;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 310
    const/4 v1, 0x0

    .line 311
    .local v1, "quiet":Z
    const/4 v2, 0x0

    .line 313
    .local v2, "retKey":Z
    packed-switch p1, :pswitch_data_0

    .line 435
    const/4 v3, 0x0

    .line 438
    :goto_0
    return-object v3

    .line 315
    :pswitch_0
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_GET:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 438
    .local v0, "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :goto_1
    new-instance v3, Lorg/apache/ignite/internal/util/lang/GridTuple3;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Lorg/apache/ignite/internal/util/lang/GridTuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 319
    .end local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :pswitch_1
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_PUT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 321
    .restart local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    goto :goto_1

    .line 323
    .end local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :pswitch_2
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_ADD:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 325
    .restart local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    goto :goto_1

    .line 327
    .end local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :pswitch_3
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_REPLACE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 329
    .restart local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    goto :goto_1

    .line 331
    .end local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :pswitch_4
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_REMOVE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 333
    .restart local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    goto :goto_1

    .line 335
    .end local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :pswitch_5
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->ATOMIC_INCREMENT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 337
    .restart local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    goto :goto_1

    .line 339
    .end local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :pswitch_6
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->ATOMIC_DECREMENT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 341
    .restart local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    goto :goto_1

    .line 343
    .end local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :pswitch_7
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->QUIT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 345
    .restart local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    goto :goto_1

    .line 347
    .end local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :pswitch_8
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_REMOVE_ALL:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 349
    .restart local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    goto :goto_1

    .line 351
    .end local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :pswitch_9
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_GET:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 353
    .restart local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    goto :goto_1

    .line 355
    .end local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :pswitch_a
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->NOOP:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 357
    .restart local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    goto :goto_1

    .line 359
    .end local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :pswitch_b
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->VERSION:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 361
    .restart local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    goto :goto_1

    .line 363
    .end local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :pswitch_c
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_GET:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 364
    .restart local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    const/4 v2, 0x1

    .line 366
    goto :goto_1

    .line 368
    .end local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :pswitch_d
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_GET:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 369
    .restart local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    const/4 v2, 0x1

    .line 371
    goto :goto_1

    .line 373
    .end local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :pswitch_e
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_APPEND:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 375
    .restart local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    goto :goto_1

    .line 377
    .end local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :pswitch_f
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_PREPEND:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 379
    .restart local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    goto :goto_1

    .line 381
    .end local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :pswitch_10
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_METRICS:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 383
    .restart local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    goto :goto_1

    .line 385
    .end local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :pswitch_11
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_PUT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 386
    .restart local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    const/4 v1, 0x1

    .line 388
    goto :goto_1

    .line 390
    .end local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :pswitch_12
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_ADD:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 391
    .restart local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    const/4 v1, 0x1

    .line 393
    goto :goto_1

    .line 395
    .end local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :pswitch_13
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_REPLACE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 396
    .restart local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    const/4 v1, 0x1

    .line 398
    goto :goto_1

    .line 400
    .end local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :pswitch_14
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_REMOVE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 401
    .restart local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    const/4 v1, 0x1

    .line 403
    goto :goto_1

    .line 405
    .end local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :pswitch_15
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->ATOMIC_INCREMENT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 406
    .restart local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    const/4 v1, 0x1

    .line 408
    goto :goto_1

    .line 410
    .end local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :pswitch_16
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->ATOMIC_DECREMENT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 411
    .restart local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    const/4 v1, 0x1

    .line 413
    goto :goto_1

    .line 415
    .end local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :pswitch_17
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->QUIT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 416
    .restart local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    const/4 v1, 0x1

    .line 418
    goto :goto_1

    .line 420
    .end local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :pswitch_18
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_REMOVE_ALL:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 421
    .restart local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    const/4 v1, 0x1

    .line 423
    goto :goto_1

    .line 425
    .end local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :pswitch_19
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_APPEND:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 426
    .restart local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    const/4 v1, 0x1

    .line 428
    goto :goto_1

    .line 430
    .end local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :pswitch_1a
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_PREPEND:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 431
    .restart local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    const/4 v1, 0x1

    .line 433
    goto :goto_1

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method

.method private createRestRequest(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;Lorg/apache/ignite/internal/processors/rest/GridRestCommand;)Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    .locals 8
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;
    .param p2, "cmd"    # Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .prologue
    .line 259
    sget-boolean v7, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 261
    :cond_0
    sget-object v7, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->ATOMIC_INCREMENT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    if-eq p2, v7, :cond_1

    sget-object v7, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->ATOMIC_DECREMENT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    if-ne p2, v7, :cond_3

    .line 262
    :cond_1
    new-instance v6, Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;

    invoke-direct {v6}, Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;-><init>()V

    .line 264
    .local v6, "restReq":Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;
    invoke-virtual {v6, p2}, Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;->command(Lorg/apache/ignite/internal/processors/rest/GridRestCommand;)V

    .line 265
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->key()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;->key(Ljava/lang/Object;)V

    .line 266
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->delta()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;->delta(Ljava/lang/Long;)V

    .line 267
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->initial()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;->initial(Ljava/lang/Long;)V

    .line 298
    .end local v6    # "restReq":Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;
    :cond_2
    :goto_0
    return-object v6

    .line 272
    :cond_3
    new-instance v6, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;

    invoke-direct {v6}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;-><init>()V

    .line 274
    .local v6, "restReq":Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;
    invoke-virtual {v6, p2}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->command(Lorg/apache/ignite/internal/processors/rest/GridRestCommand;)V

    .line 275
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->clientId()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->clientId(Ljava/util/UUID;)V

    .line 276
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->expiration()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->ttl(Ljava/lang/Long;)V

    .line 277
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->cacheName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->cacheName(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->key()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->key(Ljava/lang/Object;)V

    .line 280
    sget-object v7, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_REMOVE_ALL:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    if-ne p2, v7, :cond_5

    .line 281
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->value()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v3, v7

    check-cast v3, [Ljava/lang/Object;

    .line 283
    .local v3, "keys":[Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 284
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 286
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v4, :cond_4

    aget-object v2, v0, v1

    .line 287
    .local v2, "key":Ljava/lang/Object;
    const/4 v7, 0x0

    invoke-interface {v5, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 290
    .end local v2    # "key":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v6, v5}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->values(Ljava/util/Map;)V

    goto :goto_0

    .line 294
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "i$":I
    .end local v3    # "keys":[Ljava/lang/Object;
    .end local v4    # "len$":I
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_5
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->value()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 295
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->value()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->value(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleRequest0(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;Lorg/apache/ignite/internal/util/lang/GridTuple3;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 4
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
            "Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestCommand;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 157
    .local p3, "cmd":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Lorg/apache/ignite/internal/processors/rest/GridRestCommand;Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    invoke-virtual {p3}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get1()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->NOOP:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    if-ne v2, v3, :cond_0

    .line 158
    new-instance v1, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;

    invoke-direct {v1, p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;-><init>(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;)V

    .line 160
    .local v1, "res0":Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->status(I)V

    .line 162
    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->sendResponse(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 164
    const/4 v0, 0x0

    .line 238
    .end local v1    # "res0":Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;
    :goto_0
    return-object v0

    .line 167
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->hnd:Lorg/apache/ignite/internal/processors/rest/GridRestProtocolHandler;

    invoke-virtual {p3}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    invoke-direct {p0, p2, v2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->createRestRequest(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;Lorg/apache/ignite/internal/processors/rest/GridRestCommand;)Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/apache/ignite/internal/processors/rest/GridRestProtocolHandler;->handleAsync(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 169
    .local v0, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    new-instance v2, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$2;

    invoke-direct {v2, p0, p3, p2, p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$2;-><init>(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;Lorg/apache/ignite/internal/util/lang/GridTuple3;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    invoke-interface {v0, v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto :goto_0
.end method

.method private sendResponse(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
            "Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 247
    invoke-interface {p1, p2}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->send(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onConnected(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;

    .prologue
    .line 73
    sget-boolean v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 74
    :cond_0
    return-void
.end method

.method public onDisconnected(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "e"    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 79
    sget-boolean v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 80
    :cond_0
    return-void
.end method

.method public bridge synthetic onMessage(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p2, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->onMessage(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;)V

    return-void
.end method

.method public onMessage(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;)V
    .locals 8
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;

    .prologue
    .line 85
    sget-boolean v5, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p2, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 87
    :cond_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->operationCode()B

    move-result v5

    invoke-direct {p0, v5}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->command(I)Lorg/apache/ignite/internal/util/lang/GridTuple3;

    move-result-object v0

    .line 89
    .local v0, "cmd":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Lorg/apache/ignite/internal/processors/rest/GridRestCommand;Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    if-nez v0, :cond_2

    .line 90
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot find corresponding REST command for op code (session will be closed) [ses="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", opCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->operationCode()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 93
    invoke-interface {p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->close()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 144
    :cond_1
    :goto_0
    return-void

    .line 98
    :cond_2
    sget-boolean v5, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->requestFlag()B

    move-result v5

    const/16 v6, -0x80

    if-eq v5, v6, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 99
    :cond_3
    sget-boolean v5, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->$assertionsDisabled:Z

    if-nez v5, :cond_5

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get2()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get3()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    :cond_4
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 102
    :cond_5
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get1()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->QUIT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    if-ne v5, v6, :cond_7

    .line 104
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 105
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;

    invoke-direct {v4, p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;-><init>(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;)V

    .line 107
    .local v4, "res":Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;
    invoke-direct {p0, p1, v4}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->sendResponse(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/util/nio/GridNioFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local v4    # "res":Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;
    :cond_6
    invoke-interface {p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->close()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    goto :goto_0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to send quit response packet (session will be closed anyway) [ses="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", msg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    invoke-interface {p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->close()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-interface {p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->close()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    throw v5

    .line 122
    :cond_7
    sget-object v5, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->LAST_FUT:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->ordinal()I

    move-result v5

    invoke-interface {p1, v5}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->removeMeta(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 124
    .local v3, "lastFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    if-eqz v3, :cond_8

    invoke-interface {v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 125
    const/4 v3, 0x0

    .line 129
    :cond_8
    if-nez v3, :cond_9

    .line 130
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->handleRequest0(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;Lorg/apache/ignite/internal/util/lang/GridTuple3;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    .line 142
    .local v2, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    :goto_1
    if-eqz v2, :cond_1

    .line 143
    sget-object v5, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->LAST_FUT:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->ordinal()I

    move-result v5

    invoke-interface {p1, v5, v2}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->addMeta(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 132
    .end local v2    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    :cond_9
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    new-instance v5, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$1;

    invoke-direct {v5, p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener$1;-><init>(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;Lorg/apache/ignite/internal/util/lang/GridTuple3;)V

    invoke-direct {v2, v3, v5}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;Lorg/apache/ignite/lang/IgniteBiClosure;)V

    .restart local v2    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    goto :goto_1
.end method

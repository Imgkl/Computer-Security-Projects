.class public Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;
.super Lorg/apache/ignite/internal/processors/GridProcessorAdapter;
.source "GridRestProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$4;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final HTTP_PROTO_CLS:Ljava/lang/String; = "org.apache.ignite.internal.processors.rest.protocols.http.jetty.GridJettyRestProtocol"

.field public static final ZERO_BYTES:[B


# instance fields
.field private final busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

.field protected final handlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestCommand;",
            "Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final protoHnd:Lorg/apache/ignite/internal/processors/rest/GridRestProtocolHandler;

.field private final protos:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestProtocol;",
            ">;"
        }
    .end annotation
.end field

.field private sesMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/security/SecurityContext;",
            ">;"
        }
    .end annotation
.end field

.field private final startLatch:Ljava/util/concurrent/CountDownLatch;

.field private final workersCnt:Lorg/jsr166/LongAdder8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    const-class v0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->$assertionsDisabled:Z

    .line 59
    new-array v0, v1, [B

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->ZERO_BYTES:[B

    return-void

    :cond_0
    move v0, v1

    .line 53
    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->protos:Ljava/util/Collection;

    .line 65
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->handlers:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->startLatch:Ljava/util/concurrent/CountDownLatch;

    .line 71
    new-instance v0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    .line 74
    new-instance v0, Lorg/jsr166/LongAdder8;

    invoke-direct {v0}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->workersCnt:Lorg/jsr166/LongAdder8;

    .line 77
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->sesMap:Ljava/util/concurrent/ConcurrentMap;

    .line 80
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$1;-><init>(Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->protoHnd:Lorg/apache/ignite/internal/processors/rest/GridRestProtocolHandler;

    .line 240
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->handleAsync0(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->handleRequest(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;)Lorg/jsr166/LongAdder8;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->workersCnt:Lorg/jsr166/LongAdder8;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;Lorg/apache/ignite/internal/processors/security/SecurityContext;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/security/SecurityContext;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->updateSession(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;Lorg/apache/ignite/internal/processors/security/SecurityContext;)V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;Lorg/apache/ignite/internal/processors/rest/GridRestResponse;Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/rest/GridRestResponse;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->interceptResponse(Lorg/apache/ignite/internal/processors/rest/GridRestResponse;Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)V

    return-void
.end method

.method private addHandler(Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandler;)V
    .locals 5
    .param p1, "hnd"    # Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandler;

    .prologue
    .line 595
    sget-boolean v2, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->handlers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 597
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 598
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added REST command handler: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 600
    :cond_1
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandler;->supportedCommands()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    .line 601
    .local v0, "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    sget-boolean v2, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->handlers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 603
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->handlers:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 605
    .end local v0    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :cond_3
    return-void
.end method

.method private authenticate(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/processors/security/SecurityContext;
    .locals 10
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 455
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->clientId()Ljava/util/UUID;

    move-result-object v1

    .line 456
    .local v1, "clientId":Ljava/util/UUID;
    if-nez v1, :cond_0

    move-object v5, v8

    .line 458
    .local v5, "secCtx":Lorg/apache/ignite/internal/processors/security/SecurityContext;
    :goto_0
    if-eqz v5, :cond_1

    .line 499
    .end local v5    # "secCtx":Lorg/apache/ignite/internal/processors/security/SecurityContext;
    :goto_1
    return-object v5

    .line 456
    :cond_0
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->sesMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/processors/security/SecurityContext;

    move-object v5, v7

    goto :goto_0

    .line 462
    .restart local v5    # "secCtx":Lorg/apache/ignite/internal/processors/security/SecurityContext;
    :cond_1
    new-instance v0, Lorg/apache/ignite/plugin/security/AuthenticationContext;

    invoke-direct {v0}, Lorg/apache/ignite/plugin/security/AuthenticationContext;-><init>()V

    .line 464
    .local v0, "authCtx":Lorg/apache/ignite/plugin/security/AuthenticationContext;
    sget-object v7, Lorg/apache/ignite/plugin/security/GridSecuritySubjectType;->REMOTE_CLIENT:Lorg/apache/ignite/plugin/security/GridSecuritySubjectType;

    invoke-virtual {v0, v7}, Lorg/apache/ignite/plugin/security/AuthenticationContext;->subjectType(Lorg/apache/ignite/plugin/security/GridSecuritySubjectType;)V

    .line 465
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->clientId()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/ignite/plugin/security/AuthenticationContext;->subjectId(Ljava/util/UUID;)V

    .line 469
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->credentials()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;

    if-eqz v7, :cond_2

    .line 470
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->credentials()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;

    .line 486
    .local v2, "cred":Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    :goto_2
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->address()Ljava/net/InetSocketAddress;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/ignite/plugin/security/AuthenticationContext;->address(Ljava/net/InetSocketAddress;)V

    .line 488
    invoke-virtual {v0, v2}, Lorg/apache/ignite/plugin/security/AuthenticationContext;->credentials(Lorg/apache/ignite/plugin/security/GridSecurityCredentials;)V

    .line 490
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->security()Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;

    move-result-object v7

    invoke-interface {v7, v0}, Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;->authenticate(Lorg/apache/ignite/plugin/security/AuthenticationContext;)Lorg/apache/ignite/internal/processors/security/SecurityContext;

    move-result-object v6

    .line 492
    .local v6, "subjCtx":Lorg/apache/ignite/internal/processors/security/SecurityContext;
    if-nez v6, :cond_6

    .line 493
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->credentials()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5

    .line 494
    new-instance v7, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to authenticate remote client (secure session SPI not set?): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 471
    .end local v2    # "cred":Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    .end local v6    # "subjCtx":Lorg/apache/ignite/internal/processors/security/SecurityContext;
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->credentials()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 472
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->credentials()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 474
    .local v3, "credStr":Ljava/lang/String;
    const/16 v7, 0x3a

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 476
    .local v4, "idx":I
    if-ltz v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_3

    new-instance v2, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    .restart local v2    # "cred":Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    :goto_3
    goto :goto_2

    .line 476
    .end local v2    # "cred":Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    :cond_3
    new-instance v2, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;

    invoke-direct {v2, v3, v8}, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 481
    .end local v3    # "credStr":Ljava/lang/String;
    .end local v4    # "idx":I
    :cond_4
    new-instance v2, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;

    invoke-direct {v2}, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;-><init>()V

    .line 483
    .restart local v2    # "cred":Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->credentials()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->setUserObject(Ljava/lang/Object;)V

    goto :goto_2

    .line 496
    .restart local v6    # "subjCtx":Lorg/apache/ignite/internal/processors/security/SecurityContext;
    :cond_5
    new-instance v7, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to authenticate remote client (invalid credentials?): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_6
    move-object v5, v6

    .line 499
    goto/16 :goto_1
.end method

.method private authorize(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;Lorg/apache/ignite/internal/processors/security/SecurityContext;)V
    .locals 5
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    .param p2, "sCtx"    # Lorg/apache/ignite/internal/processors/security/SecurityContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/plugin/security/GridSecurityException;
        }
    .end annotation

    .prologue
    .line 520
    const/4 v1, 0x0

    .line 521
    .local v1, "perm":Lorg/apache/ignite/plugin/security/GridSecurityPermission;
    const/4 v0, 0x0

    .line 523
    .local v0, "name":Ljava/lang/String;
    sget-object v2, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$4;->$SwitchMap$org$apache$ignite$internal$processors$rest$GridRestCommand:[I

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->command()Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 576
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->command()Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 526
    :pswitch_0
    sget-object v1, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_READ:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    .line 527
    check-cast p1, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;

    .end local p1    # "req":Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->cacheName()Ljava/lang/String;

    move-result-object v0

    .line 579
    :goto_0
    :pswitch_1
    if-eqz v1, :cond_0

    .line 580
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->security()Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;

    move-result-object v2

    invoke-interface {v2, v0, v1, p2}, Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;->authorize(Ljava/lang/String;Lorg/apache/ignite/plugin/security/GridSecurityPermission;Lorg/apache/ignite/internal/processors/security/SecurityContext;)V

    .line 581
    :cond_0
    return-void

    .line 534
    .restart local p1    # "req":Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    :pswitch_2
    sget-object v1, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_READ:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    .line 535
    check-cast p1, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    .end local p1    # "req":Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->cacheName()Ljava/lang/String;

    move-result-object v0

    .line 537
    goto :goto_0

    .line 546
    .restart local p1    # "req":Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    :pswitch_3
    sget-object v1, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_PUT:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    .line 547
    check-cast p1, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;

    .end local p1    # "req":Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->cacheName()Ljava/lang/String;

    move-result-object v0

    .line 549
    goto :goto_0

    .line 553
    .restart local p1    # "req":Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    :pswitch_4
    sget-object v1, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_REMOVE:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    .line 554
    check-cast p1, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;

    .end local p1    # "req":Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->cacheName()Ljava/lang/String;

    move-result-object v0

    .line 556
    goto :goto_0

    .line 560
    .restart local p1    # "req":Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    :pswitch_5
    sget-object v1, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->TASK_EXECUTE:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    .line 561
    check-cast p1, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;

    .end local p1    # "req":Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;->taskName()Ljava/lang/String;

    move-result-object v0

    .line 563
    goto :goto_0

    .line 523
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private config()Lorg/apache/ignite/configuration/ConnectorConfiguration;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getConnectorConfiguration()Lorg/apache/ignite/configuration/ConnectorConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private handleAsync0(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 8
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->tryReadLock()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    new-instance v6, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    const-string v2, "Failed to handle request (received request while stopping grid)."

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    .line 148
    :goto_0
    return-object v6

    .line 100
    :cond_0
    :try_start_0
    new-instance v6, Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;

    invoke-direct {v6}, Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;-><init>()V

    .line 102
    .local v6, "fut":Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;, "Lorg/apache/ignite/internal/util/worker/GridWorkerFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->workersCnt:Lorg/jsr166/LongAdder8;

    invoke-virtual {v1}, Lorg/jsr166/LongAdder8;->increment()V

    .line 104
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$2;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rest-proc-worker"

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$2;-><init>(Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;)V

    .line 132
    .local v0, "w":Lorg/apache/ignite/internal/util/worker/GridWorker;
    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;->setWorker(Lorg/apache/ignite/internal/util/worker/GridWorker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->getRestExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :goto_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    .line 137
    :catch_0
    move-exception v7

    .line 138
    .local v7, "e":Ljava/util/concurrent/RejectedExecutionException;
    :try_start_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "Failed to execute worker due to execution rejection (increase upper bound on REST executor service). Will attempt to process request in the current thread instead."

    invoke-static {v1, v2, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 142
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/worker/GridWorker;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 148
    .end local v0    # "w":Lorg/apache/ignite/internal/util/worker/GridWorker;
    .end local v6    # "fut":Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;, "Lorg/apache/ignite/internal/util/worker/GridWorkerFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    .end local v7    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v1
.end method

.method private handleRequest(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 10
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->startLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 159
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->startLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 168
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received request from client: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 170
    :cond_1
    const/4 v4, 0x0

    .line 172
    .local v4, "subjCtx":Lorg/apache/ignite/internal/processors/security/SecurityContext;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->security()Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;->enabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 174
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->authenticate(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/processors/security/SecurityContext;

    move-result-object v4

    .line 176
    invoke-direct {p0, p1, v4}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->authorize(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;Lorg/apache/ignite/internal/processors/security/SecurityContext;)V
    :try_end_1
    .catch Lorg/apache/ignite/plugin/security/GridSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 193
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->interceptRequest(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)V

    .line 195
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->handlers:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->command()Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandler;

    .line 197
    .local v1, "hnd":Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandler;
    if-nez v1, :cond_4

    const/4 v3, 0x0

    .line 199
    .local v3, "res":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    :goto_0
    if-nez v3, :cond_5

    .line 200
    new-instance v6, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    new-instance v7, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to find registered handler for command: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->command()Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    .line 205
    .end local v1    # "hnd":Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandler;
    .end local v3    # "res":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    .end local v4    # "subjCtx":Lorg/apache/ignite/internal/processors/security/SecurityContext;
    :goto_1
    return-object v6

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v6, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    new-instance v7, Lorg/apache/ignite/IgniteCheckedException;

    const-string v8, "Failed to handle request (protocol handler was interrupted when awaiting grid start)."

    invoke-direct {v7, v8, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 178
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v4    # "subjCtx":Lorg/apache/ignite/internal/processors/security/SecurityContext;
    :catch_1
    move-exception v0

    .line 179
    .local v0, "e":Lorg/apache/ignite/plugin/security/GridSecurityException;
    sget-boolean v6, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->$assertionsDisabled:Z

    if-nez v6, :cond_3

    if-nez v4, :cond_3

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 181
    :cond_3
    new-instance v2, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

    const/4 v6, 0x3

    invoke-virtual {v0}, Lorg/apache/ignite/plugin/security/GridSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;-><init>(ILjava/lang/String;)V

    .line 183
    .local v2, "res":Lorg/apache/ignite/internal/processors/rest/GridRestResponse;
    invoke-direct {p0, p1, v4}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->updateSession(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;Lorg/apache/ignite/internal/processors/security/SecurityContext;)V

    .line 184
    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->ZERO_BYTES:[B

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->sessionTokenBytes([B)V

    .line 186
    new-instance v6, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v6, v2}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 188
    .end local v0    # "e":Lorg/apache/ignite/plugin/security/GridSecurityException;
    .end local v2    # "res":Lorg/apache/ignite/internal/processors/rest/GridRestResponse;
    :catch_2
    move-exception v0

    .line 189
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v6, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    new-instance v7, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

    const/4 v8, 0x2

    invoke-virtual {v0}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;-><init>(ILjava/lang/String;)V

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 197
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "hnd":Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandler;
    :cond_4
    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandler;->handleAsync(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v3

    goto :goto_0

    .line 203
    .restart local v3    # "res":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    :cond_5
    move-object v5, v4

    .line 205
    .local v5, "subjCtx0":Lorg/apache/ignite/internal/processors/security/SecurityContext;
    new-instance v6, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$3;

    invoke-direct {v6, p0, p1, v5}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$3;-><init>(Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;Lorg/apache/ignite/internal/processors/security/SecurityContext;)V

    invoke-interface {v3, v6}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v6

    goto :goto_1
.end method

.method private interceptRequest(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)V
    .locals 11
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;

    .prologue
    .line 330
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->config()Lorg/apache/ignite/configuration/ConnectorConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getMessageInterceptor()Lorg/apache/ignite/configuration/ConnectorMessageInterceptor;

    move-result-object v2

    .line 332
    .local v2, "interceptor":Lorg/apache/ignite/configuration/ConnectorMessageInterceptor;
    if-nez v2, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    instance-of v9, p1, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;

    if-eqz v9, :cond_3

    move-object v8, p1

    .line 336
    check-cast v8, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;

    .line 338
    .local v8, "req0":Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->key()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2, v9}, Lorg/apache/ignite/configuration/ConnectorMessageInterceptor;->onReceive(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->key(Ljava/lang/Object;)V

    .line 339
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->value()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2, v9}, Lorg/apache/ignite/configuration/ConnectorMessageInterceptor;->onReceive(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->value(Ljava/lang/Object;)V

    .line 340
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->value2()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2, v9}, Lorg/apache/ignite/configuration/ConnectorMessageInterceptor;->onReceive(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->value2(Ljava/lang/Object;)V

    .line 342
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->values()Ljava/util/Map;

    move-result-object v7

    .line 344
    .local v7, "oldVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v7, :cond_0

    .line 345
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v9

    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v4

    .line 347
    .local v4, "newVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 348
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2, v9}, Lorg/apache/ignite/configuration/ConnectorMessageInterceptor;->onReceive(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v2, v10}, Lorg/apache/ignite/configuration/ConnectorMessageInterceptor;->onReceive(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 350
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_2
    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sealMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->values(Ljava/util/Map;)V

    goto :goto_0

    .line 353
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "newVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v7    # "oldVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v8    # "req0":Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;
    :cond_3
    instance-of v9, p1, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;

    if-eqz v9, :cond_0

    move-object v8, p1

    .line 354
    check-cast v8, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;

    .line 356
    .local v8, "req0":Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;->params()Ljava/util/List;

    move-result-object v6

    .line 358
    .local v6, "oldParams":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v6, :cond_0

    .line 359
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 361
    .local v3, "newParams":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 362
    .local v5, "o":Ljava/lang/Object;
    invoke-interface {v2, v5}, Lorg/apache/ignite/configuration/ConnectorMessageInterceptor;->onReceive(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 364
    .end local v5    # "o":Ljava/lang/Object;
    :cond_4
    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sealList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;->params(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private interceptResponse(Lorg/apache/ignite/internal/processors/rest/GridRestResponse;Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)V
    .locals 4
    .param p1, "res"    # Lorg/apache/ignite/internal/processors/rest/GridRestResponse;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;

    .prologue
    .line 378
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->config()Lorg/apache/ignite/configuration/ConnectorConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getMessageInterceptor()Lorg/apache/ignite/configuration/ConnectorMessageInterceptor;

    move-result-object v0

    .line 380
    .local v0, "interceptor":Lorg/apache/ignite/configuration/ConnectorMessageInterceptor;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->getResponse()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 381
    sget-object v2, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$4;->$SwitchMap$org$apache$ignite$internal$processors$rest$GridRestCommand:[I

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->command()Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 395
    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->getResponse()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->interceptSendObject(Ljava/lang/Object;Lorg/apache/ignite/configuration/ConnectorMessageInterceptor;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->setResponse(Ljava/lang/Object;)V

    goto :goto_0

    .line 400
    :pswitch_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->getResponse()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;

    if-eqz v2, :cond_0

    .line 401
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->getResponse()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;

    .line 403
    .local v1, "taskRes":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/configuration/ConnectorMessageInterceptor;->onSend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 381
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static interceptSendObject(Ljava/lang/Object;Lorg/apache/ignite/configuration/ConnectorMessageInterceptor;)Ljava/lang/Object;
    .locals 8
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "interceptor"    # Lorg/apache/ignite/configuration/ConnectorMessageInterceptor;

    .prologue
    .line 423
    instance-of v6, p0, Ljava/util/Map;

    if-eqz v6, :cond_0

    move-object v5, p0

    .line 424
    check-cast v5, Ljava/util/Map;

    .line 426
    .local v5, "original":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 428
    .local v3, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 429
    .local v1, "e":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Lorg/apache/ignite/configuration/ConnectorMessageInterceptor;->onSend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1, v7}, Lorg/apache/ignite/configuration/ConnectorMessageInterceptor;->onSend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 433
    .end local v1    # "e":Ljava/util/Map$Entry;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v5    # "original":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_0
    instance-of v6, p0, Ljava/util/Collection;

    if-eqz v6, :cond_3

    move-object v4, p0

    .line 434
    check-cast v4, Ljava/util/Collection;

    .line 436
    .local v4, "original":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 438
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 439
    .local v1, "e":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lorg/apache/ignite/configuration/ConnectorMessageInterceptor;->onSend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Object;
    :cond_1
    move-object v3, v0

    .line 444
    .end local v0    # "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "original":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_2
    :goto_2
    return-object v3

    :cond_3
    invoke-interface {p1, p0}, Lorg/apache/ignite/configuration/ConnectorMessageInterceptor;->onSend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2
.end method

.method private isRestEnabled()Z
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isDaemon()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getConnectorConfiguration()Lorg/apache/ignite/configuration/ConnectorConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startHttpProtocol()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 623
    :try_start_0
    const-string v5, "org.apache.ignite.internal.processors.rest.protocols.http.jetty.GridJettyRestProtocol"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 625
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lorg/apache/ignite/internal/GridKernalContext;

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 627
    .local v1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    aput-object v7, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/rest/GridRestProtocol;

    .line 629
    .local v4, "proto":Lorg/apache/ignite/internal/processors/rest/GridRestProtocol;
    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->startProtocol(Lorg/apache/ignite/internal/processors/rest/GridRestProtocol;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    .line 639
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "proto":Lorg/apache/ignite/internal/processors/rest/GridRestProtocol;
    :cond_0
    :goto_0
    return-void

    .line 631
    :catch_0
    move-exception v3

    .line 632
    .local v3, "ignored":Ljava/lang/ClassNotFoundException;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 633
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v6, "Failed to initialize HTTP REST protocol (consider adding ignite-rest-http module to classpath)."

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 636
    .end local v3    # "ignored":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 637
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    const-string v6, "Failed to initialize HTTP REST protocol."

    invoke-direct {v5, v6, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 636
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_1

    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method private startProtocol(Lorg/apache/ignite/internal/processors/rest/GridRestProtocol;)V
    .locals 3
    .param p1, "proto"    # Lorg/apache/ignite/internal/processors/rest/GridRestProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 653
    sget-boolean v0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 654
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->protos:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 656
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->protos:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 658
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->protoHnd:Lorg/apache/ignite/internal/processors/rest/GridRestProtocolHandler;

    invoke-interface {p1, v0}, Lorg/apache/ignite/internal/processors/rest/GridRestProtocol;->start(Lorg/apache/ignite/internal/processors/rest/GridRestProtocolHandler;)V

    .line 660
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 661
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added REST protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 662
    :cond_2
    return-void
.end method

.method private startTcpProtocol()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 613
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->startProtocol(Lorg/apache/ignite/internal/processors/rest/GridRestProtocol;)V

    .line 614
    return-void
.end method

.method private updateSession(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;Lorg/apache/ignite/internal/processors/security/SecurityContext;)V
    .locals 2
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    .param p2, "sCtx"    # Lorg/apache/ignite/internal/processors/security/SecurityContext;

    .prologue
    .line 508
    if-eqz p2, :cond_0

    .line 509
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->clientId()Ljava/util/UUID;

    move-result-object v0

    .line 510
    .local v0, "id":Ljava/util/UUID;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->sesMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    .end local v0    # "id":Ljava/util/UUID;
    :cond_0
    return-void
.end method


# virtual methods
.method public onKernalStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->isRestEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->protos:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/rest/GridRestProtocol;

    .line 282
    .local v1, "proto":Lorg/apache/ignite/internal/processors/rest/GridRestProtocol;
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/rest/GridRestProtocol;->onKernalStart()V

    goto :goto_0

    .line 284
    .end local v1    # "proto":Lorg/apache/ignite/internal/processors/rest/GridRestProtocol;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->startLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 286
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "REST processor started."

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 289
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public onKernalStop(Z)V
    .locals 8
    .param p1, "cancel"    # Z

    .prologue
    .line 294
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->isRestEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 295
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLock()V

    .line 297
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    .line 299
    .local v2, "interrupted":Z
    :goto_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->workersCnt:Lorg/jsr166/LongAdder8;

    invoke-virtual {v4}, Lorg/jsr166/LongAdder8;->sum()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 301
    const-wide/16 v4, 0xc8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v1

    .line 304
    .local v1, "ignored":Ljava/lang/InterruptedException;
    const/4 v2, 0x1

    .line 305
    goto :goto_0

    .line 308
    .end local v1    # "ignored":Ljava/lang/InterruptedException;
    :cond_0
    if-eqz v2, :cond_1

    .line 309
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 311
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->protos:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/rest/GridRestProtocol;

    .line 312
    .local v3, "proto":Lorg/apache/ignite/internal/processors/rest/GridRestProtocol;
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/rest/GridRestProtocol;->stop()V

    goto :goto_1

    .line 315
    .end local v3    # "proto":Lorg/apache/ignite/internal/processors/rest/GridRestProtocol;
    :cond_2
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->startLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 317
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 318
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v5, "REST processor stopped."

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 320
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "interrupted":Z
    :cond_3
    return-void
.end method

.method public printMemoryStats()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 666
    const-string v0, ">>>"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> REST processor memory stats [grid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   protosSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->protos:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   handlersSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->handlers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 670
    return-void
.end method

.method public start()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->isRestEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 246
    new-instance v6, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->addHandler(Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandler;)V

    .line 247
    new-instance v6, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->addHandler(Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandler;)V

    .line 248
    new-instance v6, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->addHandler(Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandler;)V

    .line 249
    new-instance v6, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->addHandler(Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandler;)V

    .line 250
    new-instance v6, Lorg/apache/ignite/internal/processors/rest/handlers/version/GridVersionCommandHandler;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/processors/rest/handlers/version/GridVersionCommandHandler;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->addHandler(Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandler;)V

    .line 251
    new-instance v6, Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->addHandler(Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandler;)V

    .line 254
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->startTcpProtocol()V

    .line 255
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->startHttpProtocol()V

    .line 257
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->protos:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/rest/GridRestProtocol;

    .line 258
    .local v5, "proto":Lorg/apache/ignite/internal/processors/rest/GridRestProtocol;
    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/rest/GridRestProtocol;->getProperties()Ljava/util/Collection;

    move-result-object v4

    .line 260
    .local v4, "props":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v4, :cond_0

    .line 261
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 262
    .local v3, "p":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 264
    .local v2, "key":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 267
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6, v2}, Lorg/apache/ignite/internal/GridKernalContext;->hasNodeAttribute(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 268
    new-instance v6, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Node attribute collision for attribute [processor=GridRestProcessor, attr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 271
    :cond_2
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v2, v7}, Lorg/apache/ignite/internal/GridKernalContext;->addNodeAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 276
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "p":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "props":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v5    # "proto":Lorg/apache/ignite/internal/processors/rest/GridRestProtocol;
    :cond_3
    return-void
.end method

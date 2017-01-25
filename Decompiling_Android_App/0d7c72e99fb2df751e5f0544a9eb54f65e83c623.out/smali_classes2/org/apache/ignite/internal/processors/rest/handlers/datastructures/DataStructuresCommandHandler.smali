.class public Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;
.super Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandlerAdapter;
.source "DataStructuresCommandHandler.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final SUPPORTED_COMMANDS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    const-class v0, Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;->$assertionsDisabled:Z

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    sget-object v3, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->ATOMIC_INCREMENT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v3, v0, v2

    sget-object v2, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->ATOMIC_DECREMENT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sealList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;->SUPPORTED_COMMANDS:Ljava/util/Collection;

    return-void

    :cond_0
    move v0, v2

    .line 37
    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandlerAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method private incrementOrDecrement(Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 4
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 79
    sget-boolean v1, Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 80
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;->command()Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->ATOMIC_INCREMENT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;->command()Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->ATOMIC_DECREMENT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;->command()Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 82
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;->key()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 83
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    const-string v1, "key"

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandlerAdapter;->missingParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "err":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    .line 95
    .end local v0    # "err":Lorg/apache/ignite/IgniteCheckedException;
    :goto_0
    return-object v1

    .line 88
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;->delta()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_3

    .line 89
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    const-string v1, "delta"

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandlerAdapter;->missingParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    .line 92
    .restart local v0    # "err":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 95
    .end local v0    # "err":Lorg/apache/ignite/IgniteCheckedException;
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler$2;

    invoke-direct {v2, p0, p1}, Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler$2;-><init>(Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocalSafe(Ljava/util/concurrent/Callable;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public handleAsync(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
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
    .line 58
    sget-boolean v0, Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;->SUPPORTED_COMMANDS:Ljava/util/Collection;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->command()Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->command()Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 60
    :cond_0
    check-cast p1, Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;

    .end local p1    # "req":Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;->incrementOrDecrement(Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler$1;-><init>(Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;)V

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public supportedCommands()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;->SUPPORTED_COMMANDS:Ljava/util/Collection;

    return-object v0
.end method

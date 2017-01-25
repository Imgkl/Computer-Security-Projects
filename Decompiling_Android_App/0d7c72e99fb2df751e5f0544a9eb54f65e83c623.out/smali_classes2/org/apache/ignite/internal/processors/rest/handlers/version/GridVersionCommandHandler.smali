.class public Lorg/apache/ignite/internal/processors/rest/handlers/version/GridVersionCommandHandler;
.super Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandlerAdapter;
.source "GridVersionCommandHandler.java"


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
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    const-class v0, Lorg/apache/ignite/internal/processors/rest/handlers/version/GridVersionCommandHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/rest/handlers/version/GridVersionCommandHandler;->$assertionsDisabled:Z

    .line 37
    new-array v0, v1, [Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->VERSION:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sealList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/handlers/version/GridVersionCommandHandler;->SUPPORTED_COMMANDS:Ljava/util/Collection;

    return-void

    :cond_0
    move v0, v2

    .line 35
    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandlerAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 44
    return-void
.end method


# virtual methods
.method public handleAsync(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
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
    .line 53
    sget-boolean v0, Lorg/apache/ignite/internal/processors/rest/handlers/version/GridVersionCommandHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/rest/handlers/version/GridVersionCommandHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/ignite/internal/processors/rest/handlers/version/GridVersionCommandHandler;->SUPPORTED_COMMANDS:Ljava/util/Collection;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->command()Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    new-instance v1, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

    sget-object v2, Lorg/apache/ignite/internal/IgniteVersionUtils;->VER_STR:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

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
    .line 48
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/handlers/version/GridVersionCommandHandler;->SUPPORTED_COMMANDS:Ljava/util/Collection;

    return-object v0
.end method

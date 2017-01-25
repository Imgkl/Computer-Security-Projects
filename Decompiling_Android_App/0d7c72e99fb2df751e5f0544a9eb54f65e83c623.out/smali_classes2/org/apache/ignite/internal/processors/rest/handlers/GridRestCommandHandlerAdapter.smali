.class public abstract Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandlerAdapter;
.super Ljava/lang/Object;
.source "GridRestCommandHandlerAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandler;


# instance fields
.field protected final ctx:Lorg/apache/ignite/internal/GridKernalContext;

.field protected final log:Lorg/apache/ignite/IgniteLogger;


# direct methods
.method protected constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandlerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/ignite/internal/GridKernalContext;->log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandlerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    .line 40
    return-void
.end method

.method protected static missingParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "param"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to find mandatory parameter in request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

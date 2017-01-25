.class public Lorg/apache/ignite/internal/visor/node/VisorNodeConfigurationCollectorTask;
.super Lorg/apache/ignite/internal/visor/VisorOneNodeTask;
.source "VisorNodeConfigurationCollectorTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorOneNodeTask",
        "<",
        "Ljava/lang/Void;",
        "Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/processors/task/GridInternal;
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/apache/ignite/internal/visor/VisorOneNodeTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic job(Ljava/lang/Object;)Lorg/apache/ignite/internal/visor/VisorJob;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeConfigurationCollectorTask;->job(Ljava/lang/Void;)Lorg/apache/ignite/internal/visor/node/VisorNodeConfigurationCollectorJob;

    move-result-object v0

    return-object v0
.end method

.method protected job(Ljava/lang/Void;)Lorg/apache/ignite/internal/visor/node/VisorNodeConfigurationCollectorJob;
    .locals 2
    .param p1, "arg"    # Ljava/lang/Void;

    .prologue
    .line 33
    new-instance v0, Lorg/apache/ignite/internal/visor/node/VisorNodeConfigurationCollectorJob;

    iget-boolean v1, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeConfigurationCollectorTask;->debug:Z

    invoke-direct {v0, p1, v1}, Lorg/apache/ignite/internal/visor/node/VisorNodeConfigurationCollectorJob;-><init>(Ljava/lang/Void;Z)V

    return-object v0
.end method

.class public Lorg/apache/ignite/internal/visor/node/VisorNodeConfigurationCollectorJob;
.super Lorg/apache/ignite/internal/visor/VisorJob;
.source "VisorNodeConfigurationCollectorJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorJob",
        "<",
        "Ljava/lang/Void;",
        "Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/lang/Void;Z)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Void;
    .param p2, "debug"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorJob;-><init>(Ljava/lang/Object;Z)V

    .line 36
    return-void
.end method


# virtual methods
.method protected bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeConfigurationCollectorJob;->run(Ljava/lang/Void;)Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;

    move-result-object v0

    return-object v0
.end method

.method protected run(Ljava/lang/Void;)Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;
    .locals 2
    .param p1, "arg"    # Ljava/lang/Void;

    .prologue
    .line 40
    new-instance v0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;-><init>()V

    iget-object v1, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeConfigurationCollectorJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->from(Lorg/apache/ignite/internal/IgniteEx;)Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/apache/ignite/internal/visor/node/VisorNodeConfigurationCollectorJob;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

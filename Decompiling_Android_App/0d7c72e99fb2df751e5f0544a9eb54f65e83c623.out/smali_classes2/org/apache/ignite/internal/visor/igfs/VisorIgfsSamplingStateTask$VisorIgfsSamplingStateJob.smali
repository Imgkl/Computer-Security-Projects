.class Lorg/apache/ignite/internal/visor/igfs/VisorIgfsSamplingStateTask$VisorIgfsSamplingStateJob;
.super Lorg/apache/ignite/internal/visor/VisorJob;
.source "VisorIgfsSamplingStateTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/igfs/VisorIgfsSamplingStateTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisorIgfsSamplingStateJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorJob",
        "<",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>(Lorg/apache/ignite/lang/IgniteBiTuple;Z)V
    .locals 0
    .param p2, "debug"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "arg":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorJob;-><init>(Ljava/lang/Object;Z)V

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/lang/IgniteBiTuple;ZLorg/apache/ignite/internal/visor/igfs/VisorIgfsSamplingStateTask$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/lang/IgniteBiTuple;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/apache/ignite/internal/visor/igfs/VisorIgfsSamplingStateTask$1;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsSamplingStateTask$VisorIgfsSamplingStateJob;-><init>(Lorg/apache/ignite/lang/IgniteBiTuple;Z)V

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
    .line 38
    check-cast p1, Lorg/apache/ignite/lang/IgniteBiTuple;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsSamplingStateTask$VisorIgfsSamplingStateJob;->run(Lorg/apache/ignite/lang/IgniteBiTuple;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected run(Lorg/apache/ignite/lang/IgniteBiTuple;)Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "arg":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsSamplingStateTask$VisorIgfsSamplingStateJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-virtual {p1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Lorg/apache/ignite/internal/IgniteEx;->fileSystem(Ljava/lang/String;)Lorg/apache/ignite/IgniteFileSystem;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-virtual {p1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->globalSampling(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    const/4 v2, 0x0

    return-object v2

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lorg/apache/ignite/IgniteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set sampling state for IGFS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 62
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 63
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v2

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-class v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsSamplingStateTask$VisorIgfsSamplingStateJob;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

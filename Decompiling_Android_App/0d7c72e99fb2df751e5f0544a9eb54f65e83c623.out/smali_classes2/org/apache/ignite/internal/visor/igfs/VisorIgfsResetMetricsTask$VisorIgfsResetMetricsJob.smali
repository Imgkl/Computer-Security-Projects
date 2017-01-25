.class Lorg/apache/ignite/internal/visor/igfs/VisorIgfsResetMetricsTask$VisorIgfsResetMetricsJob;
.super Lorg/apache/ignite/internal/visor/VisorJob;
.source "VisorIgfsResetMetricsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/igfs/VisorIgfsResetMetricsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisorIgfsResetMetricsJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorJob",
        "<",
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>(Ljava/util/Set;Z)V
    .locals 0
    .param p2, "debug"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "arg":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorJob;-><init>(Ljava/lang/Object;Z)V

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;ZLorg/apache/ignite/internal/visor/igfs/VisorIgfsResetMetricsTask$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Set;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/apache/ignite/internal/visor/igfs/VisorIgfsResetMetricsTask$1;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsResetMetricsTask$VisorIgfsResetMetricsJob;-><init>(Ljava/util/Set;Z)V

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
    .line 43
    check-cast p1, Ljava/util/Set;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsResetMetricsTask$VisorIgfsResetMetricsJob;->run(Ljava/util/Set;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected run(Ljava/util/Set;)Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "igfsNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 59
    .local v2, "igfsName":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsResetMetricsTask$VisorIgfsResetMetricsJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v3, v2}, Lorg/apache/ignite/internal/IgniteEx;->fileSystem(Ljava/lang/String;)Lorg/apache/ignite/IgniteFileSystem;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/IgniteFileSystem;->resetMetrics()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lorg/apache/ignite/IgniteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to reset metrics for IGFS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 65
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v2    # "igfsName":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-class v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsResetMetricsTask$VisorIgfsResetMetricsJob;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

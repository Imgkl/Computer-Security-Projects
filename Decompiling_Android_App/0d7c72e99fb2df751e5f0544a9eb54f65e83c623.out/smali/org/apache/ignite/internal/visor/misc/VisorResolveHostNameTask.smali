.class public Lorg/apache/ignite/internal/visor/misc/VisorResolveHostNameTask;
.super Lorg/apache/ignite/internal/visor/VisorOneNodeTask;
.source "VisorResolveHostNameTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/visor/misc/VisorResolveHostNameTask$1;,
        Lorg/apache/ignite/internal/visor/misc/VisorResolveHostNameTask$VisorResolveHostNameJob;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorOneNodeTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
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
    .line 34
    invoke-direct {p0}, Lorg/apache/ignite/internal/visor/VisorOneNodeTask;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method protected bridge synthetic job(Ljava/lang/Object;)Lorg/apache/ignite/internal/visor/VisorJob;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/misc/VisorResolveHostNameTask;->job(Ljava/lang/Void;)Lorg/apache/ignite/internal/visor/misc/VisorResolveHostNameTask$VisorResolveHostNameJob;

    move-result-object v0

    return-object v0
.end method

.method protected job(Ljava/lang/Void;)Lorg/apache/ignite/internal/visor/misc/VisorResolveHostNameTask$VisorResolveHostNameJob;
    .locals 3
    .param p1, "arg"    # Ljava/lang/Void;

    .prologue
    .line 40
    new-instance v0, Lorg/apache/ignite/internal/visor/misc/VisorResolveHostNameTask$VisorResolveHostNameJob;

    iget-boolean v1, p0, Lorg/apache/ignite/internal/visor/misc/VisorResolveHostNameTask;->debug:Z

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ignite/internal/visor/misc/VisorResolveHostNameTask$VisorResolveHostNameJob;-><init>(Ljava/lang/Void;ZLorg/apache/ignite/internal/visor/misc/VisorResolveHostNameTask$1;)V

    return-object v0
.end method

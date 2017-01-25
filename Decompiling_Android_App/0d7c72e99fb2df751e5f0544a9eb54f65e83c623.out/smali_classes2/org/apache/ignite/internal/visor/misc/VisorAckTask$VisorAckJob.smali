.class Lorg/apache/ignite/internal/visor/misc/VisorAckTask$VisorAckJob;
.super Lorg/apache/ignite/internal/visor/VisorJob;
.source "VisorAckTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/misc/VisorAckTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisorAckJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorJob",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "debug"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorJob;-><init>(Ljava/lang/Object;Z)V

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLorg/apache/ignite/internal/visor/misc/VisorAckTask$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/apache/ignite/internal/visor/misc/VisorAckTask$1;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/misc/VisorAckTask$VisorAckJob;-><init>(Ljava/lang/String;Z)V

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
    .line 49
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/misc/VisorAckTask$VisorAckJob;->run(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected run(Ljava/lang/String;)Ljava/lang/Void;
    .locals 3
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 65
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<visor>: ack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/visor/misc/VisorAckTask$VisorAckJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteEx;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object p1

    .end local p1    # "arg":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-class v0, Lorg/apache/ignite/internal/visor/misc/VisorAckTask$VisorAckJob;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

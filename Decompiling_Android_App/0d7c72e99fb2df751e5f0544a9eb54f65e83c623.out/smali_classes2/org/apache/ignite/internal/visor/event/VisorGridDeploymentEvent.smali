.class public Lorg/apache/ignite/internal/visor/event/VisorGridDeploymentEvent;
.super Lorg/apache/ignite/internal/visor/event/VisorGridEvent;
.source "VisorGridDeploymentEvent.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final alias:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/util/UUID;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "typeId"    # I
    .param p2, "id"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "nid"    # Ljava/util/UUID;
    .param p5, "ts"    # J
    .param p7, "msg"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8, "shortDisplay"    # Ljava/lang/String;
    .param p9, "alias"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct/range {p0 .. p8}, Lorg/apache/ignite/internal/visor/event/VisorGridEvent;-><init>(ILorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/util/UUID;JLjava/lang/String;Ljava/lang/String;)V

    .line 60
    iput-object p9, p0, Lorg/apache/ignite/internal/visor/event/VisorGridDeploymentEvent;->alias:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public alias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/event/VisorGridDeploymentEvent;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-class v0, Lorg/apache/ignite/internal/visor/event/VisorGridDeploymentEvent;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

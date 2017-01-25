.class public Lorg/apache/ignite/internal/visor/event/VisorGridEvent;
.super Ljava/lang/Object;
.source "VisorGridEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final id:Lorg/apache/ignite/lang/IgniteUuid;

.field private final msg:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final nid:Ljava/util/UUID;

.field private final shortDisplay:Ljava/lang/String;

.field private final ts:J

.field private final typeId:I


# direct methods
.method public constructor <init>(ILorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/util/UUID;JLjava/lang/String;Ljava/lang/String;)V
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

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lorg/apache/ignite/internal/visor/event/VisorGridEvent;->typeId:I

    .line 69
    iput-object p2, p0, Lorg/apache/ignite/internal/visor/event/VisorGridEvent;->id:Lorg/apache/ignite/lang/IgniteUuid;

    .line 70
    iput-object p3, p0, Lorg/apache/ignite/internal/visor/event/VisorGridEvent;->name:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lorg/apache/ignite/internal/visor/event/VisorGridEvent;->nid:Ljava/util/UUID;

    .line 72
    iput-wide p5, p0, Lorg/apache/ignite/internal/visor/event/VisorGridEvent;->ts:J

    .line 73
    iput-object p7, p0, Lorg/apache/ignite/internal/visor/event/VisorGridEvent;->msg:Ljava/lang/String;

    .line 74
    iput-object p8, p0, Lorg/apache/ignite/internal/visor/event/VisorGridEvent;->shortDisplay:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public id()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/event/VisorGridEvent;->id:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public message()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/event/VisorGridEvent;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/event/VisorGridEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public nid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/event/VisorGridEvent;->nid:Ljava/util/UUID;

    return-object v0
.end method

.method public shortDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/event/VisorGridEvent;->shortDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public timestamp()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/event/VisorGridEvent;->ts:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-class v0, Lorg/apache/ignite/internal/visor/event/VisorGridEvent;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeId()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lorg/apache/ignite/internal/visor/event/VisorGridEvent;->typeId:I

    return v0
.end method

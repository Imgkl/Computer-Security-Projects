.class public abstract Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
.super Ljava/lang/Object;
.source "IgfsMessage.java"


# instance fields
.field private cmd:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public command()Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsMessage;->cmd:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    return-object v0
.end method

.method public command(Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;)V
    .locals 0
    .param p1, "cmd"    # Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    .prologue
    .line 39
    iput-object p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsMessage;->cmd:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    .line 40
    return-void
.end method

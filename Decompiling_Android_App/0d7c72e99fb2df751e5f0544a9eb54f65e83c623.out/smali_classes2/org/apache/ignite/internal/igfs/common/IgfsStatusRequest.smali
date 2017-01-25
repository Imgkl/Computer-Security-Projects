.class public Lorg/apache/ignite/internal/igfs/common/IgfsStatusRequest;
.super Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
.source "IgfsStatusRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/apache/ignite/internal/igfs/common/IgfsMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public command()Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->STATUS:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    return-object v0
.end method

.method public command(Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;)V
    .locals 0
    .param p1, "cmd"    # Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    .prologue
    .line 34
    return-void
.end method

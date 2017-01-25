.class public Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;
.super Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
.source "IgfsHandshakeRequest.java"


# instance fields
.field private gridName:Ljava/lang/String;

.field private igfsName:Ljava/lang/String;

.field private logDir:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/apache/ignite/internal/igfs/common/IgfsMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public command()Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->HANDSHAKE:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    return-object v0
.end method

.method public command(Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;)V
    .locals 0
    .param p1, "cmd"    # Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    .prologue
    .line 45
    return-void
.end method

.method public gridName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;->gridName:Ljava/lang/String;

    return-object v0
.end method

.method public gridName(Ljava/lang/String;)V
    .locals 0
    .param p1, "gridName"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;->gridName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public igfsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;->igfsName:Ljava/lang/String;

    return-object v0
.end method

.method public igfsName(Ljava/lang/String;)V
    .locals 0
    .param p1, "igfsName"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;->igfsName:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public logDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;->logDir:Ljava/lang/String;

    return-object v0
.end method

.method public logDirectory(Ljava/lang/String;)V
    .locals 0
    .param p1, "logDir"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;->logDir:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-class v0, Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;
.super Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
.source "GridClientNioTcpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TcpClientFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter",
        "<TR;>;"
    }
.end annotation


# static fields
.field private static final STATE_AUTH_RETRY:I = 0x1

.field private static final STATE_INITIAL:I = 0x0

.field private static final STATE_REQUEST_RETRY:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private authRetry:I

.field private final forward:Z

.field private final keepPortables:Z

.field private pendingMsg:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;, "Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture<TR;>;"
    const/4 v0, 0x0

    .line 1001
    invoke-direct {p0}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;-><init>()V

    .line 995
    iput v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->authRetry:I

    .line 1002
    iput-boolean v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->forward:Z

    .line 1003
    iput-boolean v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->keepPortables:Z

    .line 1004
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$1;

    .prologue
    .line 972
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;, "Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture<TR;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;-><init>()V

    return-void
.end method

.method private constructor <init>(ZZ)V
    .locals 1
    .param p1, "forward"    # Z
    .param p2, "keepPortables"    # Z

    .prologue
    .line 1011
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;, "Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture<TR;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;-><init>()V

    .line 995
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->authRetry:I

    .line 1012
    iput-boolean p1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->forward:Z

    .line 1013
    iput-boolean p2, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->keepPortables:Z

    .line 1014
    return-void
.end method

.method synthetic constructor <init>(ZZLorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$1;

    .prologue
    .line 972
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;, "Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture<TR;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public forward()Z
    .locals 1

    .prologue
    .line 1048
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;, "Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture<TR;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->forward:Z

    return v0
.end method

.method public keepPortables()Z
    .locals 1

    .prologue
    .line 1055
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;, "Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture<TR;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->keepPortables:Z

    return v0
.end method

.method public pendingMessage()Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    .locals 1

    .prologue
    .line 1020
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;, "Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture<TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->pendingMsg:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    return-object v0
.end method

.method public pendingMessage(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;)V
    .locals 0
    .param p1, "pendingMsg"    # Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    .prologue
    .line 1027
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;, "Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture<TR;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->pendingMsg:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    .line 1028
    return-void
.end method

.method public retryState()I
    .locals 1

    .prologue
    .line 1034
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;, "Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture<TR;>;"
    iget v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->authRetry:I

    return v0
.end method

.method public retryState(I)V
    .locals 0
    .param p1, "authRetry"    # I

    .prologue
    .line 1041
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;, "Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture<TR;>;"
    iput p1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->authRetry:I

    .line 1042
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1060
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;, "Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture<TR;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TcpClientFuture [state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->authRetry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forward="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->forward:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->pendingMsg:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

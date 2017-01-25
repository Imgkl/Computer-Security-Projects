.class Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;
.super Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl;
.source "GridNioServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/nio/GridNioServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NioOperationFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl",
        "<TR;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private accepted:Z

.field private commMsg:Lorg/apache/ignite/plugin/extensions/communication/Message;

.field private meta:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "*>;"
        }
    .end annotation
.end field

.field private msg:Ljava/nio/ByteBuffer;

.field private op:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

.field private ses:Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

.field private skipRecovery:Z

.field private sockCh:Ljava/nio/channels/SocketChannel;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1764
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/nio/channels/SocketChannel;)V
    .locals 2
    .param p1, "sockCh"    # Ljava/nio/channels/SocketChannel;

    .prologue
    .line 1799
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<TR;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;-><init>(Ljava/nio/channels/SocketChannel;ZLjava/util/Map;)V

    .line 1800
    return-void
.end method

.method constructor <init>(Ljava/nio/channels/SocketChannel;ZLjava/util/Map;)V
    .locals 1
    .param p1, "sockCh"    # Ljava/nio/channels/SocketChannel;
    .param p2, "accepted"    # Z
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/SocketChannel;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 1811
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<TR;>;"
    .local p3, "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;*>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl;-><init>()V

    .line 1812
    sget-object v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;->REGISTER:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    iput-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->op:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    .line 1814
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->sockCh:Ljava/nio/channels/SocketChannel;

    .line 1815
    iput-boolean p2, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->accepted:Z

    .line 1816
    iput-object p3, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->meta:Ljava/util/Map;

    .line 1817
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;)V
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    .param p2, "op"    # Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    .prologue
    .line 1825
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<TR;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl;-><init>()V

    .line 1826
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1827
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1828
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    sget-object v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;->REGISTER:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    if-ne p2, v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1830
    :cond_2
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->ses:Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    .line 1831
    iput-object p2, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->op:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    .line 1832
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    .param p2, "op"    # Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;
    .param p3, "msg"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1842
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<TR;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl;-><init>()V

    .line 1843
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1844
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1845
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    sget-object v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;->REGISTER:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    if-ne p2, v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1846
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p3, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1848
    :cond_3
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->ses:Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    .line 1849
    iput-object p2, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->op:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    .line 1850
    iput-object p3, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->msg:Ljava/nio/ByteBuffer;

    .line 1851
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;Lorg/apache/ignite/plugin/extensions/communication/Message;Z)V
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    .param p2, "op"    # Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;
    .param p3, "commMsg"    # Lorg/apache/ignite/plugin/extensions/communication/Message;
    .param p4, "skipRecovery"    # Z

    .prologue
    .line 1862
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<TR;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl;-><init>()V

    .line 1863
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1864
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1865
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    sget-object v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;->REGISTER:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    if-ne p2, v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1866
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p3, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1868
    :cond_3
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->ses:Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    .line 1869
    iput-object p2, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->op:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    .line 1870
    iput-object p3, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->commMsg:Lorg/apache/ignite/plugin/extensions/communication/Message;

    .line 1871
    iput-boolean p4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->skipRecovery:Z

    .line 1872
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    .prologue
    .line 1764
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->connectionClosed()V

    return-void
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)Lorg/apache/ignite/plugin/extensions/communication/Message;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    .prologue
    .line 1764
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->directMessage()Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    .prologue
    .line 1764
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->operation()Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    .prologue
    .line 1764
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->session()Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;
    .param p1, "x1"    # Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    .prologue
    .line 1764
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->resetSession(Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;)V

    return-void
.end method

.method static synthetic access$2000(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)Ljava/nio/channels/SocketChannel;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    .prologue
    .line 1764
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->socketChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    .prologue
    .line 1764
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->message()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private connectionClosed()V
    .locals 3

    .prologue
    .line 1936
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<TR;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->op:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    sget-object v1, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;->REQUIRE_WRITE:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1937
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->ses:Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1939
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send message (connection was closed): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->ses:Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 1940
    return-void
.end method

.method private directMessage()Lorg/apache/ignite/plugin/extensions/communication/Message;
    .locals 1

    .prologue
    .line 1892
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->commMsg:Lorg/apache/ignite/plugin/extensions/communication/Message;

    return-object v0
.end method

.method private message()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 1885
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->msg:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private operation()Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;
    .locals 1

    .prologue
    .line 1878
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->op:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    return-object v0
.end method

.method private resetSession(Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;)V
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    .prologue
    .line 1899
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<TR;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->commMsg:Lorg/apache/ignite/plugin/extensions/communication/Message;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1901
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->ses:Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    .line 1902
    return-void
.end method

.method private session()Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    .locals 1

    .prologue
    .line 1915
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->ses:Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    return-object v0
.end method

.method private socketChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .prologue
    .line 1908
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->sockCh:Ljava/nio/channels/SocketChannel;

    return-object v0
.end method


# virtual methods
.method accepted()Z
    .locals 1

    .prologue
    .line 1922
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<TR;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->accepted:Z

    return v0
.end method

.method public meta()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 1929
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->meta:Ljava/util/Map;

    return-object v0
.end method

.method public skipRecovery()Z
    .locals 1

    .prologue
    .line 1944
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<TR;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->skipRecovery:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1949
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<TR;>;"
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

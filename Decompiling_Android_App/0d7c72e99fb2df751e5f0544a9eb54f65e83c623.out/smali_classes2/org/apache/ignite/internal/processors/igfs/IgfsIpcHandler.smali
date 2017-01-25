.class Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;
.super Ljava/lang/Object;
.source "IgfsIpcHandler.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/igfs/IgfsServerHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler$2;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static errWrite:Z


# instance fields
.field private final bufSize:I

.field private final ctx:Lorg/apache/ignite/internal/GridKernalContext;

.field private igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

.field private log:Lorg/apache/ignite/IgniteLogger;

.field private rsrcIdGen:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile stopping:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsContext;)V
    .locals 2
    .param p1, "igfsCtx"    # Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->rsrcIdGen:Ljava/util/concurrent/atomic/AtomicLong;

    .line 68
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 71
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->igfs()Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    .line 74
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->bufSize:I

    .line 76
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    const-class v1, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/GridKernalContext;->log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->log:Lorg/apache/ignite/IgniteLogger;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;Lorg/apache/ignite/internal/igfs/common/IgfsMessage;Ljava/io/DataInput;)Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;
    .param p2, "x2"    # Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;
    .param p3, "x3"    # Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    .param p4, "x4"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->execute(Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;Lorg/apache/ignite/internal/igfs/common/IgfsMessage;Ljava/io/DataInput;)Lorg/apache/ignite/internal/igfs/common/IgfsMessage;

    move-result-object v0

    return-object v0
.end method

.method private affinityKey(Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 5
    .param p1, "req"    # Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/16 v4, 0x5d

    .line 518
    invoke-virtual {p1}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->colocate()Z

    move-result v1

    if-nez v1, :cond_2

    .line 519
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Will not generate affinity key for path control request [igfsName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", req="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 523
    :cond_0
    const/4 v0, 0x0

    .line 532
    :cond_1
    :goto_0
    return-object v0

    .line 526
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->nextAffinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    .line 528
    .local v0, "key":Lorg/apache/ignite/lang/IgniteUuid;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 529
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generated affinity key for path control request [igfsName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", req="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private execute(Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;Lorg/apache/ignite/internal/igfs/common/IgfsMessage;Ljava/io/DataInput;)Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    .locals 3
    .param p1, "ses"    # Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;
    .param p2, "cmd"    # Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;
    .param p3, "msg"    # Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    .param p4, "in"    # Ljava/io/DataInput;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 158
    sget-object v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler$2;->$SwitchMap$org$apache$ignite$internal$igfs$common$IgfsIpcCommand:[I

    invoke-virtual {p2}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 187
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported IPC command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :pswitch_0
    check-cast p3, Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;

    .end local p3    # "msg":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->processHandshakeRequest(Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;)Lorg/apache/ignite/internal/igfs/common/IgfsMessage;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    .line 163
    .restart local p3    # "msg":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    :pswitch_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->processStatusRequest()Lorg/apache/ignite/internal/igfs/common/IgfsMessage;

    move-result-object v0

    goto :goto_0

    .line 179
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->processPathControlRequest(Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;Lorg/apache/ignite/internal/igfs/common/IgfsMessage;)Lorg/apache/ignite/internal/igfs/common/IgfsMessage;

    move-result-object v0

    goto :goto_0

    .line 184
    :pswitch_3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->processStreamControlRequest(Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;Lorg/apache/ignite/internal/igfs/common/IgfsMessage;Ljava/io/DataInput;)Lorg/apache/ignite/internal/igfs/common/IgfsMessage;

    move-result-object v0

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private processHandshakeRequest(Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;)Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    .locals 7
    .param p1, "req"    # Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x5d

    .line 199
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;->gridName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to perform handshake because actual Grid name differs from expected [expected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;->gridName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", actual="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;->igfsName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 204
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to perform handshake because actual IGFS name differs from expected [expected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;->igfsName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", actual="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 207
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;

    invoke-direct {v0}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;-><init>()V

    .line 209
    .local v0, "res":Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/igfs/common/IgfsHandshakeRequest;->logDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->clientLogDirectory(Ljava/lang/String;)V

    .line 211
    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->proxyPaths()Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->groupBlockSize()J

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->globalSampling()Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;JLjava/lang/Boolean;)V

    .line 214
    .local v1, "handshake":Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;
    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->handshake(Lorg/apache/ignite/internal/processors/igfs/IgfsHandshakeResponse;)V

    .line 216
    return-object v0
.end method

.method private processPathControlRequest(Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;Lorg/apache/ignite/internal/igfs/common/IgfsMessage;)Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    .locals 18
    .param p1, "ses"    # Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;
    .param p2, "cmd"    # Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;
    .param p3, "msg"    # Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 246
    move-object/from16 v14, p3

    check-cast v14, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;

    .line 248
    .local v14, "req":Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing path control request [igfsName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", req="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 251
    :cond_0
    new-instance v15, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;

    invoke-direct {v15}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;-><init>()V

    .line 254
    .local v15, "res":Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;
    :try_start_0
    sget-object v2, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler$2;->$SwitchMap$org$apache$ignite$internal$igfs$common$IgfsIpcCommand:[I

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 372
    :pswitch_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled path control request command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :catch_0
    move-exception v11

    .line 378
    .local v11, "e":Lorg/apache/ignite/IgniteException;
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v2, v11}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 256
    .end local v11    # "e":Lorg/apache/ignite/IgniteException;
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->path()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->exists(Lorg/apache/ignite/igfs/IgfsPath;)Z

    move-result v2

    invoke-virtual {v15, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->response(Z)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 381
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finished processing path control request [igfsName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", req="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 385
    :cond_2
    return-object v15

    .line 261
    :pswitch_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->path()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->info(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsFile;

    move-result-object v2

    invoke-virtual {v15, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->response(Lorg/apache/ignite/igfs/IgfsFile;)V

    goto :goto_0

    .line 266
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->path()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->summary(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsPathSummary;

    move-result-object v2

    invoke-virtual {v15, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->response(Lorg/apache/ignite/igfs/IgfsPathSummary;)V

    goto :goto_0

    .line 271
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->path()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v3

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->properties()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->update(Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)Lorg/apache/ignite/igfs/IgfsFile;

    move-result-object v2

    invoke-virtual {v15, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->response(Lorg/apache/ignite/igfs/IgfsFile;)V

    goto :goto_0

    .line 276
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->path()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v3

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->destinationPath()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->rename(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;)V

    .line 278
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->response(Z)V

    goto/16 :goto_0

    .line 283
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->path()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v3

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->flag()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->delete(Lorg/apache/ignite/igfs/IgfsPath;Z)Z

    move-result v2

    invoke-virtual {v15, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->response(Z)V

    goto/16 :goto_0

    .line 288
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->path()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v3

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->properties()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->mkdirs(Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)V

    .line 290
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->response(Z)V

    goto/16 :goto_0

    .line 295
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->path()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->listPaths(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v15, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->paths(Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 300
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->path()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->listFiles(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v15, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->files(Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 305
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->path()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v3

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->accessTime()J

    move-result-wide v4

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->modificationTime()J

    move-result-wide v6

    invoke-interface/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->setTimes(Lorg/apache/ignite/igfs/IgfsPath;JJ)V

    .line 307
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->response(Z)V

    goto/16 :goto_0

    .line 312
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->path()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v3

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->start()J

    move-result-wide v4

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->length()J

    move-result-wide v6

    invoke-interface/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->affinity(Lorg/apache/ignite/igfs/IgfsPath;JJ)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v15, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->locations(Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 317
    :pswitch_c
    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->flag()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->path()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->bufSize:I

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->open(Lorg/apache/ignite/igfs/IgfsPath;I)Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;

    move-result-object v12

    .line 320
    .local v12, "igfsIn":Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->registerResource(Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;Ljava/io/Closeable;)J

    move-result-wide v16

    .line 322
    .local v16, "streamId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opened IGFS input stream for file read [igfsName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->path()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", streamId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ses="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 326
    :cond_3
    new-instance v13, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;->fileInfo()Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;->fileInfo()Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->modificationTime()J

    move-result-wide v4

    invoke-direct {v13, v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/lang/IgniteUuid;J)V

    .line 329
    .local v13, "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamDescriptor;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->length()J

    move-result-wide v4

    move-wide/from16 v0, v16

    invoke-direct {v2, v0, v1, v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamDescriptor;-><init>(JJ)V

    invoke-virtual {v15, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->response(Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamDescriptor;)V

    goto/16 :goto_0

    .line 317
    .end local v12    # "igfsIn":Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;
    .end local v13    # "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v16    # "streamId":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->path()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->bufSize:I

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->sequentialReadsBeforePrefetch()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->open(Lorg/apache/ignite/igfs/IgfsPath;II)Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;

    move-result-object v12

    goto/16 :goto_1

    .line 335
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->path()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->bufSize:I

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->flag()Z

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->affinityKey(Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->replication()I

    move-result v7

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->blockSize()J

    move-result-wide v8

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->properties()Ljava/util/Map;

    move-result-object v10

    invoke-interface/range {v2 .. v10}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->create(Lorg/apache/ignite/igfs/IgfsPath;IZLorg/apache/ignite/lang/IgniteUuid;IJLjava/util/Map;)Lorg/apache/ignite/igfs/IgfsOutputStream;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->registerResource(Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;Ljava/io/Closeable;)J

    move-result-wide v16

    .line 345
    .restart local v16    # "streamId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opened IGFS output stream for file create [igfsName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->path()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", streamId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ses="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 349
    :cond_5
    invoke-virtual/range {v15 .. v17}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->response(J)V

    goto/16 :goto_0

    .line 355
    .end local v16    # "streamId":J
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->path()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->bufSize:I

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->flag()Z

    move-result v5

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->properties()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->append(Lorg/apache/ignite/igfs/IgfsPath;IZLjava/util/Map;)Lorg/apache/ignite/igfs/IgfsOutputStream;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->registerResource(Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;Ljava/io/Closeable;)J

    move-result-wide v16

    .line 362
    .restart local v16    # "streamId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opened IGFS output stream for file append [igfsName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->path()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", streamId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ses="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 366
    :cond_6
    invoke-virtual/range {v15 .. v17}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->response(J)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private processStatusRequest()Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->globalSpace()Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;

    move-result-object v1

    .line 228
    .local v1, "status":Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;
    new-instance v0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;

    invoke-direct {v0}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;-><init>()V

    .line 230
    .local v0, "res":Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;
    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->status(Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;)V

    .line 232
    return-object v0
.end method

.method private processStreamControlRequest(Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;Lorg/apache/ignite/internal/igfs/common/IgfsMessage;Ljava/io/DataInput;)Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    .locals 22
    .param p1, "ses"    # Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;
    .param p2, "cmd"    # Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;
    .param p3, "msg"    # Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    .param p4, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    move-object/from16 v9, p3

    check-cast v9, Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;

    .line 403
    .local v9, "req":Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;
    invoke-virtual {v9}, Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;->streamId()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 405
    .local v14, "rsrcId":Ljava/lang/Long;
    new-instance v13, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;

    invoke-direct {v13}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;-><init>()V

    .line 407
    .local v13, "resp":Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;
    sget-object v19, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler$2;->$SwitchMap$org$apache$ignite$internal$igfs$common$IgfsIpcCommand:[I

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->ordinal()I

    move-result v20

    aget v19, v19, v20

    sparse-switch v19, :sswitch_data_0

    .line 503
    sget-boolean v19, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->$assertionsDisabled:Z

    if-nez v19, :cond_5

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    .line 409
    :sswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->resource(Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;Ljava/lang/Long;)Ljava/io/Closeable;

    move-result-object v12

    .line 411
    .local v12, "res":Ljava/io/Closeable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Requested to close resource [igfsName="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->name()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", rsrcId="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", res="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x5d

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 415
    :cond_0
    if-nez v12, :cond_1

    .line 416
    new-instance v19, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Resource to close not found: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 419
    :cond_1
    :try_start_0
    invoke-interface {v12}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;->unregisterResource(Ljava/lang/Long;Ljava/io/Closeable;)Z

    move-result v17

    .line 433
    .local v17, "success":Z
    sget-boolean v19, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->$assertionsDisabled:Z

    if-nez v19, :cond_3

    if-nez v17, :cond_3

    new-instance v19, Ljava/lang/AssertionError;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to unregister resource [igfsName="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->name()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", rsrcId="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", res="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x5d

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v19

    .line 421
    .end local v17    # "success":Z
    :catch_0
    move-exception v5

    .line 423
    .local v5, "e":Ljava/io/IOException;
    const-class v19, Lorg/apache/ignite/igfs/IgfsOutOfSpaceException;

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Lorg/apache/ignite/internal/util/typedef/X;->cause(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;

    move-result-object v16

    check-cast v16, Lorg/apache/ignite/igfs/IgfsOutOfSpaceException;

    .line 425
    .local v16, "space":Lorg/apache/ignite/igfs/IgfsOutOfSpaceException;
    if-eqz v16, :cond_2

    .line 426
    throw v16

    .line 428
    :cond_2
    throw v5

    .line 436
    .end local v5    # "e":Ljava/io/IOException;
    .end local v16    # "space":Lorg/apache/ignite/igfs/IgfsOutOfSpaceException;
    .restart local v17    # "success":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Closed IGFS stream [igfsName="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->name()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", streamId="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", ses="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x5d

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 440
    :cond_4
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->response(Z)V

    .line 508
    .end local v12    # "res":Ljava/io/Closeable;
    .end local v13    # "resp":Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;
    .end local v17    # "success":Z
    :cond_5
    :goto_0
    return-object v13

    .line 446
    .restart local v13    # "resp":Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;
    :sswitch_1
    invoke-virtual {v9}, Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;->position()J

    move-result-wide v10

    .line 447
    .local v10, "pos":J
    invoke-virtual {v9}, Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;->length()I

    move-result v15

    .line 449
    .local v15, "size":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->resource(Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;Ljava/lang/Long;)Ljava/io/Closeable;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;

    .line 451
    .local v6, "igfsIn":Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;
    if-nez v6, :cond_6

    .line 452
    new-instance v19, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Input stream not found (already closed?): "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 454
    :cond_6
    invoke-virtual {v6, v10, v11, v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;->readChunks(JI)[[B

    move-result-object v4

    .line 456
    .local v4, "chunks":[[B
    invoke-virtual {v13, v4}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->response([[B)V

    .line 460
    const/4 v7, 0x0

    .line 462
    .local v7, "len":I
    array-length v0, v4

    move/from16 v19, v0

    if-lez v19, :cond_7

    .line 463
    const/16 v19, 0x0

    aget-object v19, v4, v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v7, v7, v19

    .line 465
    :cond_7
    array-length v0, v4

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_8

    .line 466
    array-length v0, v4

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    aget-object v19, v4, v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v7, v7, v19

    .line 468
    :cond_8
    array-length v0, v4

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_9

    .line 469
    const/16 v19, 0x1

    aget-object v19, v4, v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    array-length v0, v4

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x2

    mul-int v19, v19, v20

    add-int v7, v7, v19

    .line 471
    :cond_9
    invoke-virtual {v13, v7}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->length(I)V

    goto/16 :goto_0

    .line 477
    .end local v4    # "chunks":[[B
    .end local v6    # "igfsIn":Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;
    .end local v7    # "len":I
    .end local v10    # "pos":J
    .end local v15    # "size":I
    :sswitch_2
    sget-boolean v19, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->$assertionsDisabled:Z

    if-nez v19, :cond_a

    if-nez v14, :cond_a

    new-instance v19, Ljava/lang/AssertionError;

    const-string v20, "Missing stream ID"

    invoke-direct/range {v19 .. v20}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v19

    .line 479
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->resource(Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;Ljava/lang/Long;)Ljava/io/Closeable;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/igfs/IgfsOutputStream;

    .line 481
    .local v8, "out":Lorg/apache/ignite/igfs/IgfsOutputStream;
    if-nez v8, :cond_b

    .line 482
    new-instance v19, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Output stream not found (already closed?): "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 484
    :cond_b
    invoke-virtual {v9}, Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;->length()I

    move-result v18

    .line 487
    .local v18, "writeLen":I
    :try_start_1
    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/apache/ignite/igfs/IgfsOutputStream;->transferFrom(Ljava/io/DataInput;I)V

    .line 489
    sget-boolean v19, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->errWrite:Z

    if-eqz v19, :cond_c

    .line 490
    new-instance v19, Ljava/io/IOException;

    const-string v20, "Failed to write data to server (test)."

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 495
    :catch_1
    move-exception v5

    .line 496
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    invoke-virtual {v13, v0, v1, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->error(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 493
    .end local v5    # "e":Ljava/io/IOException;
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 407
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x12 -> :sswitch_0
        0x13 -> :sswitch_1
    .end sparse-switch
.end method

.method private registerResource(Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;Ljava/io/Closeable;)J
    .locals 6
    .param p1, "ses"    # Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;
    .param p2, "rsrc"    # Ljava/io/Closeable;

    .prologue
    .line 543
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->rsrcIdGen:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    .line 545
    .local v2, "rsrcId":J
    invoke-virtual {p1, v2, v3, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;->registerResource(JLjava/io/Closeable;)Z

    move-result v0

    .line 547
    .local v0, "registered":Z
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to register resource (duplicate id?): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 549
    :cond_0
    return-wide v2
.end method

.method private resource(Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;Ljava/lang/Long;)Ljava/io/Closeable;
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;
    .param p2, "rsrcId"    # Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 560
    invoke-virtual {p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;->resource(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    return-object v0
.end method


# virtual methods
.method public handleAsync(Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;Lorg/apache/ignite/internal/igfs/common/IgfsMessage;Ljava/io/DataInput;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 7
    .param p1, "ses"    # Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;
    .param p2, "msg"    # Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    .param p3, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;",
            "Lorg/apache/ignite/internal/igfs/common/IgfsMessage;",
            "Ljava/io/DataInput;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/igfs/common/IgfsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 106
    :try_start_0
    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->stopping:Z

    if-eqz v4, :cond_0

    .line 141
    :goto_0
    return-object v2

    .line 109
    :cond_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/igfs/common/IgfsMessage;->command()Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    move-result-object v0

    .line 113
    .local v0, "cmd":Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;
    sget-object v4, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler$2;->$SwitchMap$org$apache$ignite$internal$igfs$common$IgfsIpcCommand:[I

    invoke-virtual {v0}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 128
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v4

    new-instance v5, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler$1;

    invoke-direct {v5, p0, p1, v0, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler$1;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;Lorg/apache/ignite/internal/igfs/common/IgfsMessage;)V

    sget-object v6, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;->IGFS_POOL:Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    invoke-virtual {v4, v5, v6}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocalSafe(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    .local v2, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/igfs/common/IgfsMessage;>;"
    goto :goto_0

    .line 119
    .end local v2    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/igfs/common/IgfsMessage;>;"
    :pswitch_0
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->execute(Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;Lorg/apache/ignite/internal/igfs/common/IgfsMessage;Ljava/io/DataInput;)Lorg/apache/ignite/internal/igfs/common/IgfsMessage;

    move-result-object v3

    .line 121
    .local v3, "res":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    if-nez v3, :cond_1

    .line 123
    .restart local v2    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/igfs/common/IgfsMessage;>;"
    :goto_1
    goto :goto_0

    .line 121
    .end local v2    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/igfs/common/IgfsMessage;>;"
    :cond_1
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 140
    .end local v0    # "cmd":Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;
    .end local v3    # "res":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v2, v1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onClosed(Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;)V
    .locals 6
    .param p1, "ses"    # Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;

    .prologue
    .line 86
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;->registeredResources()Ljava/util/Iterator;

    move-result-object v1

    .line 88
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/Closeable;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    .line 92
    .local v2, "stream":Ljava/io/Closeable;
    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to close opened stream on client close event (will continue) [ses="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", stream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 99
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "stream":Ljava/io/Closeable;
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;->stopping:Z

    .line 82
    return-void
.end method

.class public Lorg/apache/ignite/internal/util/nio/GridNioCodecFilter;
.super Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;
.source "GridNioCodecFilter.java"


# instance fields
.field private directMode:Z

.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private parser:Lorg/apache/ignite/internal/util/nio/GridNioParser;


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/util/nio/GridNioParser;Lorg/apache/ignite/IgniteLogger;Z)V
    .locals 1
    .param p1, "parser"    # Lorg/apache/ignite/internal/util/nio/GridNioParser;
    .param p2, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p3, "directMode"    # Z

    .prologue
    .line 50
    const-string v0, "GridNioCodecFilter"

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;-><init>(Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioCodecFilter;->parser:Lorg/apache/ignite/internal/util/nio/GridNioParser;

    .line 53
    iput-object p2, p0, Lorg/apache/ignite/internal/util/nio/GridNioCodecFilter;->log:Lorg/apache/ignite/IgniteLogger;

    .line 54
    iput-boolean p3, p0, Lorg/apache/ignite/internal/util/nio/GridNioCodecFilter;->directMode:Z

    .line 55
    return-void
.end method


# virtual methods
.method public onExceptionCaught(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "ex"    # Lorg/apache/ignite/IgniteCheckedException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridNioCodecFilter;->proceedExceptionCaught(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V

    .line 75
    return-void
.end method

.method public onMessageReceived(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V
    .locals 8
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 95
    instance-of v4, p2, Ljava/nio/ByteBuffer;

    if-nez v4, :cond_0

    .line 96
    new-instance v4, Lorg/apache/ignite/internal/util/nio/GridNioException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to decode incoming message (incoming message is not a byte buffer, is filter properly placed?): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/util/nio/GridNioException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 100
    :cond_0
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/nio/ByteBuffer;

    move-object v2, v0

    .line 102
    .local v2, "input":Ljava/nio/ByteBuffer;
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 103
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioCodecFilter;->parser:Lorg/apache/ignite/internal/util/nio/GridNioParser;

    invoke-interface {v4, p1, v2}, Lorg/apache/ignite/internal/util/nio/GridNioParser;->decode(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v3

    .line 105
    .local v3, "res":Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 106
    invoke-virtual {p0, p1, v3}, Lorg/apache/ignite/internal/util/nio/GridNioCodecFilter;->proceedMessageReceived(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    .end local v2    # "input":Ljava/nio/ByteBuffer;
    .end local v3    # "res":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Lorg/apache/ignite/internal/util/nio/GridNioException;

    invoke-direct {v4, v1}, Lorg/apache/ignite/internal/util/nio/GridNioException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 108
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "input":Ljava/nio/ByteBuffer;
    .restart local v3    # "res":Ljava/lang/Object;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    iget-boolean v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioCodecFilter;->directMode:Z

    if-eqz v4, :cond_4

    .line 123
    .end local v3    # "res":Ljava/lang/Object;
    :cond_3
    return-void

    .line 112
    .restart local v3    # "res":Ljava/lang/Object;
    :cond_4
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioCodecFilter;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parser returned null but there are still unread data in input buffer (bug in parser code?) [parser="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/util/nio/GridNioCodecFilter;->parser:Lorg/apache/ignite/internal/util/nio/GridNioParser;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ses="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onSessionClose(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioCodecFilter;->proceedSessionClose(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v0

    return-object v0
.end method

.method public onSessionClosed(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioCodecFilter;->proceedSessionClosed(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 70
    return-void
.end method

.method public onSessionIdleTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioCodecFilter;->proceedSessionIdleTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 133
    return-void
.end method

.method public onSessionOpened(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioCodecFilter;->proceedSessionOpened(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 65
    return-void
.end method

.method public onSessionWrite(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 3
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 80
    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioCodecFilter;->directMode:Z

    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridNioCodecFilter;->proceedSessionWrite(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v2

    .line 86
    :goto_0
    return-object v2

    .line 84
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioCodecFilter;->parser:Lorg/apache/ignite/internal/util/nio/GridNioParser;

    invoke-interface {v2, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridNioParser;->encode(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 86
    .local v1, "res":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, p1, v1}, Lorg/apache/ignite/internal/util/nio/GridNioCodecFilter;->proceedSessionWrite(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 88
    .end local v1    # "res":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/apache/ignite/internal/util/nio/GridNioException;

    invoke-direct {v2, v0}, Lorg/apache/ignite/internal/util/nio/GridNioException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onSessionWriteTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioCodecFilter;->proceedSessionWriteTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 138
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridNioCodecFilter;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

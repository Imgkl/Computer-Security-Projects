.class public Lorg/apache/ignite/internal/util/nio/GridBufferedParser;
.super Ljava/lang/Object;
.source "GridBufferedParser.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/nio/GridNioParser;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BUF_META_KEY:I


# instance fields
.field private final directBuf:Z

.field private final order:Ljava/nio/ByteOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridBufferedParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/nio/GridBufferedParser;->$assertionsDisabled:Z

    .line 42
    invoke-static {}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->nextUniqueKey()I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/util/nio/GridBufferedParser;->BUF_META_KEY:I

    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ZLjava/nio/ByteOrder;)V
    .locals 0
    .param p1, "directBuf"    # Z
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean p1, p0, Lorg/apache/ignite/internal/util/nio/GridBufferedParser;->directBuf:Z

    .line 56
    iput-object p2, p0, Lorg/apache/ignite/internal/util/nio/GridBufferedParser;->order:Ljava/nio/ByteOrder;

    .line 57
    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "x1"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridBufferedParser;->decode(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0
.end method

.method public decode(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/nio/ByteBuffer;)[B
    .locals 3
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 61
    sget v2, Lorg/apache/ignite/internal/util/nio/GridBufferedParser;->BUF_META_KEY:I

    invoke-interface {p1, v2}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->meta(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;

    .line 65
    .local v0, "nioBuf":Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;
    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;

    .end local v0    # "nioBuf":Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;
    invoke-direct {v0}, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;-><init>()V

    .line 68
    .restart local v0    # "nioBuf":Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;
    sget v2, Lorg/apache/ignite/internal/util/nio/GridBufferedParser;->BUF_META_KEY:I

    invoke-interface {p1, v2, v0}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->addMeta(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;

    .line 70
    .local v1, "old":Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;
    sget-boolean v2, Lorg/apache/ignite/internal/util/nio/GridBufferedParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 73
    .end local v1    # "old":Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;
    :cond_0
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/util/nio/GridNioServerBuffer;->read(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    return-object v2
.end method

.method public encode(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 78
    check-cast p2, [B

    .end local p2    # "msg":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [B

    .line 80
    .local v0, "msg0":[B
    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/nio/GridBufferedParser;->directBuf:Z

    if-eqz v2, :cond_0

    array-length v2, v0

    add-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 84
    .local v1, "res":Ljava/nio/ByteBuffer;
    :goto_0
    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 85
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 87
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 89
    return-object v1

    .line 80
    .end local v1    # "res":Ljava/nio/ByteBuffer;
    :cond_0
    array-length v2, v0

    add-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridBufferedParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

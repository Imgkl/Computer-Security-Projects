.class public Lorg/apache/ignite/internal/util/nio/GridDirectParser;
.super Ljava/lang/Object;
.source "GridDirectParser.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/nio/GridNioParser;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MSG_META_KEY:I

.field private static final READER_META_KEY:I


# instance fields
.field private final formatter:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

.field private final msgFactory:Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridDirectParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/nio/GridDirectParser;->$assertionsDisabled:Z

    .line 32
    invoke-static {}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->nextUniqueKey()I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/util/nio/GridDirectParser;->MSG_META_KEY:I

    .line 35
    invoke-static {}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->nextUniqueKey()I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/util/nio/GridDirectParser;->READER_META_KEY:I

    return-void

    .line 30
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;)V
    .locals 1
    .param p1, "msgFactory"    # Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;
    .param p2, "formatter"    # Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridDirectParser;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridDirectParser;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 51
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridDirectParser;->msgFactory:Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;

    .line 52
    iput-object p2, p0, Lorg/apache/ignite/internal/util/nio/GridDirectParser;->formatter:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    .line 53
    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 6
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 58
    sget v3, Lorg/apache/ignite/internal/util/nio/GridDirectParser;->MSG_META_KEY:I

    invoke-interface {p1, v3}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->removeMeta(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/plugin/extensions/communication/Message;

    .line 60
    .local v1, "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    const/4 v2, 0x0

    .line 62
    .local v2, "reader":Lorg/apache/ignite/plugin/extensions/communication/MessageReader;
    if-nez v1, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridDirectParser;->msgFactory:Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;->create(B)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v1

    .line 65
    sget v3, Lorg/apache/ignite/internal/util/nio/GridDirectParser;->READER_META_KEY:I

    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridDirectParser;->formatter:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridDirectParser;->msgFactory:Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;

    invoke-interface {v4, v5}, Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;->reader(Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;)Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->addMeta(ILjava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_0
    const/4 v0, 0x0

    .line 70
    .local v0, "finished":Z
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 71
    if-nez v2, :cond_1

    .line 72
    sget v3, Lorg/apache/ignite/internal/util/nio/GridDirectParser;->READER_META_KEY:I

    invoke-interface {p1, v3}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->meta(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "reader":Lorg/apache/ignite/plugin/extensions/communication/MessageReader;
    check-cast v2, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .line 74
    .restart local v2    # "reader":Lorg/apache/ignite/plugin/extensions/communication/MessageReader;
    :cond_1
    sget-boolean v3, Lorg/apache/ignite/internal/util/nio/GridDirectParser;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    if-nez v2, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 76
    :cond_2
    invoke-interface {v1, p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/Message;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v0

    .line 79
    :cond_3
    if-eqz v0, :cond_4

    .line 84
    .end local v1    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    :goto_0
    return-object v1

    .line 82
    .restart local v1    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    :cond_4
    sget v3, Lorg/apache/ignite/internal/util/nio/GridDirectParser;->MSG_META_KEY:I

    invoke-interface {p1, v3, v1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->addMeta(ILjava/lang/Object;)Ljava/lang/Object;

    .line 84
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public encode(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw v0
.end method

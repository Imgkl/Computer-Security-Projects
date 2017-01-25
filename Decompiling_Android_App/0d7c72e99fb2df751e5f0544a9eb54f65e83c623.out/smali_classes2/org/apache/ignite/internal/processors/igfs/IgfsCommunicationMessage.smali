.class public abstract Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;
.super Ljava/lang/Object;
.source "IgfsCommunicationMessage.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fieldsCount()B
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public finishUnmarshal(Lorg/apache/ignite/marshaller/Marshaller;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "marsh"    # Lorg/apache/ignite/marshaller/Marshaller;
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 49
    return-void
.end method

.method public prepareMarshal(Lorg/apache/ignite/marshaller/Marshaller;)V
    .locals 0
    .param p1, "marsh"    # Lorg/apache/ignite/marshaller/Marshaller;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 40
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    .line 67
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 69
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    .line 53
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 55
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;->directType()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;->fieldsCount()B

    move-result v1

    invoke-interface {p2, v0, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 62
    :goto_0
    return v0

    .line 59
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 62
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

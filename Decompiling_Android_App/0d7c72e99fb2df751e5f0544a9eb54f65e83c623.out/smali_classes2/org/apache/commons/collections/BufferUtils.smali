.class public Lorg/apache/commons/collections/BufferUtils;
.super Ljava/lang/Object;
.source "BufferUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static synchronizedBuffer(Lorg/apache/commons/collections/Buffer;)Lorg/apache/commons/collections/Buffer;
    .locals 1
    .param p0, "buffer"    # Lorg/apache/commons/collections/Buffer;

    .prologue
    .line 60
    invoke-static {p0}, Lorg/apache/commons/collections/buffer/SynchronizedBuffer;->decorate(Lorg/apache/commons/collections/Buffer;)Lorg/apache/commons/collections/Buffer;

    move-result-object v0

    return-object v0
.end method

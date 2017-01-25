.class final Lorg/apache/ignite/internal/direct/DirectByteBufferStream$8;
.super Ljava/lang/Object;
.source "DirectByteBufferStream.java"

# interfaces
.implements Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/direct/DirectByteBufferStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator",
        "<[Z>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 192
    const-class v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$8;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$8;->create(I)[Z

    move-result-object v0

    return-object v0
.end method

.method public create(I)[Z
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 194
    sget-boolean v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$8;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 196
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 201
    new-array v0, p1, [Z

    :goto_0
    return-object v0

    .line 198
    :pswitch_0
    # getter for: Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->BOOLEAN_ARR_EMPTY:[Z
    invoke-static {}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->access$700()[Z

    move-result-object v0

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

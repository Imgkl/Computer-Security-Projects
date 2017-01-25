.class final Lorg/apache/ignite/internal/direct/DirectByteBufferStream$5;
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
        "<[F>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    const-class v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$5;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$5;->create(I)[F

    move-result-object v0

    return-object v0
.end method

.method public create(I)[F
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 149
    sget-boolean v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$5;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 151
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 156
    new-array v0, p1, [F

    :goto_0
    return-object v0

    .line 153
    :pswitch_0
    # getter for: Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->FLOAT_ARR_EMPTY:[F
    invoke-static {}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->access$400()[F

    move-result-object v0

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler$WriteRequest;
.super Ljava/lang/Object;
.source "GridNioSslHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriteRequest"
.end annotation


# instance fields
.field private buf:Ljava/nio/ByteBuffer;

.field private fut:Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p2, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 596
    .local p1, "fut":Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler$WriteRequest;->fut:Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;

    .line 598
    iput-object p2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler$WriteRequest;->buf:Ljava/nio/ByteBuffer;

    .line 599
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;Ljava/nio/ByteBuffer;Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;
    .param p2, "x1"    # Ljava/nio/ByteBuffer;
    .param p3, "x2"    # Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler$1;

    .prologue
    .line 583
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler$WriteRequest;-><init>(Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public buffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler$WriteRequest;->buf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public future()Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 605
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler$WriteRequest;->fut:Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;

    return-object v0
.end method

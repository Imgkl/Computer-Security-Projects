.class Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$ByteBufferBlocksWriter;
.super Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter;
.source "IgfsDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ByteBufferBlocksWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)V
    .locals 1

    .prologue
    .line 1550
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$ByteBufferBlocksWriter;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$1;

    .prologue
    .line 1550
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$ByteBufferBlocksWriter;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic readData(Ljava/lang/Object;[BI)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # [B
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1550
    check-cast p1, Ljava/nio/ByteBuffer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$ByteBufferBlocksWriter;->readData(Ljava/nio/ByteBuffer;[BI)V

    return-void
.end method

.method protected readData(Ljava/nio/ByteBuffer;[BI)V
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # [B
    .param p3, "dstOff"    # I

    .prologue
    .line 1553
    array-length v0, p2

    sub-int/2addr v0, p3

    invoke-virtual {p1, p2, p3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1554
    return-void
.end method

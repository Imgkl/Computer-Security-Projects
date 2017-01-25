.class Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$DataInputBlocksWriter;
.super Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter;
.source "IgfsDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataInputBlocksWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter",
        "<",
        "Ljava/io/DataInput;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)V
    .locals 1

    .prologue
    .line 1560
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$DataInputBlocksWriter;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$1;

    .prologue
    .line 1560
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$DataInputBlocksWriter;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)V

    return-void
.end method


# virtual methods
.method protected readData(Ljava/io/DataInput;[BI)V
    .locals 2
    .param p1, "src"    # Ljava/io/DataInput;
    .param p2, "dst"    # [B
    .param p3, "dstOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1565
    :try_start_0
    array-length v1, p2

    sub-int/2addr v1, p3

    invoke-interface {p1, p2, p3, v1}, Ljava/io/DataInput;->readFully([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1570
    return-void

    .line 1567
    :catch_0
    move-exception v0

    .line 1568
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

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
    .line 1560
    check-cast p1, Ljava/io/DataInput;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$DataInputBlocksWriter;->readData(Ljava/io/DataInput;[BI)V

    return-void
.end method

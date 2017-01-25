.class Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;
.super Ljava/lang/Object;
.source "FileSwapSpaceSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SwapValues"
.end annotation


# instance fields
.field private final size:I

.field private final vals:[Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;


# direct methods
.method constructor <init>([Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;I)V
    .locals 0
    .param p1, "vals"    # [Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    .param p2, "size"    # I

    .prologue
    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    iput-object p1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;->vals:[Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;

    .line 895
    iput p2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;->size:I

    .line 896
    return-void
.end method

.method static synthetic access$700(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;

    .prologue
    .line 882
    iget v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;->size:I

    return v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;)[Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;

    .prologue
    .line 882
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;->vals:[Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;

    return-object v0
.end method

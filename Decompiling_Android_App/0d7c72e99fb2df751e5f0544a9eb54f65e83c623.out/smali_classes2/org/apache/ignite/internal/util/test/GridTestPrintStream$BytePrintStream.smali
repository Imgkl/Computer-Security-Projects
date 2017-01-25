.class Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;
.super Ljava/io/PrintStream;
.source "GridTestPrintStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/test/GridTestPrintStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BytePrintStream"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 272
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 273
    return-void
.end method


# virtual methods
.method writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->flush()V

    .line 285
    iget-object v0, p0, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->out:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    .line 287
    .local v0, "byteOut":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 290
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 291
    return-void
.end method

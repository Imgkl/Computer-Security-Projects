.class public Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;
.super Ljava/lang/Object;
.source "GridReversedLinesFileReader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader$1;,
        Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader$FilePart;
    }
.end annotation


# instance fields
.field private final avoidNewlineSplitBufferSize:I

.field private final blockSize:I

.field private final byteDecrement:I

.field private currentFilePart:Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader$FilePart;

.field private final encoding:Ljava/nio/charset/Charset;

.field private final newLineSequences:[[B

.field private final randomAccessFile:Ljava/io/RandomAccessFile;

.field private final totalBlockCount:J

.field private final totalByteLength:J

.field private trailingNewlineOfFileSkipped:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    const/16 v0, 0x1000

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;-><init>(Ljava/io/File;ILjava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILjava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "blockSize"    # I
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;-><init>(Ljava/io/File;ILjava/nio/charset/Charset;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILjava/nio/charset/Charset;)V
    .locals 12
    .param p1, "file"    # Ljava/io/File;
    .param p2, "blockSize"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v10, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->trailingNewlineOfFileSkipped:Z

    .line 71
    iput p2, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->blockSize:I

    .line 72
    iput-object p3, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->encoding:Ljava/nio/charset/Charset;

    .line 74
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 75
    iget-object v0, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->totalByteLength:J

    .line 76
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->totalByteLength:J

    int-to-long v2, p2

    rem-long/2addr v0, v2

    long-to-int v4, v0

    .line 77
    .local v4, "lastBlockLength":I
    if-lez v4, :cond_1

    .line 78
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->totalByteLength:J

    int-to-long v2, p2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->totalBlockCount:J

    .line 85
    :cond_0
    :goto_0
    new-instance v0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader$FilePart;

    iget-wide v2, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->totalBlockCount:J

    move-object v1, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader$FilePart;-><init>(Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;JI[BLorg/apache/ignite/internal/util/io/GridReversedLinesFileReader$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->currentFilePart:Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader$FilePart;

    .line 88
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v7

    .line 89
    .local v7, "charsetEncoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v7}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v8

    .line 90
    .local v8, "maxBytesPerChar":F
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v8, v0

    if-nez v0, :cond_2

    .line 92
    iput v9, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->byteDecrement:I

    .line 113
    :goto_1
    const/4 v0, 0x3

    new-array v0, v0, [[B

    const-string v1, "\r\n"

    invoke-virtual {v1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    aput-object v1, v0, v10

    const-string v1, "\n"

    invoke-virtual {v1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "\r"

    invoke-virtual {v1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    aput-object v1, v0, v11

    iput-object v0, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->newLineSequences:[[B

    .line 115
    iget-object v0, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->newLineSequences:[[B

    aget-object v0, v0, v10

    array-length v0, v0

    iput v0, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->avoidNewlineSplitBufferSize:I

    .line 116
    return-void

    .line 80
    .end local v7    # "charsetEncoder":Ljava/nio/charset/CharsetEncoder;
    .end local v8    # "maxBytesPerChar":F
    :cond_1
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->totalByteLength:J

    int-to-long v2, p2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->totalBlockCount:J

    .line 81
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->totalByteLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 82
    move v4, p2

    goto :goto_0

    .line 93
    .restart local v7    # "charsetEncoder":Ljava/nio/charset/CharsetEncoder;
    .restart local v8    # "maxBytesPerChar":F
    :cond_2
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    if-ne p3, v0, :cond_3

    .line 96
    iput v9, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->byteDecrement:I

    goto :goto_1

    .line 97
    :cond_3
    const-string v0, "Shift_JIS"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    if-ne p3, v0, :cond_4

    .line 100
    iput v9, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->byteDecrement:I

    goto :goto_1

    .line 101
    :cond_4
    const-string v0, "UTF-16BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    if-eq p3, v0, :cond_5

    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    if-ne p3, v0, :cond_6

    .line 104
    :cond_5
    iput v11, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->byteDecrement:I

    goto :goto_1

    .line 105
    :cond_6
    const-string v0, "UTF-16"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    if-ne p3, v0, :cond_7

    .line 106
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    const-string v1, "For UTF-16, you need to specify the byte order (use UTF-16BE or UTF-16LE)"

    invoke-direct {v0, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_7
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported yet (feel free to submit a patch)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;

    .prologue
    .line 28
    iget v0, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->blockSize:I

    return v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;)Ljava/io/RandomAccessFile;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->randomAccessFile:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;)Ljava/nio/charset/Charset;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->encoding:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;

    .prologue
    .line 28
    iget v0, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->avoidNewlineSplitBufferSize:I

    return v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;

    .prologue
    .line 28
    iget v0, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->byteDecrement:I

    return v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;)[[B
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->newLineSequences:[[B

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 172
    return-void
.end method

.method public readLine()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->currentFilePart:Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader$FilePart;

    # invokes: Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader$FilePart;->readLine()Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader$FilePart;->access$100(Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader$FilePart;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "line":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    .line 147
    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->currentFilePart:Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader$FilePart;

    # invokes: Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader$FilePart;->rollOver()Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader$FilePart;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader$FilePart;->access$200(Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader$FilePart;)Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader$FilePart;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->currentFilePart:Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader$FilePart;

    .line 148
    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->currentFilePart:Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader$FilePart;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->currentFilePart:Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader$FilePart;

    # invokes: Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader$FilePart;->readLine()Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader$FilePart;->access$100(Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader$FilePart;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_0
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->trailingNewlineOfFileSkipped:Z

    if-nez v1, :cond_1

    .line 158
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->trailingNewlineOfFileSkipped:Z

    .line 159
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/io/GridReversedLinesFileReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 162
    :cond_1
    return-object v0
.end method

.class public Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;
.super Ljava/lang/Object;
.source "VisorLogSearchResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final encoding:Ljava/lang/String;

.field private final filePath:Ljava/lang/String;

.field private final fileSize:J

.field private final lastModified:J

.field private final lineCnt:I

.field private final lineNum:I

.field private final lines:[Ljava/lang/String;

.field private final nid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;JJ[Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .param p1, "nid"    # Ljava/util/UUID;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "fileSize"    # J
    .param p5, "lastModified"    # J
    .param p7, "lines"    # [Ljava/lang/String;
    .param p8, "lineNum"    # I
    .param p9, "lineCnt"    # I
    .param p10, "encoding"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;->nid:Ljava/util/UUID;

    .line 80
    iput-object p2, p0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;->filePath:Ljava/lang/String;

    .line 81
    iput-wide p3, p0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;->fileSize:J

    .line 82
    iput-wide p5, p0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;->lastModified:J

    .line 83
    iput-object p7, p0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;->lines:[Ljava/lang/String;

    .line 84
    iput p8, p0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;->lineNum:I

    .line 85
    iput p9, p0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;->lineCnt:I

    .line 86
    iput-object p10, p0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;->encoding:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method public encoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public filePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public fileSize()J
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;->fileSize:J

    return-wide v0
.end method

.method public lastModified()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;->lastModified:J

    return-wide v0
.end method

.method public line()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;->lines:[Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;->lines:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public lineCount()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;->lineCnt:I

    return v0
.end method

.method public lineNumber()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;->lineNum:I

    return v0
.end method

.method public lines()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;->lines:[Ljava/lang/String;

    return-object v0
.end method

.method public nid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;->nid:Ljava/util/UUID;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const-class v0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

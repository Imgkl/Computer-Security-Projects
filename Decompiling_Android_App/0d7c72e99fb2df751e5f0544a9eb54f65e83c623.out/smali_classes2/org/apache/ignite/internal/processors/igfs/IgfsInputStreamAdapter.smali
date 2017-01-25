.class public abstract Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;
.super Lorg/apache/ignite/igfs/IgfsInputStream;
.source "IgfsInputStreamAdapter.java"

# interfaces
.implements Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/apache/ignite/igfs/IgfsInputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract fileInfo()Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
.end method

.method public length()J
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;->fileInfo()Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract readChunks(JI)[[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

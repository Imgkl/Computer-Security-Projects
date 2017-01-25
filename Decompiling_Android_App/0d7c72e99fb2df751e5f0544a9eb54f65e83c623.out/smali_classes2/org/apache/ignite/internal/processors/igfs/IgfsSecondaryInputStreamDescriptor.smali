.class public Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryInputStreamDescriptor;
.super Ljava/lang/Object;
.source "IgfsSecondaryInputStreamDescriptor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final info:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

.field private final secReader:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryInputStreamDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryInputStreamDescriptor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;)V
    .locals 1
    .param p1, "info"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .param p2, "secReader"    # Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryInputStreamDescriptor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 40
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryInputStreamDescriptor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryInputStreamDescriptor;->info:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 43
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryInputStreamDescriptor;->secReader:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;

    .line 44
    return-void
.end method


# virtual methods
.method info()Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryInputStreamDescriptor;->info:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    return-object v0
.end method

.method reader()Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryInputStreamDescriptor;->secReader:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;

    return-object v0
.end method

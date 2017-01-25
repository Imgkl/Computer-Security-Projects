.class public Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;
.super Ljava/lang/Object;
.source "IgfsSecondaryOutputStreamDescriptor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final info:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

.field private final out:Ljava/io/OutputStream;

.field private final parentId:Lorg/apache/ignite/lang/IgniteUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "parentId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "info"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .param p3, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :cond_2
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;->parentId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 50
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;->info:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 51
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;->out:Ljava/io/OutputStream;

    .line 52
    return-void
.end method


# virtual methods
.method info()Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;->info:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    return-object v0
.end method

.method out()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method parentId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;->parentId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

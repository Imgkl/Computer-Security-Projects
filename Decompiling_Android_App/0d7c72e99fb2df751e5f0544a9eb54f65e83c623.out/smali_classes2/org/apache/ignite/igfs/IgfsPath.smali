.class public final Lorg/apache/ignite/igfs/IgfsPath;
.super Ljava/lang/Object;
.source "IgfsPath.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/ignite/igfs/IgfsPath;",
        ">;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final SLASH:Ljava/lang/String; = "/"

.field private static final SLASH_CHAR:C = '/'

.field private static final serialVersionUID:J


# instance fields
.field private path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/igfs/IgfsPath;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "/"

    iput-object v0, p0, Lorg/apache/ignite/igfs/IgfsPath;->path:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "\'path\' is null or empty"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 79
    invoke-static {p1}, Lorg/apache/ignite/igfs/IgfsPath;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/igfs/IgfsPath;->path:Ljava/lang/String;

    .line 80
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string v0, "uri"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/igfs/IgfsPath;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/igfs/IgfsPath;->path:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/igfs/IgfsPath;Ljava/lang/String;)V
    .locals 4
    .param p1, "parentPath"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "childPath"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v1, "parentPath"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v1, p1, Lorg/apache/ignite/igfs/IgfsPath;->path:Ljava/lang/String;

    invoke-static {v1, p2}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse path [parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", childPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_0
    invoke-static {v0}, Lorg/apache/ignite/igfs/IgfsPath;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/igfs/IgfsPath;->path:Ljava/lang/String;

    .line 98
    return-void
.end method

.method private static normalizePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 107
    sget-boolean v1, Lorg/apache/ignite/igfs/IgfsPath;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 109
    :cond_0
    invoke-static {p0, v3}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->normalizeNoEndSeparator(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "normalizedPath":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to normalize path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_1
    const-string v1, "/"

    invoke-static {v0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 115
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Path should be absolute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_2
    sget-boolean v1, Lorg/apache/ignite/igfs/IgfsPath;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Expects normalized path is not empty."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 119
    :cond_3
    sget-boolean v1, Lorg/apache/ignite/igfs/IgfsPath;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_4

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Expects normalized path is root or don\'t ends with \'/\' symbol."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 121
    :cond_4
    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 40
    check-cast p1, Lorg/apache/ignite/igfs/IgfsPath;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/igfs/IgfsPath;->compareTo(Lorg/apache/ignite/igfs/IgfsPath;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/ignite/igfs/IgfsPath;)I
    .locals 2
    .param p1, "o"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 235
    iget-object v0, p0, Lorg/apache/ignite/igfs/IgfsPath;->path:Ljava/lang/String;

    iget-object v1, p1, Lorg/apache/ignite/igfs/IgfsPath;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public components()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 148
    iget-object v0, p0, Lorg/apache/ignite/igfs/IgfsPath;->path:Ljava/lang/String;

    .line 150
    .local v0, "path":Ljava/lang/String;
    sget-boolean v1, Lorg/apache/ignite/igfs/IgfsPath;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Path expected to be absolute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 153
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public depth()I
    .locals 7

    .prologue
    const/16 v6, 0x2f

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 191
    iget-object v2, p0, Lorg/apache/ignite/igfs/IgfsPath;->path:Ljava/lang/String;

    .line 192
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 194
    .local v3, "size":I
    sget-boolean v4, Lorg/apache/ignite/igfs/IgfsPath;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-lt v3, v5, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expects absolute path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 196
    :cond_1
    if-ne v3, v5, :cond_3

    .line 206
    :cond_2
    return v0

    .line 199
    :cond_3
    const/4 v0, 0x1

    .line 202
    .local v0, "depth":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 203
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_4

    .line 204
    add-int/lit8 v0, v0, 0x1

    .line 202
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 255
    if-eq p1, p0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/igfs/IgfsPath;->path:Ljava/lang/String;

    check-cast p1, Lorg/apache/ignite/igfs/IgfsPath;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lorg/apache/ignite/igfs/IgfsPath;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lorg/apache/ignite/igfs/IgfsPath;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSame(Lorg/apache/ignite/igfs/IgfsPath;)Z
    .locals 2
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 228
    const-string v0, "path"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    if-eq p0, p1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/igfs/IgfsPath;->path:Ljava/lang/String;

    iget-object v1, p1, Lorg/apache/ignite/igfs/IgfsPath;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSubDirectoryOf(Lorg/apache/ignite/igfs/IgfsPath;)Z
    .locals 3
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 216
    const-string v0, "path"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lorg/apache/ignite/igfs/IgfsPath;->path:Ljava/lang/String;

    iget-object v0, p1, Lorg/apache/ignite/igfs/IgfsPath;->path:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/apache/ignite/igfs/IgfsPath;->path:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lorg/apache/ignite/igfs/IgfsPath;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/ignite/igfs/IgfsPath;->path:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parent()Lorg/apache/ignite/igfs/IgfsPath;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/ignite/igfs/IgfsPath;->path:Ljava/lang/String;

    .line 164
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 165
    const/4 v1, 0x0

    .line 169
    :goto_0
    return-object v1

    .line 167
    :cond_0
    invoke-static {v0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->getFullPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    new-instance v1, Lorg/apache/ignite/igfs/IgfsPath;

    invoke-direct {v1, v0}, Lorg/apache/ignite/igfs/IgfsPath;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/igfs/IgfsPath;->path:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public root()Lorg/apache/ignite/igfs/IgfsPath;
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lorg/apache/ignite/igfs/IgfsPath;

    invoke-direct {v0}, Lorg/apache/ignite/igfs/IgfsPath;-><init>()V

    return-object v0
.end method

.method public suffix(Ljava/lang/String;)Lorg/apache/ignite/igfs/IgfsPath;
    .locals 4
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 179
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "\'suffix\' is null or empty."

    invoke-static {v0, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 180
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    const-string v0, "\'suffix\' contains file\'s separator \'/\'"

    invoke-static {v1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 182
    new-instance v0, Lorg/apache/ignite/igfs/IgfsPath;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/ignite/igfs/IgfsPath;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/igfs/IgfsPath;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    move v0, v2

    .line 179
    goto :goto_0

    :cond_1
    move v1, v2

    .line 180
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lorg/apache/ignite/igfs/IgfsPath;->path:Ljava/lang/String;

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lorg/apache/ignite/igfs/IgfsPath;->path:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 241
    return-void
.end method

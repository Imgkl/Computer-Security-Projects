.class public Lorg/apache/ignite/internal/client/GridClientException;
.super Ljava/lang/Exception;
.source "GridClientException.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/apache/ignite/internal/client/GridClientException;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/client/GridClientException;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 56
    return-void
.end method

.method private varargs hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z
    .locals 9
    .param p1, "t"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "cls":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 86
    if-eqz p1, :cond_0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    move v6, v7

    .line 104
    :cond_1
    :goto_0
    return v6

    .line 89
    :cond_2
    sget-boolean v8, Lorg/apache/ignite/internal/client/GridClientException;->$assertionsDisabled:Z

    if-nez v8, :cond_3

    if-nez p2, :cond_3

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 91
    :cond_3
    move-object v5, p1

    .local v5, "th":Ljava/lang/Throwable;
    :goto_1
    if-eqz v5, :cond_6

    .line 92
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 93
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 96
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Throwable;
    array-length v3, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_5

    aget-object v4, v0, v2

    .line 97
    .local v4, "n":Ljava/lang/Throwable;
    invoke-direct {p0, v4, p2}, Lorg/apache/ignite/internal/client/GridClientException;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 100
    .end local v4    # "n":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    if-ne v8, v5, :cond_7

    .end local v0    # "arr$":[Ljava/lang/Throwable;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_6
    move v6, v7

    .line 104
    goto :goto_0

    .line 91
    .restart local v0    # "arr$":[Ljava/lang/Throwable;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_7
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    goto :goto_1
.end method


# virtual methods
.method public varargs hasCause([Ljava/lang/Class;)Z
    .locals 1
    .param p1    # [Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "cls":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    invoke-direct {p0, p0, p1}, Lorg/apache/ignite/internal/client/GridClientException;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/GridClientException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

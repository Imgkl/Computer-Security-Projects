.class public Lorg/apache/ignite/internal/util/GridArgumentCheck;
.super Ljava/lang/Object;
.source "GridArgumentCheck.java"


# static fields
.field private static final INVALID_ARG_MSG_PREFIX:Ljava/lang/String; = "Ouch! Argument is invalid: "

.field private static final NOT_EMPTY_SUFFIX:Ljava/lang/String; = " must not be empty."

.field public static final NULL_MSG_PREFIX:Ljava/lang/String; = "Ouch! Argument cannot be null: "


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensure(ZLjava/lang/String;)V
    .locals 3
    .param p0, "cond"    # Z
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 106
    if-nez p0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ouch! Argument is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    return-void
.end method

.method public static notEmpty(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/GridArgumentCheck;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ouch! Argument is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be empty."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    return-void
.end method

.method public static notEmpty([ILjava/lang/String;)V
    .locals 3
    .param p0, "arr"    # [I
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/GridArgumentCheck;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    array-length v0, p0

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ouch! Argument is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be empty."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    return-void
.end method

.method public static notEmpty([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "arr"    # [Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/GridArgumentCheck;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    array-length v0, p0

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ouch! Argument is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be empty."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    return-void
.end method

.method public static notNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "val"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ouch! Argument cannot be null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    return-void
.end method

.method public static notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p0, "val1"    # Ljava/lang/Object;
    .param p1, "name1"    # Ljava/lang/String;
    .param p2, "val2"    # Ljava/lang/Object;
    .param p3, "name2"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/GridArgumentCheck;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-static {p2, p3}, Lorg/apache/ignite/internal/util/GridArgumentCheck;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p0, "val1"    # Ljava/lang/Object;
    .param p1, "name1"    # Ljava/lang/String;
    .param p2, "val2"    # Ljava/lang/Object;
    .param p3, "name2"    # Ljava/lang/String;
    .param p4, "val3"    # Ljava/lang/Object;
    .param p5, "name3"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/GridArgumentCheck;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-static {p2, p3}, Lorg/apache/ignite/internal/util/GridArgumentCheck;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-static {p4, p5}, Lorg/apache/ignite/internal/util/GridArgumentCheck;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p0, "val1"    # Ljava/lang/Object;
    .param p1, "name1"    # Ljava/lang/String;
    .param p2, "val2"    # Ljava/lang/Object;
    .param p3, "name2"    # Ljava/lang/String;
    .param p4, "val3"    # Ljava/lang/Object;
    .param p5, "name3"    # Ljava/lang/String;
    .param p6, "val4"    # Ljava/lang/Object;
    .param p7, "name4"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/GridArgumentCheck;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-static {p2, p3}, Lorg/apache/ignite/internal/util/GridArgumentCheck;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-static {p4, p5}, Lorg/apache/ignite/internal/util/GridArgumentCheck;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-static {p6, p7}, Lorg/apache/ignite/internal/util/GridArgumentCheck;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    return-void
.end method

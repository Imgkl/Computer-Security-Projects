.class public Lcom/eventgenie/android/utils/help/TwitterHelper;
.super Ljava/lang/Object;
.source "TwitterHelper.java"


# static fields
.field private static final AT_SIGN:Ljava/lang/String; = "@"

.field private static final POUND_SIGN:Ljava/lang/String; = "#"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultTweetContent(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .param p0, "user"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "listOfTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 18
    .local v2, "tagToUse":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    .line 19
    :cond_0
    const/4 v3, 0x1

    .line 30
    .local v3, "useUser":Z
    :goto_0
    if-eqz v3, :cond_6

    .line 31
    invoke-static {p0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 32
    const-string v4, "@"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 33
    move-object v0, p0

    .line 52
    .local v0, "methodResult":Ljava/lang/String;
    :goto_1
    if-nez v0, :cond_1

    const-string v0, ""

    .end local v0    # "methodResult":Ljava/lang/String;
    :cond_1
    return-object v0

    .line 21
    .end local v3    # "useUser":Z
    :cond_2
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 22
    .local v1, "tag":Ljava/lang/String;
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 24
    const/4 v3, 0x0

    .restart local v3    # "useUser":Z
    goto :goto_0

    .line 26
    .end local v3    # "useUser":Z
    :cond_3
    const/4 v3, 0x1

    .restart local v3    # "useUser":Z
    goto :goto_0

    .line 35
    .end local v1    # "tag":Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "methodResult":Ljava/lang/String;
    goto :goto_1

    .line 38
    .end local v0    # "methodResult":Ljava/lang/String;
    :cond_5
    const-string v0, ""

    .restart local v0    # "methodResult":Ljava/lang/String;
    goto :goto_1

    .line 41
    .end local v0    # "methodResult":Ljava/lang/String;
    :cond_6
    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 42
    const-string v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 43
    move-object v0, v2

    .restart local v0    # "methodResult":Ljava/lang/String;
    goto :goto_1

    .line 45
    .end local v0    # "methodResult":Ljava/lang/String;
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "methodResult":Ljava/lang/String;
    goto :goto_1

    .line 48
    .end local v0    # "methodResult":Ljava/lang/String;
    :cond_8
    const-string v0, ""

    .restart local v0    # "methodResult":Ljava/lang/String;
    goto :goto_1
.end method

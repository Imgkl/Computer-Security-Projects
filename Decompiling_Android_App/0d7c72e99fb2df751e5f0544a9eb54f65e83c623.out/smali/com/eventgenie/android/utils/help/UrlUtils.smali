.class public Lcom/eventgenie/android/utils/help/UrlUtils;
.super Ljava/lang/Object;
.source "UrlUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alterArticleUrl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "mMinimumScreenSize"    # I

    .prologue
    .line 37
    const/16 v0, 0x4c8

    invoke-static {p0, v0, p1}, Lcom/eventgenie/android/utils/help/UrlUtils;->alterGoogleUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 38
    const/16 v0, 0x264

    invoke-static {p0, v0, p1}, Lcom/eventgenie/android/utils/help/UrlUtils;->alterGoogleUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 39
    return-object p0
.end method

.method public static alterGoogleUrl(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "oldSize"    # I
    .param p2, "newSize"    # I

    .prologue
    .line 43
    if-ne p1, p2, :cond_1

    .line 50
    .end local p0    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 45
    .restart local p0    # "url":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static sanitiseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "res":Ljava/lang/String;
    const-string v1, " "

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string v1, ","

    const-string v2, "%2C"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string/jumbo v1, "|"

    const-string v2, "%7C"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .end local v0    # "res":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

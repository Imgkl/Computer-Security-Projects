.class Lcom/eventgenie/android/mapping/d2/parsers/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 55
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 56
    .local v1, "mid":I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "ext":Ljava/lang/String;
    return-object v0
.end method

.method protected static getHumanTime(J)Ljava/lang/String;
    .locals 6
    .param p0, "millis"    # J

    .prologue
    .line 49
    const-string v0, "%d sec (%d millis)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p0, p1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static tryDouble(Ljava/lang/String;D)D
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # D

    .prologue
    .line 63
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    .line 65
    .end local p1    # "defaultValue":D
    :goto_0
    return-wide p1

    .line 64
    .restart local p1    # "defaultValue":D
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected static tryInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 71
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 73
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .line 72
    .restart local p1    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected static tryLong(Ljava/lang/String;J)J
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    .line 79
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    .line 81
    .end local p1    # "defaultValue":J
    :goto_0
    return-wide p1

    .line 80
    .restart local p1    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected static tryString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "suspectString"    # Ljava/lang/String;
    .param p1, "defaultString"    # Ljava/lang/String;

    .prologue
    .line 37
    if-nez p0, :cond_1

    .line 44
    .end local p1    # "defaultString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 41
    .restart local p1    # "defaultString":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    move-object p1, p0

    .line 42
    goto :goto_0
.end method
